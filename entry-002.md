# User Feedback: Limitations in ChatGPT App's Korean Speech Recognition and Suggested Improvements

> **Date**: April 2025  
> **Platform**: ChatGPT Mobile App (Android)

---

## 📍 Overview

This document summarizes observed issues in the Korean speech recognition function of the ChatGPT mobile app and suggests concrete improvements based on linguistic and UX principles. The feedback was submitted directly to OpenAI, and a response was received acknowledging the value of the suggestions and forwarding them to the development team.

---

## 🧩 1. Observed Limitations

### 1.1 Incomplete Transcriptions
- Longer Korean utterances are often truncated or cut off during voice-to-text conversion.
- Sentences are frequently dropped mid-phrase.

### 1.2 Contextual Inaccuracy
- Words unrelated to the spoken context appear in the transcribed text.
- Recognized output often breaks grammatical or idiomatic consistency, particularly in Korean.

### 1.3 Lack of Natural Flow
- Output fails to reflect natural spoken Korean, especially in casual or semi-formal tones.
- Speech patterns with topic-prominent structures are misinterpreted or poorly segmented.

---

## 💡 2. Suggested Improvements

### 2.1 Buffer Handling Enhancements
- Increase buffer length or implement dynamic buffering to accommodate long utterances.
- Avoid premature cut-off by using prosodic cues or silence detection thresholds.

### 2.2 Context-Aware Postprocessing
- Add a postprocessing layer trained specifically on Korean utterance-final particles and sentence-ending structures.
- Integrate topic-comment modeling to better capture Korean syntax and ellipsis phenomena.

### 2.3 Training Data Enrichment
- Incorporate more **conversational Korean** data with various register levels.
- Ensure inclusion of:
  - Casual speech (반말)
  - Mixed-formality contexts
  - Code-switching (e.g., Korean-English hybrid speech)

---

## 📈 3. Potential Impact

Improving Korean voice recognition in the ChatGPT app can lead to:

- Higher user satisfaction in Korean-speaking regions
- Better accessibility for speech-based users
- Broader multilingual adoption and global usability

---

## 📬 4. Feedback Status

> ✅ **OpenAI Response (April 2025):**
>  
> Your suggestions for improving buffer handling, adding context-aware postprocessing, and enriching the Korean training data with more conversational examples are well-noted. These are important areas for us to consider as we aim to enhance the app's accuracy and usability for all users, including those speaking Korean and other languages.  
>  
> Please know that your feedback has been forwarded to our development team for review.

---

## 📎 5. Appendix

- 🔗 [Original Notion Version](https://www.notion.so/bakeyeoni/User-Feedback-Limitations-in-ChatGPT-App-s-Korean-Speech-Recognition-and-Suggested-Improvements-1d0818a1b1118062a52dee39618154e7?pvs=4)
- 📸 Screenshot available upon request


