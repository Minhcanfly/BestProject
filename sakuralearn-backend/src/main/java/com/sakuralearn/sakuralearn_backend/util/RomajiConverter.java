package com.sakuralearn.sakuralearn_backend.util;

import java.util.HashMap;
import java.util.Map;

public class RomajiConverter {
    private static final Map<String, String> ROMAJI_TO_KANA = new HashMap<>();

    static {
        // Vowels
        ROMAJI_TO_KANA.put("a", "あ"); ROMAJI_TO_KANA.put("i", "い"); ROMAJI_TO_KANA.put("u", "う"); ROMAJI_TO_KANA.put("e", "え"); ROMAJI_TO_KANA.put("o", "お");
        
        // K-line
        ROMAJI_TO_KANA.put("ka", "か"); ROMAJI_TO_KANA.put("ki", "き"); ROMAJI_TO_KANA.put("ku", "く"); ROMAJI_TO_KANA.put("ke", "け"); ROMAJI_TO_KANA.put("ko", "こ");
        ROMAJI_TO_KANA.put("ga", "が"); ROMAJI_TO_KANA.put("gi", "ぎ"); ROMAJI_TO_KANA.put("gu", "ぐ"); ROMAJI_TO_KANA.put("ge", "げ"); ROMAJI_TO_KANA.put("go", "ご");
        
        // S-line
        ROMAJI_TO_KANA.put("sa", "さ"); ROMAJI_TO_KANA.put("shi", "し"); ROMAJI_TO_KANA.put("si", "し"); ROMAJI_TO_KANA.put("su", "す"); ROMAJI_TO_KANA.put("se", "せ"); ROMAJI_TO_KANA.put("so", "そ");
        ROMAJI_TO_KANA.put("za", "ざ"); ROMAJI_TO_KANA.put("ji", "じ"); ROMAJI_TO_KANA.put("zu", "ず"); ROMAJI_TO_KANA.put("ze", "ぜ"); ROMAJI_TO_KANA.put("zo", "ぞ");
        
        // T-line
        ROMAJI_TO_KANA.put("ta", "た"); ROMAJI_TO_KANA.put("chi", "ち"); ROMAJI_TO_KANA.put("ti", "ち"); ROMAJI_TO_KANA.put("tsu", "つ"); ROMAJI_TO_KANA.put("tu", "つ"); ROMAJI_TO_KANA.put("te", "て"); ROMAJI_TO_KANA.put("to", "と");
        ROMAJI_TO_KANA.put("da", "だ"); ROMAJI_TO_KANA.put("di", "ぢ"); ROMAJI_TO_KANA.put("du", "づ"); ROMAJI_TO_KANA.put("de", "で"); ROMAJI_TO_KANA.put("do", "ど");
        
        // N-line
        ROMAJI_TO_KANA.put("na", "な"); ROMAJI_TO_KANA.put("ni", "に"); ROMAJI_TO_KANA.put("nu", "ぬ"); ROMAJI_TO_KANA.put("ne", "ね"); ROMAJI_TO_KANA.put("no", "の");
        ROMAJI_TO_KANA.put("n", "ん");
        
        // H-line
        ROMAJI_TO_KANA.put("ha", "は"); ROMAJI_TO_KANA.put("hi", "ひ"); ROMAJI_TO_KANA.put("fu", "ふ"); ROMAJI_TO_KANA.put("hu", "ふ"); ROMAJI_TO_KANA.put("he", "へ"); ROMAJI_TO_KANA.put("ho", "ほ");
        ROMAJI_TO_KANA.put("ba", "ば"); ROMAJI_TO_KANA.put("bi", "び"); ROMAJI_TO_KANA.put("bu", "ぶ"); ROMAJI_TO_KANA.put("be", "べ"); ROMAJI_TO_KANA.put("bo", "ぼ");
        ROMAJI_TO_KANA.put("pa", "ぱ"); ROMAJI_TO_KANA.put("pi", "ぴ"); ROMAJI_TO_KANA.put("pu", "ぷ"); ROMAJI_TO_KANA.put("pe", "ぺ"); ROMAJI_TO_KANA.put("po", "ぽ");
        
        // M-line
        ROMAJI_TO_KANA.put("ma", "ま"); ROMAJI_TO_KANA.put("mi", "み"); ROMAJI_TO_KANA.put("mu", "む"); ROMAJI_TO_KANA.put("me", "め"); ROMAJI_TO_KANA.put("mo", "も");
        
        // Y-line
        ROMAJI_TO_KANA.put("ya", "や"); ROMAJI_TO_KANA.put("yu", "ゆ"); ROMAJI_TO_KANA.put("yo", "よ");
        
        // R-line
        ROMAJI_TO_KANA.put("ra", "ら"); ROMAJI_TO_KANA.put("ri", "り"); ROMAJI_TO_KANA.put("ru", "る"); ROMAJI_TO_KANA.put("re", "れ"); ROMAJI_TO_KANA.put("ro", "ろ");
        
        // W-line
        ROMAJI_TO_KANA.put("wa", "わ"); ROMAJI_TO_KANA.put("wo", "を");
        
        // Y-combinations (Kya, Kyu, Kyo...)
        String[] consonants = {"k", "g", "s", "z", "t", "d", "n", "h", "b", "p", "m", "r"};
        String[] yKana = {"きゃ", "きゅ", "きょ", "ぎゃ", "ぎゅ", "ぎょ", "しゃ", "しゅ", "しょ", "じゃ", "じゅ", "じょ", 
                          "ちゃ", "ちゅ", "ちょ", "ぢゃ", "ぢゅ", "ぢょ", "にゃ", "にゅ", "にょ", "ひゃ", "ひゅ", "ひょ",
                          "びゃ", "びゅ", "びょ", "ぴゃ", "ぴゅ", "ぴょ", "みゃ", "みゅ", "みょ", "りゃ", "りゅ", "りょ"};
        int idx = 0;
        for (String c : consonants) {
            ROMAJI_TO_KANA.put(c + "ya", yKana[idx++]);
            ROMAJI_TO_KANA.put(c + "yu", yKana[idx++]);
            ROMAJI_TO_KANA.put(c + "yo", yKana[idx++]);
        }
    }

    public static String toHiragana(String input) {
        if (input == null || input.isEmpty()) return input;
        
        StringBuilder result = new StringBuilder();
        int i = 0;
        while (i < input.length()) {
            // Try 3-char match (shi, chi, tsu...)
            if (i + 3 <= input.length()) {
                String sub = input.substring(i, i + 3).toLowerCase();
                if (ROMAJI_TO_KANA.containsKey(sub)) {
                    result.append(ROMAJI_TO_KANA.get(sub));
                    i += 3;
                    continue;
                }
            }
            
            // Try 2-char match (ka, sa, ya...)
            if (i + 2 <= input.length()) {
                String sub = input.substring(i, i + 2).toLowerCase();
                if (ROMAJI_TO_KANA.containsKey(sub)) {
                    result.append(ROMAJI_TO_KANA.get(sub));
                    i += 2;
                    continue;
                }
                
                // Double consonant check (tt, kk...) -> っ
                if (sub.charAt(0) == sub.charAt(1) && sub.charAt(0) != 'n' && Character.isLetter(sub.charAt(0))) {
                    result.append("っ");
                    i += 1;
                    continue;
                }
            }
            
            // Try 1-char match (a, i, u...)
            String sub = input.substring(i, i + 1).toLowerCase();
            if (ROMAJI_TO_KANA.containsKey(sub)) {
                result.append(ROMAJI_TO_KANA.get(sub));
                i += 1;
            } else {
                result.append(input.charAt(i));
                i += 1;
            }
        }
        return result.toString();
    }

    public static boolean isRomaji(String input) {
        return input != null && input.matches("^[a-zA-Z\\s]+$");
    }
}
