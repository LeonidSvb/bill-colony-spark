#!/usr/bin/env node

const fs = require('fs');
const path = require('path');

console.log('🔍 Checking project structure...');

// Required directories  
const requiredDirs = [
  'AGENTS',                    // ✅ Updated: was CLAUDE-AGENTS
  'CLIENTS',                   // ✅ Client data and configs
  'KNOWLEDGE',                 // ✅ Business frameworks
  'TOOLS',                     // ✅ Project utilities
  'TRAINING'                   // ✅ Learning materials
];

// Required files
const requiredFiles = [
  'CLAUDE.md',                 // ✅ Project instructions for Claude
  '.claude.json',              // ✅ MCP configuration  
  'AGENTS/README.md',          // ✅ Agent documentation
  'README.md'                  // ✅ Project overview
];

let errors = 0;

// Check directories
requiredDirs.forEach(dir => {
  if (!fs.existsSync(dir)) {
    console.error(`❌ Missing directory: ${dir}`);
    errors++;
  } else {
    console.log(`✅ Directory exists: ${dir}`);
  }
});

// Check files
requiredFiles.forEach(file => {
  if (!fs.existsSync(file)) {
    console.error(`❌ Missing file: ${file}`);
    errors++;
  } else {
    console.log(`✅ File exists: ${file}`);
  }
});

// Check file naming conventions
function checkNaming(dir) {
  if (!fs.existsSync(dir)) return;
  
  fs.readdirSync(dir, { withFileTypes: true }).forEach(entry => {
    if (entry.isFile() && entry.name.endsWith('.md')) {
      const hasSpaces = entry.name.includes(' ');
      const hasUpperCase = entry.name !== entry.name.toLowerCase();
      
      if (hasSpaces || hasUpperCase) {
        console.warn(`⚠️  File naming issue: ${path.join(dir, entry.name)} (use kebab-case)`);
      }
    }
  });
}

requiredDirs.forEach(checkNaming);

if (errors === 0) {
  console.log('\n✅ Project structure is valid!');
  process.exit(0);
} else {
  console.log(`\n❌ Found ${errors} structural issues`);
  process.exit(1);
}