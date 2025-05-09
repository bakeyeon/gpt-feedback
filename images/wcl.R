install.packages("wordcloud")
install.packages("RColorBrewer")
library(wordcloud)
library(RColorBrewer)

# Korean

chatgpt_ko <- data.frame(word = c("똑똑함", "효율적", "정확함", "편향됨", "프라이버시", "실험적"), freq = c(10, 8, 6, 4, 3, 5))
gemini_ko  <- data.frame(word = c("정확함", "신뢰", "알아듣기 쉬움", "UX", "느림", "중립적"), freq = c(9, 7, 5, 4, 3, 2))
llama_ko   <- data.frame(word = c("개방성", "신기함", "가능성", "미완성", "불안정", "실험적"), freq = c(8, 7, 6, 4, 3, 2))

# German

chatgpt_de <- data.frame(word = c("intelligent", "hilfreich", "genau", "voreingenommen", "risikobehaftet", "interessant"), freq = c(9, 8, 6, 4, 3, 5))
gemini_de  <- data.frame(word = c("zuverlässig", "verständlich", "korrekt", "langsam", "gewöhnlich", "freundlich"), freq = c(9, 6, 5, 3, 2, 4))
llama_de   <- data.frame(word = c("offen", "spannend", "instabil", "unausgereift", "potenzial", "komisch"), freq = c(7, 6, 5, 4, 3, 2))

# French

chatgpt_fr <- data.frame(word = c("intelligent", "rapide", "utile", "biaisé", "complexe", "expérimental"), freq = c(10, 8, 7, 4, 3, 5))
gemini_fr  <- data.frame(word = c("fiable", "simple", "exact", "lent", "modéré", "classique"), freq = c(9, 7, 6, 3, 2, 4))
llama_fr   <- data.frame(word = c("ouvert", "nouveau", "instable", "amusant", "bizarre", "incomplet"), freq = c(8, 6, 5, 4, 3, 2))

# Spanish

chatgpt_es <- data.frame(word = c("inteligente", "rápido", "preciso", "parcial", "dudoso", "experimental"), freq = c(10, 8, 7, 4, 3, 5))
gemini_es  <- data.frame(word = c("confiable", "claro", "correcto", "lento", "neutro", "convencional"), freq = c(9, 7, 6, 3, 2, 4))
llama_es   <- data.frame(word = c("abierto", "interesante", "inestable", "raro", "divertido", "incompleto"), freq = c(8, 6, 5, 4, 3, 2))

plot_keyword_map <- function(data, title, color) {
  wordcloud(
    words = data$word,
    freq = data$freq,
    scale = c(4, 0.8),
    min.freq = 1,
    max.words = 100,
    colors = brewer.pal(8, color),
    random.order = FALSE,
    main = title
  )
}

plot_language_set <- function(lang, gpt, gem, llama, colors) {
  par(mfrow = c(1, 3))  # 한 행에 3개
  plot_keyword_map(gpt, paste("ChatGPT (", lang, ")"), colors[1])
  plot_keyword_map(gem, paste("Gemini (", lang, ")"), colors[2])
  plot_keyword_map(llama, paste("LLaMA (", lang, ")"), colors[3])
}

# Korean

plot_language_set("한국어", chatgpt_ko, gemini_ko, llama_ko, c("Blues", "Greens", "Reds"))

# German

plot_language_set("Deutsch", chatgpt_de, gemini_de, llama_de, c("Blues", "Greens", "Reds"))

# French

plot_language_set("Français", chatgpt_fr, gemini_fr, llama_fr, c("Blues", "Greens", "Reds"))

# Spanish

plot_language_set("Español", chatgpt_es, gemini_es, llama_es, c("Blues", "Greens", "Reds"))


# ---------------- combine all dataset 

install.packages("ggwordcloud")
install.packages("ggplot2")
install.packages("dplyr")

# 필요한 패키지
library(ggplot2)
library(ggwordcloud)
library(dplyr)

# --- 전체 데이터셋 합치기 ---

# ChatGPT
chatgpt_all <- bind_rows(
  chatgpt_ko, chatgpt_de, chatgpt_fr, chatgpt_es
) %>% group_by(word) %>% summarise(freq = sum(freq))

# Gemini
gemini_all <- bind_rows(
  gemini_ko, gemini_de, gemini_fr, gemini_es
) %>% group_by(word) %>% summarise(freq = sum(freq))

# LLaMA
llama_all <- bind_rows(
  llama_ko, llama_de, llama_fr, llama_es
) %>% group_by(word) %>% summarise(freq = sum(freq))

# --- 워드클라우드 함수 정의 ---
plot_gg_wordcloud <- function(df, title, color) {
  ggplot(df, aes(label = word, size = freq)) +
    geom_text_wordcloud_area(color = color, family = "nanumgothic") +
    scale_size_area(max_size = 20) +
    theme_minimal() +
    labs(title = title) +
    theme(plot.title = element_text(hjust = 0.5, face = "bold"))
}

# --- 시각화 실행 ---
plot_gg_wordcloud(chatgpt_all, "ChatGPT", "#009E73")   
plot_gg_wordcloud(gemini_all, "Gemini", "#0072B2")     
plot_gg_wordcloud(llama_all, "LLaMA", "magenta")       


