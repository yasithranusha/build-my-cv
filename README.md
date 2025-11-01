# Build My CV

Professional CV/Resume built with LaTeX, featuring a modular architecture for easy maintenance and updates.

**📚 New to LaTeX?** Check out the [LaTeX Cheat Sheet](LATEX_CHEATSHEET.md) for quick reference!

## 📁 Project Structure

```
my-cv/
├── my_cv.tex              # Main template (includes all content files)
├── my_cv.pdf              # Generated PDF output
├── build.sh               # Build script to generate PDF
├── content/               # Modular content files (edit these!)
│   ├── personal_info.tex  # Name, contact info, social links
│   ├── summary.tex        # Professional summary
│   ├── skills.tex         # Technical skills
│   ├── education.tex      # Education history
│   ├── experience.tex     # Work experience
│   ├── projects.tex       # Personal projects
│   ├── achievements.tex   # Awards and achievements
│   └── references.tex     # Professional references
├── assets/                # Images and icons
│   ├── InBug-Black.png    # LinkedIn icon
│   └── github-mark.png    # GitHub icon
├── README.md              # This file
├── LATEX_CHEATSHEET.md    # LaTeX syntax reference
└── .gitignore             # Git ignore rules
```

## 🚀 Quick Start

### Prerequisites

- **LaTeX Distribution**: Install TeX Live (macOS/Linux) or MiKTeX (Windows)
  ```bash
  # macOS
  brew install --cask mactex

  # Ubuntu/Debian
  sudo apt-get install texlive-full
  ```

### Building Your CV

1. **Edit Content Files**
   - Navigate to `content/` directory
   - Edit the `.tex` files you want to update
   - Each file corresponds to a section of your CV

2. **Run the Build Script**
   ```bash
   ./build.sh
   ```

3. **View the PDF**
   - The script will automatically open `my_cv.pdf`
   - Or manually open: `open my_cv.pdf` (macOS) or `xdg-open my_cv.pdf` (Linux)

## ✏️ Editing Your CV

> **💡 Tip:** See [LATEX_CHEATSHEET.md](LATEX_CHEATSHEET.md) for LaTeX syntax help and examples.

### 1. Personal Information
Edit `content/personal_info.tex`:
```latex
\textbf{\Huge Your Name}\\
\phoneicon\ \href{tel:+1234567890}{+1 234 567 890}
```

### 2. Professional Summary
Edit `content/summary.tex`:
```latex
\section{Professional Summary}
  \small{Your professional summary here...}
```

### 3. Technical Skills
Edit `content/skills.tex`:
```latex
\item{
  \textbf{Languages}: Python, JavaScript, etc.
}
```

### 4. Work Experience
Edit `content/experience.tex`:
```latex
\resumeSubheading
  {Company Name}{Location}
  {Job Title}{Start Date - End Date}
  \resumeItemListStart
    \resumeItem{Project Name}
      {Description with \textbf{bolded technologies}...}
  \resumeItemListEnd
```

### 5. Projects
Edit `content/projects.tex`:
```latex
\resumeSubItem{Project Name}
  {Description with \textbf{bolded technologies}...}
```

### 6. Education, Achievements, References
Edit the respective files in `content/`:
- `education.tex`
- `achievements.tex`
- `references.tex`

## 🛠️ Manual Build (Alternative)

If you prefer not to use the build script:

```bash
# Compile twice for proper cross-references
pdflatex my_cv.tex
pdflatex my_cv.tex

# Clean up auxiliary files
rm -f my_cv.aux my_cv.log my_cv.out
```

## 📝 Tips for ATS Optimization

This CV is optimized for Applicant Tracking Systems (ATS):

1. **Bold Technologies**: Use `\textbf{Technology}` to highlight keywords
2. **Standard Sections**: Keep section names standard (Education, Experience, etc.)
3. **Clean Formatting**: No complex tables or graphics in content
4. **Keywords**: Include relevant technologies and skills
5. **Chronological Order**: Most recent first

## 🎨 Customization

### Changing Colors
Edit `my_cv.tex` (lines 38-40):
```latex
\titleformat{\section}{
  \vspace{-4pt}\scshape\raggedright\large
}{}{0em}{}[\color{blue}\titlerule \vspace{-5pt}]  % Change 'black' to any color
```

### Adjusting Margins
Edit `my_cv.tex` (line 10):
```latex
\usepackage[a4paper, margin=0.5in]{geometry}  % Change 0.75in to desired margin
```

### Adding/Removing Sections
Edit `my_cv.tex` (lines 74-88):
```latex
% Comment out sections you don't want
% \input{content/achievements}

% Add new sections
\input{content/certifications}  % Create this file first
```

## 📦 Version Control

This modular structure is perfect for Git:
- **Track changes** to individual sections
- **Revert** specific content without affecting the template
- **Branch** for different CV versions (e.g., different job applications)

## 🐛 Troubleshooting

**Build fails with "File not found"**
- Ensure you're in the project root directory
- Check that `content/` directory exists with all `.tex` files

**PDF doesn't update**
- Delete `my_cv.pdf` and rebuild
- Clear auxiliary files: `rm -f *.aux *.log *.out`

**LaTeX errors**
- Check `my_cv.log` for detailed error messages
- Ensure special characters are escaped (`\&`, `\%`, etc.)
- See [LaTeX Cheat Sheet](LATEX_CHEATSHEET.md) for syntax reference

## 📚 Documentation

- **[LaTeX Cheat Sheet](LATEX_CHEATSHEET.md)** - Complete LaTeX syntax reference for CV editing
  - Basic formatting (bold, italic, links)
  - Custom CV commands explained
  - Common errors and solutions
  - Quick reference table