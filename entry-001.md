# **User Feedback: Limitations in ChatGPT App’s Korean Speech Recognition and Suggested Improvements**

---

## **Summary**

As a Korean-speaking user of the ChatGPT mobile app, I’ve frequently experienced problems with the app’s speech-to-text (STT) feature. These issues don't seem to be caused by poor audio quality, but rather by the system's handling of transcription—specifically, how it processes natural spoken Korean and manages long utterances. This feedback outlines the main problems and offers suggestions for improvement based on real user experience.

---

## **Key Issues Observed in the ChatGPT App**

1. **Missing or Dropped Sentences During Long Speech**
    - When I speak in longer sentences, some parts are completely dropped without any transcription.
    - This occurs even when the audio is clear, which suggests it may be a buffering or decoding issue within the app’s STT pipeline.
    - Instead of dropping the whole segment, even partial transcription would be more helpful.
2. **Contextually Incoherent Word Substitutions**
    - Sometimes, the app transcribes words that have no relation to the surrounding context, even though the speech is not slurred or unclear.
    - This implies that the system is misinterpreting context, possibly due to limitations in the underlying language model or training dataset.
3. **Dataset Quality Concerns**
    - I suspect that the app’s STT system may be relying on Korean text datasets that do not reflect natural, informal spoken language.
    - If the model is trained mainly on formal or structured writing, it may struggle with the informal or “messy” nature of real-life speech.

---

## **Suggestions for Improvement**

- **Buffer Management for Long Utterances**
    Allow longer or uninterrupted speech to be processed in full, or at least retain partial output rather than deleting it entirely.
- **Context-Aware Postprocessing**
    Apply models that re-evaluate and refine transcriptions based on semantic context to avoid unrelated or absurd word substitutions.
- **Korean Dataset Enhancement**
    Include more conversational, spontaneous, and unstructured Korean in the training data to improve natural language recognition.
    

---

## **Purpose of This Feedback**

This report is based on actual usage of the ChatGPT mobile app and is intended to highlight specific usability challenges in its Korean STT feature.
I hope this helps guide future development of the voice interface and improves accessibility and accuracy for Korean-speaking users.
I understand the importance of context-aware speech-to-text models,
but when applied too strongly with low-quality linguistic data,
it introduces more noise than value — especially for named entities or nonstandard input.
If high-level inference is the goal, it should be supported by high-quality contextual datasets.
Otherwise, a literal, phonetic transcription fallback would be more practical for many use cases.

---

[UPDATE]

[Bug/UX Request] 

ChatGPT App – Voice input deletion after failed upload
Issue Summary:In the voice conversation mode of the ChatGPT app, when a voice input is recorded and the network connection fails during upload, the recorded voice file is deleted with no option to retry.

Details:
The audio is not saved locally even temporarily.
When the network is unstable or momentarily interrupted, the user's voice disappears completely.
There is no notification or "retry" button — the input effort is lost without feedback.
This results in an unexpected loss of user input, which is both frustrating and counterintuitive.

Suggested Improvements:
1. Temporarily cache the voice input locally before attempting upload.
2. If the upload fails, provide a "Retry" button or prompt.
3. Optionally, keep a record of failed inputs for a limited time.
4. Prioritize preserving the user's input over real-time upload, especially under unstable network conditions.


## It has been shared with relevant channels where appropriate.
## Note: This document represents independent user feedback and is not affiliated with any official OpenAI communication.
