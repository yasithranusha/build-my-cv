# LaTeX Cheat Sheet for CV Editing

Quick reference guide for editing your CV content files.

## 📋 Table of Contents
- [Basic Formatting](#basic-formatting)
- [Text Styling](#text-styling)
- [Lists](#lists)
- [Links](#links)
- [Spacing](#spacing)
- [Special Characters](#special-characters)
- [Common Commands for CV](#common-commands-for-cv)
- [Troubleshooting](#troubleshooting)

---

## Basic Formatting

### Sections
```latex
\section{Section Name}
```
**Example:**
```latex
\section{Work Experience}
\section{Education}
```

### Line Breaks
```latex
\\              % New line
\newline        % Alternative line break
```

### Paragraphs
```latex
% Leave a blank line for new paragraph
First paragraph.

Second paragraph.
```

---

## Text Styling

### Bold Text
```latex
\textbf{Bold Text}
```
**Use for:** Technologies, job titles, project names

**Example:**
```latex
Built using \textbf{Next.js} and \textbf{TypeScript}
```

### Italic Text
```latex
\textit{Italic Text}
```
**Use for:** Subtitles, dates, locations

**Example:**
```latex
\textit{Senior Software Engineer at Company}
```

### Small Text
```latex
\small{Small text here}
```

### Large Text
```latex
\large{Large text}
\Large{Larger text}
\huge{Huge text}
\Huge{Biggest text}
```

---

## Lists

### Bullet Lists (Itemize)
```latex
\begin{itemize}
  \item First item
  \item Second item
  \item Third item
\end{itemize}
```

### Numbered Lists (Enumerate)
```latex
\begin{enumerate}
  \item First item
  \item Second item
  \item Third item
\end{enumerate}
```

### Our Custom CV Commands

#### Resume Item (Bullet with Title)
```latex
\resumeItem{Project Name}
  {Description of project with \textbf{technologies}}
```

#### Resume Sub-Item
```latex
\resumeSubItem{Item Title}
  {Description here}
```

#### Job/Education Entry
```latex
\resumeSubheading
  {Company/University Name}{Location}
  {Job Title/Degree}{Start Date - End Date}
```

**Full Example:**
```latex
\resumeSubheading
  {Google}{Mountain View, CA}
  {Senior Software Engineer}{Jan 2023 - Present}
  \resumeItemListStart
    \resumeItem{Project Alpha}
      {Built scalable system using \textbf{Kubernetes} and \textbf{Go}}
    \resumeItem{Project Beta}
      {Reduced latency by 40\% using \textbf{Redis} caching}
  \resumeItemListEnd
```

---

## Links

### Hyperlinks
```latex
\href{URL}{Display Text}
```

**Examples:**
```latex
% Email
\href{mailto:your@email.com}{your@email.com}

% Phone (clickable on mobile)
\href{tel:+1234567890}{+1 234 567 890}

% Website
\href{https://github.com/username}{github.com/username}

% LinkedIn
\href{https://linkedin.com/in/username}{linkedin.com/in/username}
```

### Display URL as-is
```latex
\url{https://example.com}
```

---

## Spacing

### Vertical Space
```latex
\vspace{5pt}        % 5 points of space
\vspace{-5pt}       % Negative space (remove space)
\vspace{2cm}        % 2 centimeters

% Common units:
% pt (points), cm (centimeters), mm (millimeters), in (inches)
```

**Examples:**
```latex
First line
\vspace{10pt}       % Add 10pt space
Second line

\vspace{-5pt}       % Remove 5pt space (tighten)
```

### Horizontal Space
```latex
\hspace{10pt}       % Horizontal space
\hfill              % Fill remaining space (push to right)
```

**Example:**
```latex
Left text \hfill Right text   % Text on opposite sides
```

---

## Special Characters

Characters that need escaping in LaTeX:

| Character | LaTeX Code | Example |
|-----------|------------|---------|
| `&` | `\&` | `R\&D Department` |
| `%` | `\%` | `100\% performance` |
| `$` | `\$` | `\$100 revenue` |
| `#` | `\#` | `\#1 ranking` |
| `_` | `\_` | `file\_name` |
| `{` | `\{` | `\{bracket\}` |
| `}` | `\}` | `\{bracket\}` |
| `~` | `\textasciitilde` | `file\textasciitilde.txt` |
| `^` | `\textasciicircum` | `x\textasciicircum2` |
| `\` | `\textbackslash` | `path\textbackslash file` |

### Safe Characters
These don't need escaping:
```
! @ * ( ) - + = [ ] : ; " ' , . < > ? /
```

---

## Common Commands for CV

### Personal Info Section
```latex
\begin{center}
  \textbf{\Huge Your Name}\\
  \vspace{4pt}
  \small \phoneicon\ \href{tel:+1234567890}{+1 234 567 890} $|$
  \emailicon\ \href{mailto:your@email.com}{your@email.com}\\
  \vspace{2pt}
  \linkedinicon\ \href{https://linkedin.com/in/username}{linkedin.com/in/username} $|$
  \githubicon\ \href{https://github.com/username}{github.com/username}
\end{center}
```

### Summary Section
```latex
\section{Professional Summary}
  \small{
    Software Engineer with X years of experience in full-stack development.
    Specializing in \textbf{React}, \textbf{Node.js}, and cloud platforms.
  }
```

### Work Experience
```latex
\section{Work Experience}
  \resumeSubHeadingListStart

    \resumeSubheading
      {Company Name}{City, Country}
      {Job Title}{Month Year - Present}
      \resumeItemListStart
        \resumeItem{Achievement 1}
          {Built feature using \textbf{Technology} improving metric by X\%}
        \resumeItem{Achievement 2}
          {Developed system with \textbf{Tech Stack} serving Y users}
      \resumeItemListEnd

  \resumeSubHeadingListEnd
```

### Skills Section
```latex
\section{Technical Skills}
 \resumeSubHeadingListStart
   \item{
     \textbf{Languages}: JavaScript, Python, Java
   }
   \vspace{-5pt}
   \item{
     \textbf{Frontend}: React, Vue.js, Angular
   }
   \vspace{-5pt}
   \item{
     \textbf{Backend}: Node.js, Django, Spring Boot
   }
 \resumeSubHeadingListEnd
```

### Projects Section
```latex
\section{Projects}
  \resumeSubHeadingListStart
    \resumeSubItem{Project Name - Brief Description}
      {Built full-stack application using \textbf{Tech1}, \textbf{Tech2},
       and \textbf{Tech3}. Implemented feature X and achieved Y.}
    \vspace{2pt}

    \resumeSubItem{Another Project}
      {Description here with \textbf{technologies} bolded.}
  \resumeSubHeadingListEnd
```

### Education Section
```latex
\section{Education}
  \resumeSubHeadingListStart
    \resumeSubheading
      {University Name}{City, Country}
      {Degree Name; GPA or Honors}{Start - End Date}
      \resumeItemListStart
        \resumeItem{Achievement}
          {Description of achievement}
      \resumeItemListEnd
  \resumeSubHeadingListEnd
```

---

## Troubleshooting

### Common Errors

#### 1. Missing `$` Error
**Error:** `Missing $ inserted`
**Cause:** Special character not escaped
**Fix:** Escape with backslash
```latex
% Wrong
100% improvement

% Correct
100\% improvement
```

#### 2. Undefined Control Sequence
**Error:** `Undefined control sequence`
**Cause:** Typo in command or missing package
**Fix:** Check spelling
```latex
% Wrong
\textbold{Text}

% Correct
\textbf{Text}
```

#### 3. Extra }, or Forgotten {
**Error:** `Extra }, or forgotten {`
**Cause:** Mismatched braces
**Fix:** Count your braces
```latex
% Wrong
\textbf{Bold text

% Correct
\textbf{Bold text}
```

#### 4. Overfull \hbox
**Warning:** `Overfull \hbox (10.47pt too wide)`
**Cause:** Text extends beyond margins
**Fix:**
- Break long words
- Rephrase sentence
- Use `\linebreak` if needed

### Debugging Tips

1. **Compile frequently** - Catch errors early
2. **Check the `.log` file** - Contains detailed error info
3. **Comment out sections** - Isolate the problematic code
   ```latex
   % \input{content/experience}  % Temporarily disable
   ```
4. **Validate braces** - Every `{` needs a matching `}`

### Getting Help

- Check `my_cv.log` for error details
- Line numbers are shown in errors
- Google the exact error message
- LaTeX Stack Exchange: https://tex.stackexchange.com/

---

## Quick Reference Card

### Most Used Commands in This CV

| Command | Purpose | Example |
|---------|---------|---------|
| `\textbf{text}` | Bold text | `\textbf{React}` |
| `\textit{text}` | Italic text | `\textit{Senior Engineer}` |
| `\href{url}{text}` | Hyperlink | `\href{mailto:a@b.com}{Email}` |
| `\vspace{5pt}` | Vertical space | After section |
| `\resumeItem{title}{desc}` | Bullet point | In experience |
| `\resumeSubheading` | Job/Education | 4 parameters |
| `\\` | Line break | End of line |
| `$|$` | Separator | Between items |
| `\%` | Percent sign | `50\%` |
| `\&` | Ampersand | `R\&D` |

### File-Specific Quick Edit

**Edit Name/Contact:**
→ `content/personal_info.tex`

**Edit Summary:**
→ `content/summary.tex`

**Edit Skills:**
→ `content/skills.tex`

**Edit Work:**
→ `content/experience.tex`

**Edit Projects:**
→ `content/projects.tex`

**Then build:**
```bash
./build.sh
```

---

## Tips for CV Writing

1. **Bold all technologies** - `\textbf{Technology}` for ATS
2. **Use action verbs** - Built, Developed, Implemented, Designed
3. **Include metrics** - "Improved by 40%", "Serving 10K users"
4. **Be specific** - "Built X using Y" not "Worked on projects"
5. **Recent first** - Most recent jobs/projects at the top
6. **Consistent dates** - Use same format throughout (Month Year)

---

**Need more help?** Check the [README.md](README.md) for full documentation.
