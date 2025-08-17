#!/usr/bin/env node

const { execSync } = require('child_process');
const fs = require('fs');

console.log('📝 Updating changelog...');

// Get git information
function getGitInfo() {
  try {
    // Check if changelog was already updated for recent commits
    const lastChangelogCommit = execSync('git log -1 --grep="Auto-update changelog" --format="%H"', { encoding: 'utf8' }).trim();
    
    let sinceCommit = '';
    if (lastChangelogCommit) {
      sinceCommit = `${lastChangelogCommit}..HEAD`;
    } else {
      // Try to get last tag
      try {
        const lastTag = execSync('git describe --tags --abbrev=0', { encoding: 'utf8' }).trim();
        sinceCommit = `${lastTag}..HEAD`;
      } catch {
        // No tags, get last 10 commits to avoid overwhelming changelog
        sinceCommit = 'HEAD~10..HEAD';
      }
    }
    
    const commits = execSync(`git log ${sinceCommit} --oneline --grep="Auto-update changelog" --invert-grep`, { encoding: 'utf8' });
    
    return {
      newCommits: commits.split('\n').filter(line => line.trim())
    };
  } catch (error) {
    console.log('⚠️  No git repository or commits found');
    return { newCommits: [] };
  }
}

// Categorize commits
function categorizeCommits(commits) {
  const categories = {
    added: [],
    changed: [],
    fixed: [],
    removed: []
  };

  commits.forEach(commit => {
    const msg = commit.toLowerCase();
    
    if (msg.includes('add') || msg.includes('create') || msg.includes('new')) {
      categories.added.push(commit);
    } else if (msg.includes('fix') || msg.includes('bug') || msg.includes('error')) {
      categories.fixed.push(commit);
    } else if (msg.includes('remove') || msg.includes('delete')) {
      categories.removed.push(commit);
    } else {
      categories.changed.push(commit);
    }
  });

  return categories;
}

// Generate changelog entry
function generateEntry(version, categories) {
  const date = new Date().toISOString().split('T')[0];
  let entry = `\n## [${version}] - ${date}\n`;

  if (categories.added.length > 0) {
    entry += '\n### Added\n';
    categories.added.forEach(commit => {
      entry += `- ${commit.substring(8)}\n`; // Remove commit hash
    });
  }

  if (categories.changed.length > 0) {
    entry += '\n### Changed\n';
    categories.changed.forEach(commit => {
      entry += `- ${commit.substring(8)}\n`;
    });
  }

  if (categories.fixed.length > 0) {
    entry += '\n### Fixed\n';
    categories.fixed.forEach(commit => {
      entry += `- ${commit.substring(8)}\n`;
    });
  }

  if (categories.removed.length > 0) {
    entry += '\n### Removed\n';
    categories.removed.forEach(commit => {
      entry += `- ${commit.substring(8)}\n`;
    });
  }

  return entry;
}

// Main execution
const gitInfo = getGitInfo();

if (gitInfo.newCommits.length === 0) {
  console.log('📝 No new commits to add to changelog');
  process.exit(0);
}

const categories = categorizeCommits(gitInfo.newCommits);
const version = process.argv[2] || 'Unreleased';

// Read existing changelog
let changelog = fs.readFileSync('CHANGELOG.md', 'utf8');

// Insert new entry after [Unreleased] section
const unreleasedIndex = changelog.indexOf('## [Unreleased]');
if (unreleasedIndex !== -1) {
  const entry = generateEntry(version, categories);
  const nextSectionIndex = changelog.indexOf('\n## [', unreleasedIndex + 1);
  
  if (nextSectionIndex !== -1) {
    changelog = changelog.slice(0, nextSectionIndex) + entry + changelog.slice(nextSectionIndex);
  } else {
    changelog += entry;
  }
  
  fs.writeFileSync('CHANGELOG.md', changelog);
  console.log(`✅ Added ${gitInfo.newCommits.length} commits to changelog as version ${version}`);
} else {
  console.error('❌ Could not find [Unreleased] section in CHANGELOG.md');
  process.exit(1);
}