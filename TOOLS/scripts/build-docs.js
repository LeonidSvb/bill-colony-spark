#!/usr/bin/env node

const fs = require('fs');
const path = require('path');

console.log('📚 Building documentation...');

// Create docs directory
if (!fs.existsSync('docs')) {
  fs.mkdirSync('docs');
}

// Generate index of all valuable assets
function generateIndex() {
  const assets = {
    prompts: [],
    templates: [],
    examples: [],
    tools: []
  };

  // Scan directories
  if (fs.existsSync('Valuable_Assets/Prompts')) {
    assets.prompts = fs.readdirSync('Valuable_Assets/Prompts')
      .filter(f => f.endsWith('.md'))
      .map(f => ({ name: f, path: `Valuable_Assets/Prompts/${f}` }));
  }

  if (fs.existsSync('Valuable_Assets/Templates')) {
    assets.templates = fs.readdirSync('Valuable_Assets/Templates')
      .filter(f => f.endsWith('.md'))
      .map(f => ({ name: f, path: `Valuable_Assets/Templates/${f}` }));
  }

  if (fs.existsSync('Valuable_Assets/Examples')) {
    assets.examples = fs.readdirSync('Valuable_Assets/Examples')
      .filter(f => f.endsWith('.md'))
      .map(f => ({ name: f, path: `Valuable_Assets/Examples/${f}` }));
  }

  if (fs.existsSync('Valuable_Assets/Tools_Setup')) {
    assets.tools = fs.readdirSync('Valuable_Assets/Tools_Setup')
      .filter(f => f.endsWith('.md'))
      .map(f => ({ name: f, path: `Valuable_Assets/Tools_Setup/${f}` }));
  }

  // Generate markdown index
  let indexContent = `# 📚 Bill Colony Spark - Documentation Index

*Generated on: ${new Date().toISOString().split('T')[0]}*

## 🤖 Prompts
${assets.prompts.map(p => `- [${p.name}](../${p.path})`).join('\n')}

## 📋 Templates  
${assets.templates.map(t => `- [${t.name}](../${t.path})`).join('\n')}

## 💡 Examples
${assets.examples.map(e => `- [${e.name}](../${e.path})`).join('\n')}

## 🛠️ Tools Setup
${assets.tools.map(t => `- [${t.name}](../${t.path})`).join('\n')}

---
*This index is automatically generated. Do not edit manually.*
`;

  fs.writeFileSync('docs/index.md', indexContent);
  console.log('✅ Generated docs/index.md');
}

generateIndex();
console.log('📚 Documentation build complete!');