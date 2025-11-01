#!/bin/bash

# CV Build Script
# Compiles my_cv.tex and generates PDF

set -e  # Exit on error

echo "🔨 Building CV..."

# Colors for output
GREEN='\033[0;32m'
RED='\033[0;31m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Check if pdflatex is installed
if ! command -v pdflatex &> /dev/null; then
    echo -e "${RED}❌ Error: pdflatex is not installed${NC}"
    echo "Please install LaTeX (e.g., 'brew install --cask mactex' on macOS)"
    exit 1
fi

# Check if content directory exists
if [ ! -d "content" ]; then
    echo -e "${RED}❌ Error: content/ directory not found${NC}"
    exit 1
fi

# Compile the CV
echo -e "${YELLOW}📄 Compiling LaTeX...${NC}"
pdflatex -interaction=nonstopmode my_cv.tex > /dev/null 2>&1

if [ $? -eq 0 ]; then
    # Run twice for proper references
    pdflatex -interaction=nonstopmode my_cv.tex > /dev/null 2>&1

    echo -e "${GREEN}✅ CV compiled successfully!${NC}"
    echo -e "${GREEN}📦 Output: my_cv.pdf${NC}"

    # Clean up auxiliary files
    echo -e "${YELLOW}🧹 Cleaning up auxiliary files...${NC}"
    rm -f my_cv.aux my_cv.log my_cv.out

    echo -e "${GREEN}✨ Build complete!${NC}"

    # Open the PDF (optional, comment out if not needed)
    if command -v open &> /dev/null; then
        open my_cv.pdf
    fi
else
    echo -e "${RED}❌ Compilation failed${NC}"
    echo "Check my_cv.log for details"
    exit 1
fi
