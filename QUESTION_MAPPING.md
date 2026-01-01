# Question Mapping Reference
## Quick Reference for All 25 Questions

This document maps each question to its chapter, section number, and LaTeX label for easy reference.

---

## Chapter 1: Loss Functions and Optimization Traps

| Q# | Title | Section Label | LaTeX Reference |
|----|-------|---------------|-----------------|
| Q1 | The Auto-Bidder Paradox | `\label{sec:q01}` | `\nameref{sec:q01}` |
| Q5 | The Multi-Objective Loss Trap | `\label{sec:q05}` | `\nameref{sec:q05}` |
| Q22 | The Softmax Trap | `\label{sec:q22}` | `\nameref{sec:q22}` |
| Q13 | The Flat Loss Trap | `\label{sec:q13}` | `\nameref{sec:q13}` |
| Q20 | The Vanishing Update Paradox | `\label{sec:q20}` | `\nameref{sec:q20}` |

---

## Chapter 2: Data Quality and Distribution Issues

| Q# | Title | Section Label | LaTeX Reference |
|----|-------|---------------|-----------------|
| Q17 | The Data Leakage Trap | `\label{sec:q17}` | `\nameref{sec:q17}` |
| Q3 | The Gradient Drowning Trap | `\label{sec:q03}` | `\nameref{sec:q03}` |
| Q18 | The Semantic Imbalance Trap | `\label{sec:q18}` | `\nameref{sec:q18}` |
| Q21 | The Silent Feature Death | `\label{sec:q21}` | `\nameref{sec:q21}` |
| Q24 | The Silent Graveyard Effect | `\label{sec:q24}` | `\nameref{sec:q24}` |
| Q16 | The P-Value Mirage | `\label{sec:q16}` | `\nameref{sec:q16}` |

---

## Chapter 3: Model Architecture and Training Challenges

| Q# | Title | Section Label | LaTeX Reference |
|----|-------|---------------|-----------------|
| Q2 | When Data Is Small, Representation Is King | `\label{sec:q02}` | `\nameref{sec:q02}` |
| Q9 | The Catastrophic Forgetting Trap | `\label{sec:q09}` | `\nameref{sec:q09}` |
| Q12 | The LoRA Knowledge Trap | `\label{sec:q12}` | `\nameref{sec:q12}` |
| Q23 | The Curse of Multilinguality | `\label{sec:q23}` | `\nameref{sec:q23}` |
| Q15 | The Counterintuitive Truth About Quantization and Robustness | `\label{sec:q15}` | `\nameref{sec:q15}` |

---

## Chapter 4: Evaluation and Validation Pitfalls

| Q# | Title | Section Label | LaTeX Reference |
|----|-------|---------------|-----------------|
| Q11 | The ROC Curve Mirage | `\label{sec:q11}` | `\nameref{sec:q11}` |
| Q14 | The Gallbladder Illusion | `\label{sec:q14}` | `\nameref{sec:q14}` |
| Q10 | The SOTA Trap | `\label{sec:q10}` | `\nameref{sec:q10}` |

---

## Chapter 5: System Architecture and Infrastructure

| Q# | Title | Section Label | LaTeX Reference |
|----|-------|---------------|-----------------|
| Q4 | The Infinite Stream Trap | `\label{sec:q04}` | `\nameref{sec:q04}` |
| Q6 | The Streaming Median Trap | `\label{sec:q06}` | `\nameref{sec:q06}` |
| Q7 | The 10-Minute Horizon | `\label{sec:q07}` | `\nameref{sec:q07}` |
| Q19 | The Database-as-Queue Trap | `\label{sec:q19}` | `\nameref{sec:q19}` |

---

## Chapter 6: Production Systems and Feedback Loops

| Q# | Title | Section Label | LaTeX Reference |
|----|-------|---------------|-----------------|
| Q8 | The CTR Feedback Loop Trap | `\label{sec:q08}` | `\nameref{sec:q08}` |
| Q25 | The Greedy Search Trap | `\label{sec:q25}` | `\nameref{sec:q25}` |

---

## Usage Notes

- All questions are organized in `main.tex`
- Each question has a unique label following the pattern `sec:qXX`
- Use `\nameref{sec:qXX}` to reference a question by name
- Use `\ref{sec:qXX}` to reference a question by number
- Placeholder content is marked with `\begin{notebox}` boxes
- Replace placeholder content with output from Prompt B (Refinement)

---

## Workflow for Adding Content

1. **Run Prompt A** with Substack post + paper comments → Get research output
2. **Run Prompt B** with research output → Get polished LaTeX chapter
3. **Find the question section** in `main.tex` using the mapping above
4. **Replace the placeholder** `\begin{notebox}...\end{notebox}` with the LaTeX content from Prompt B
5. **Compile** using `make` or `make pdf`
6. **Review** and iterate as needed

---

## File Locations

- **Main document**: `main.tex`
- **Question template**: `question_template.tex` (reference for structure)
- **Research prompt**: `PROMPT_A_RESEARCH.md`
- **Refinement prompt**: `PROMPT_B_REFINEMENT.md`
- **Usage guide**: `PROMPT_USAGE_GUIDE.md`

