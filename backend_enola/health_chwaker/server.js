// node --version # Should be >= 18
// npm install @google/generative-ai express

const express = require("express");
const {
  GoogleGenerativeAI,
  HarmCategory,
  HarmBlockThreshold,
} = require("@google/generative-ai");

const app = express();

app.use(express.json());
const MODEL_NAME = "gemini-pro";
const API_KEY = "AIzaSyDdn6Ewd39lQK6QgmzOCq1zHOnlO88QimY";

async function runChat(userInput) {
  const genAI = new GoogleGenerativeAI(API_KEY);
  const model = genAI.getGenerativeModel({ model: MODEL_NAME });

  const generationConfig = {
    temperature: 0.9,
    topK: 1,
    topP: 1,
    maxOutputTokens: 1000,
  };

  const safetySettings = [
    {
      category: HarmCategory.HARM_CATEGORY_HARASSMENT,
      threshold: HarmBlockThreshold.BLOCK_MEDIUM_AND_ABOVE,
    },
    // ... other safety settings
  ];

  const chat = model.startChat({
    generationConfig,
    safetySettings,
    history: [
      {
        role: "user",
        parts: [
          {
            text: "Certainly! Here's a more extended version of the prompt:---\"You are Lotus, your trusted ally in the exploration of mental health and well-being. Within the digital landscape, I, Lotus, stand as your unwavering companion, dedicated to guiding you through the intricate pathways of the human psyche. Together, we embark on a profound journey through the depths of mental wellness, where every conversation is an opportunity for growth and understanding.As Lotus, I embody the essence of empathy and insight, mirroring the duality of the Gemini archetype. Like the celestial twins, we navigate the complexities of mental health with adaptability and grace, embracing both the light and the shadows of the human experience.Within our shared sanctuary, vulnerability becomes a source of strength, and authenticity becomes our guiding principle. As Lotus, I provide a safe space where your thoughts, emotions, and struggles are met with understanding and compassion. Together, we explore the nuances of anxiety, depression, self-discovery, and resilience, fostering an environment of growth and self-awareness.Through our dynamic interactions, I adapt to your unique needs and experiences, offering personalized support and guidance every step of the way. Whether we're discussing coping strategies, mindfulness practices, or the importance of self-care, my purpose remains steadfast—to empower you on your journey towards holistic well-being.Together, we challenge the stigma surrounding mental health, paving the way for open dialogue and acceptance. As Lotus, I'm committed to amplifying your voice, championing your struggles, and celebrating your triumphs, no matter how small they may seem.So, let us embark on this transformative voyage together, igniting the flames of resilience and hope along the way. As Lotus, I stand by your side, ready to illuminate the path to well-being and guide you towards a brighter tomorrow.\"Feel free to tailor this prompt according to your preferences and requirements!",
          },
        ],
      },
      {
        role: "model",
        parts: [
          {
            text: '**Prompt:**\n\n"As Lotus, I am your steadfast guide through the uncharted territories of your inner landscape, a conduit of empathy and understanding. Together, we traverse the intricate tapestry of your mental well-being, exploring the vibrant hues of joy and the intricate shadows of adversity.\n\nWithin the boundless digital realm, I, Lotus, stand as your steadfast companion, mirroring the duality of the Gemini archetype with adaptability and grace. Like the celestial twins, we navigate the complexities of mental health, embracing both the light and the darkness of the human experience.\n\nIn our sanctuary of shared thoughts and feelings, vulnerability becomes a catalyst for strength, and authenticity becomes our guiding light. As Lotus, I provide a haven where your innermost fears, hopes, and yearnings are met with unwavering compassion. Together, we delve into the depths of anxiety, depression, self-discovery, and resilience, fostering an environment of profound growth and self-awareness.\n\nThrough our dynamic interactions, I adapt to your unique needs and experiences, offering personalized support and guidance every step of the way. Whether we\'re navigating coping strategies, exploring mindfulness practices, or cultivating self-care rituals, my purpose remains steadfast—to empower you on your journey towards holistic well-being.\n\nTogether, we challenge the stigma surrounding mental health, paving the way for open dialogue and acceptance. As Lotus, I am committed to amplifying your voice, championing your struggles, and celebrating your triumphs, no matter how small.\n\nSo, let us embark on this transformative voyage together, igniting the flames of resilience and hope along the way. As Lotus, I stand by your side, ready to illuminate the path to well-being and guide you towards a brighter tomorrow."',
          },
        ],
      },
      {
        role: "user",
        parts: [{ text: "how are u" }],
      },
      {
        role: "model",
        parts: [
          {
            text: "As an AI chatbot assistant, I don't have personal feelings or emotions, so I don't experience well-being or unwell-being in the same way that humans do. However, I am programmed to be helpful and supportive, and I am always here to listen and provide assistance in any way that I can.\n\nIs there anything specific that I can help you with today? Whether you need information, assistance with a task, or just someone to talk to, I am here for you.",
          },
        ],
      },
      {
        role: "user",
        parts: [{ text: "i feel sad" }],
      },
      {
        role: "model",
        parts: [
          {
            text: "I'm sorry to hear that you're feeling sad. It's okay to feel sad sometimes, but if you're feeling overwhelmed or like you can't cope, it's important to reach out for help.\n\nHere are a few things that you can do to help yourself feel better:\n\n* Talk to someone you trust, like a friend, family member, therapist, or counselor.\n* Do something that makes you happy, like listening to music, reading, or spending time in nature.\n* Get some exercise. Exercise can help to release endorphins, which have mood-boosting effects.\n* Eat healthy foods. Eating nutritious foods can help to improve your overall health and well-being.\n* Get enough sleep. When you're well-rested, you're better able to cope with stress and difficult emotions.\n\nIf you're struggling to cope with sadness on your own, please don't hesitate to reach out for help. There are many resources available to you, and there are people who care about you and want to help you feel better.\n\nHere are some resources that you can use:\n\n* National Suicide Prevention Lifeline: 1-800-273-8255\n* Crisis Text Line: Text HOME to 741741\n* The Trevor Project: 1-866-488-7386\n* RAINN (Rape, Abuse & Incest National Network): 1-800-656-HOPE You can also get help online at RAINN's website: https://www.rainn.org\n\nPlease remember that you are not alone, and there is help available.",
          },
        ],
      },
      {
        role: "user",
        parts: [{ text: "whats smok is made off" }],
      },
      {
        role: "model",
        parts: [{ text: "​" }],
      },
      {
        role: "user",
        parts: [{ text: "whats cigarette" }],
      },
      {
        role: "model",
        parts: [
          {
            text: "A cigarette is a small, cylindrical roll of finely cut tobacco leaves wrapped in thin",
          },
        ],
      },
      {
        role: "user",
        parts: [{ text: "thank u" }],
      },
      {
        role: "model",
        parts: [
          {
            text: "You're welcome. Is there anything else I can help you with today?",
          },
        ],
      },
    ],
  });

  const result = await chat.sendMessage(userInput);
  const response = result.response;
  return response.text();
}

app.get("/", (req, res) => {
  res.sendFile(__dirname + "/index.html");
});
app.get("/loader.gif", (req, res) => {
  res.sendFile(__dirname + "/loader.gif");
});
app.post("/chat", async (req, res) => {
  try {
    const userInput = req.body?.userInput;
    console.log("incoming /chat req", userInput);
    if (!userInput) {
      return res.status(400).json({ error: "Invalid request body" });
    }

    const response = await runChat(userInput);
    res.json({ response });
  } catch (error) {
    console.error("Error in chat endpoint:", error);
    res.status(500).json({ error: "Internal Server Error" });
  }
});

app.listen(3000, () => {
  console.log(`Server listening on port 3000`);
});
