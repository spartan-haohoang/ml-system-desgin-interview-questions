# Prompt Usage Guide
## How to Use Prompt A and Prompt B for Book Creation

---

## Overview

This guide explains how to use the two prompts to transform Substack posts into polished book chapters.

**Workflow:**
1. **Prompt A** (Research Agent) → Takes Substack post + paper comments → Outputs detailed research
2. **Prompt B** (Refinement Agent) → Takes research output → Outputs polished LaTeX chapter

---

## Step-by-Step Process

### Step 1: Prepare Input for Prompt A

Gather:
1. **Substack Post**: Full text of the post (copy-paste entire content)
2. **Paper Comments**: All paper citations/links from the comments section

**Example Input Format:**
```
SUBSTACK POST:
[Paste full post text here]

PAPER COMMENTS:
- Paper 1: [Title] - [URL]
- Paper 2: [Title] - [URL]
- Paper 3: [Title] - [URL]
```

---

### Step 2: Run Prompt A (Research Agent)

1. Copy the entire content of `PROMPT_A_RESEARCH.md`
2. Paste it into your AI assistant (Claude, GPT-4, etc.)
3. Add your input (Substack post + paper comments)
4. Request the research output

**Prompt Template:**
```
[Paste entire PROMPT_A_RESEARCH.md content]

---

INPUT:

SUBSTACK POST:
[Your post text]

PAPER COMMENTS:
[Your paper comments]

Please conduct deep research and output the structured research following the template.
```

**Expected Output:**
- Comprehensive research document (3,000-5,000 words)
- All sections from the template
- Detailed technical information
- Paper summaries
- Mathematical formulations
- Examples with numbers

---

### Step 3: Review Research Output

Before proceeding to Prompt B:
- [ ] Verify all sections are present
- [ ] Check that papers are summarized
- [ ] Ensure technical details are included
- [ ] Verify examples have concrete numbers
- [ ] Check that structure matches template

**If research is incomplete:**
- Ask Prompt A to expand specific sections
- Request additional examples
- Ask for more paper details

---

### Step 4: Run Prompt B (Refinement Agent)

1. Copy the entire content of `PROMPT_B_REFINEMENT.md`
2. Paste it into your AI assistant
3. Add the research output from Prompt A
4. Add question context (number, title, chapter)

**Prompt Template:**
```
[Paste entire PROMPT_B_REFINEMENT.md content]

---

INPUT:

QUESTION CONTEXT:
- Question Number: Q25
- Question Title: The Greedy Search Trap
- Chapter: Chapter 6 - Production Systems and Feedback Loops

RESEARCH OUTPUT:
[Paste the complete research output from Prompt A]

Please refine this research into a polished, engaging book chapter in LaTeX format.
```

**Expected Output:**
- Polished LaTeX chapter (2,000-3,500 words)
- Engaging writing style
- Proper LaTeX formatting
- Appropriate use of boxes
- Ready for compilation

---

### Step 5: Review and Polish

After receiving the refined chapter:
- [ ] Review for clarity and engagement
- [ ] Verify LaTeX syntax is correct
- [ ] Check that boxes are used appropriately
- [ ] Ensure math is properly formatted
- [ ] Verify all sections are present
- [ ] Check word count

**If refinement needs improvement:**
- Ask Prompt B to improve specific sections
- Request more examples or analogies
- Ask for better transitions
- Request LaTeX fixes

---

## Tips for Best Results

### For Prompt A (Research)

1. **Be Specific**: If you want more detail on a particular aspect, ask for it
2. **Request Examples**: Ask for more concrete examples with numbers
3. **Paper Depth**: If paper summaries are too brief, ask for more detail
4. **Technical Details**: Request more mathematical rigor if needed
5. **Real-World Cases**: Ask for more industry examples

**Example Follow-up:**
```
The research is good, but can you:
- Expand Section 3.3 with more system architecture details
- Add 2 more concrete examples with calculations to Section 3.3
- Provide more detail on Paper 2's methodology
```

### For Prompt B (Refinement)

1. **Style Adjustments**: Ask for more/less technical detail
2. **Engagement**: Request more storytelling or analogies
3. **Box Usage**: Ask to add more boxes or adjust existing ones
4. **Examples**: Request more or better examples
5. **Transitions**: Ask to improve flow between sections

**Example Follow-up:**
```
The chapter is good, but can you:
- Make the opening more engaging with more dialogue
- Add an analogy to explain the mathematical concept in Section 3.1
- Use more exbox examples in Section 4
- Improve transitions between Sections 2 and 3
```

---

## Quality Control Checklist

### Research Output (Prompt A)
- [ ] All 9 sections are complete
- [ ] Papers are thoroughly researched
- [ ] Mathematical formulations are correct
- [ ] Examples include concrete numbers
- [ ] Technical details are comprehensive
- [ ] Sources are cited
- [ ] Word count: 3,000-5,000 words

### Refined Chapter (Prompt B)
- [ ] All sections are present
- [ ] Writing is engaging and clear
- [ ] Technical depth is maintained
- [ ] LaTeX syntax is correct
- [ ] Boxes are used appropriately
- [ ] Math is properly formatted
- [ ] Examples are clear and concrete
- [ ] Transitions are smooth
- [ ] Word count: 2,000-3,500 words

---

## Troubleshooting

### Problem: Research output is too brief
**Solution**: Ask Prompt A to expand specific sections, provide more examples, or research papers more deeply

### Problem: Research output is too technical
**Solution**: This is fine - Prompt B will make it more accessible. Or ask Prompt A to add more intuitive explanations

### Problem: Refined chapter loses technical detail
**Solution**: Ask Prompt B to maintain more technical depth while improving readability

### Problem: LaTeX errors
**Solution**: Ask Prompt B to fix specific LaTeX syntax issues, or manually correct after receiving output

### Problem: Boxes not used appropriately
**Solution**: Ask Prompt B to add more boxes or adjust existing ones, specifying which sections need which box types

### Problem: Writing is not engaging enough
**Solution**: Ask Prompt B to add more storytelling, analogies, or concrete examples

---

## Example Workflow

### Example 1: Question 25 - The Greedy Search Trap

**Step 1: Input to Prompt A**
```
SUBSTACK POST:
[Full post text about greedy search trap]

PAPER COMMENTS:
- Efficient Beam Search for Large Language Models Using Trie-Based Decoding. https://arxiv.org/abs/2502.00085
- On the Depth between Beam Search and Exhaustive Search in Language Models. https://arxiv.org/abs/2308.13696
- Optimized Multi-Token Joint Decoding with Auxiliary Model for LLM Inference. http://arxiv.org/abs/2407.09722
- A Survey of Slow Thinking-based Reasoning LLMs using Search and Planning. https://arxiv.org/abs/2505.02665
```

**Step 2: Prompt A Output**
- Comprehensive research document with all 9 sections
- Detailed analysis of greedy search vs beam search
- Paper summaries for all 4 papers
- Mathematical formulations
- Examples with probabilities

**Step 3: Input to Prompt B**
```
QUESTION CONTEXT:
- Question Number: Q25
- Question Title: The Greedy Search Trap
- Chapter: Chapter 6 - Production Systems and Feedback Loops

RESEARCH OUTPUT:
[Paste Prompt A output]
```

**Step 4: Prompt B Output**
- Polished LaTeX chapter
- Engaging opening with interview scenario
- Clear technical explanations
- Proper use of boxes (exbox for probability examples, tecbox for beam search algorithm)
- Interview answer template
- Ready for compilation

---

## Batch Processing

For processing multiple questions:

1. **Process all questions through Prompt A first**
   - Create research outputs for all 25 questions
   - Store each in a separate file: `research_q01.md`, `research_q02.md`, etc.

2. **Then process all through Prompt B**
   - Refine each research output into a chapter
   - Store each in a separate file: `q01.tex`, `q02.tex`, etc.

3. **Benefits:**
   - Can review all research before refinement
   - Can ensure consistency across questions
   - Can batch-request improvements

---

## Final Notes

- **Iterate as needed**: Don't hesitate to ask for improvements
- **Maintain consistency**: Keep style and structure consistent across chapters
- **Review carefully**: Always review outputs before using in final book
- **Customize**: Adjust prompts if you need different output styles

---

**Ready to start? Begin with Prompt A for your first question!**

