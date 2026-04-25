-- Seed data for Kanji
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('亜', 'N2', 'Asia, rank next, come after, -ous', 'A, Á', ARRAY['ア'], ARRAY['つ.ぐ'], 7, '7a559b3e-4eea-47ee-a353-8deec41a7cd7') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('阿', 'N2', 'Africa, flatter, fawn upon, corner, nook, recess', 'A, Á', ARRAY['ア','オ'], ARRAY['おもね.る','くま'], 8, 'b85628b0-3f6a-420a-91c7-0cfbd5055459') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('哀', 'N2', 'pathetic, grief, sorrow, pathos, pity, sympathize', 'Ai', ARRAY['アイ'], ARRAY['あわ.れ','あわ.れむ','かな.しい'], 9, 'a54e08f0-b1f4-49b0-bdcd-1fcfab9f5eb7') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('愛', 'N3', 'love, affection, favourite', 'Ái', ARRAY['アイ'], ARRAY['いと.しい','かな.しい','め.でる','お.しむ','まな'], 13, '1659d447-8145-42d3-8262-2d05cea9f834') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('葵', 'N2', 'hollyhock', 'Quỳ', ARRAY['キ'], ARRAY['あおい'], 12, '25c57eec-88fa-4e6e-95a2-9ba83b5f4246') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('茜', 'N2', 'madder, red dye, Turkey red', 'Thiến', ARRAY['セン'], ARRAY['あかね'], 9, '25c57eec-88fa-4e6e-95a2-9ba83b5f4246') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('悪', 'N4', 'bad, vice, rascal, evil, wrong', 'Ác, Ố, Óc', ARRAY['アク','オ'], ARRAY['わる.い','わる-','あ.し','にく.い','-にく.い','ああ','いずくに','いずくんぞ','にく.む'], 11, '1659d447-8145-42d3-8262-2d05cea9f834') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('握', 'N2', 'grip, hold, mould sushi, bribe', 'Ác', ARRAY['アク'], ARRAY['にぎ.る'], 12, 'eaca9807-b2da-4d99-8585-13d429ea249d') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('渥', 'N2', 'kindness, moisten', 'Ác', ARRAY['アク'], ARRAY['あつ.い','うるお.う'], 12, '10673667-6c56-413d-bbd5-a48794fb7725') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('旭', 'N2', 'rising sun, morning sun', 'Húc', ARRAY['キョク'], ARRAY['あさひ'], 6, 'b8af1855-8d69-4238-bc65-6925c1c993cd') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('梓', 'N2', 'catalpa tree, woodblock printing', 'Tử', ARRAY['シ'], ARRAY['あずさ'], 11, '80c53d4a-31b5-442f-be48-5d1b64972fae') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('圧', 'N3', 'pressure, push, overwhelm, oppress, dominate', 'Áp, Yểm, Yếp', ARRAY['アツ','エン','オウ'], ARRAY['お.す','へ.す','おさ.える','お.さえる'], 5, '2fd61440-db3f-4cd5-8101-9e74019df262') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('扱', 'N2', 'handle, entertain, thresh, strip', 'Tráp, Hấp', ARRAY['ソウ','キュウ'], ARRAY['あつか.い','あつか.う','あつか.る','こ.く'], 6, 'eaca9807-b2da-4d99-8585-13d429ea249d') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('絢', 'N2', 'brilliant fabric design', 'Huyến', ARRAY['ケン'], NULL, 12, '2d4eb76f-4fae-4d05-855c-2520845188ed') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('綾', 'N2', 'design, figured cloth, twill', 'Lăng', ARRAY['リン'], ARRAY['あや'], 14, '2d4eb76f-4fae-4d05-855c-2520845188ed') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('鮎', 'N2', 'freshwater trout, smelt', 'Niêm', ARRAY['デン','ネン'], ARRAY['あゆ','なまず'], 16, '91b15cdf-2754-4848-bc73-b3d4589b39ad') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('安', 'N5', 'relax, cheap, low, quiet, rested, contented, peaceful', 'An', ARRAY['アン'], ARRAY['やす.い','やす.まる','やす','やす.らか'], 6, '66a403fd-ce7c-4ecc-820d-3f1718e79119') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('暗', 'N4', 'darkness, disappear, shade, informal, grow dark, be blinded', 'Ám', ARRAY['アン'], ARRAY['くら.い','くら.む','くれ.る'], 13, 'b8af1855-8d69-4238-bc65-6925c1c993cd') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('案', 'N3', 'plan, suggestion, draft, ponder, fear, proposition, idea, expectation, worry, table, bench', 'Án', ARRAY['アン'], ARRAY['つくえ'], 10, '80c53d4a-31b5-442f-be48-5d1b64972fae') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('杏', 'N2', 'apricot', 'Hạnh', ARRAY['キョウ','アン','コウ'], ARRAY['あんず'], 7, '80c53d4a-31b5-442f-be48-5d1b64972fae') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('以', 'N4', 'by means of, because, in view of, compared with', 'Dĩ', ARRAY['イ'], ARRAY['もっ.て'], 5, '78419994-196d-4445-8165-a6029d33a0ff') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('伊', 'N2', 'Italy, that one', 'Y', ARRAY['イ'], ARRAY['かれ'], 6, '78419994-196d-4445-8165-a6029d33a0ff') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('位', 'N3', 'rank, grade, throne, crown, about, some', 'Vị', ARRAY['イ'], ARRAY['くらい','ぐらい'], 7, '78419994-196d-4445-8165-a6029d33a0ff') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('依', 'N3', 'reliant, depend on, consequently, therefore, due to', 'Y, Ỷ', ARRAY['イ','エ'], ARRAY['よ.る'], 8, '78419994-196d-4445-8165-a6029d33a0ff') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('偉', 'N3', 'admirable, greatness, remarkable, conceited, famous, excellent', 'Vĩ', ARRAY['イ'], ARRAY['えら.い'], 12, '78419994-196d-4445-8165-a6029d33a0ff') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('囲', 'N3', 'surround, besiege, store, paling, enclosure, encircle, preserve, keep', 'Vi', ARRAY['イ'], ARRAY['かこ.む','かこ.う','かこ.い'], 7, 'd6dd2a4a-effd-48d8-baaa-60e2d46cfc4d') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('委', 'N3', 'committee, entrust to, leave to, devote, discard', 'Ủy, Uy', ARRAY['イ'], ARRAY['ゆだ.ねる'], 8, '2b2beef1-465e-418b-9883-672cd0e0a712') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('威', 'N2', 'intimidate, dignity, majesty, menace, threaten', 'Uy', ARRAY['イ'], ARRAY['おど.す','おど.し','おど.かす'], 9, '2b2beef1-465e-418b-9883-672cd0e0a712') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('尉', 'N2', 'military officer, jailer, old man, rank', 'Úy, Uất', ARRAY['イ','ジョウ'], NULL, 11, '693998e2-9356-4193-bcef-4b2f79e9e857') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('惟', 'N2', 'consider, reflect, think', 'Duy', ARRAY['イ','ユイ'], ARRAY['おも.んみる','これ','おも.うに'], 11, '1659d447-8145-42d3-8262-2d05cea9f834') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('意', 'N4', 'idea, mind, heart, taste, thought, desire, care, liking', 'Ý', ARRAY['イ'], NULL, 13, '1659d447-8145-42d3-8262-2d05cea9f834') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('慰', 'N2', 'consolation, amusement, seduce, cheer, make sport of, comfort, console', 'Úy', ARRAY['イ'], ARRAY['なぐさ.める','なぐさ.む'], 15, '1659d447-8145-42d3-8262-2d05cea9f834') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('易', 'N3', 'easy, ready to, simple, fortune-telling, divination', 'Dịch, Dị', ARRAY['エキ','イ'], ARRAY['やさ.しい','やす.い'], 8, 'b8af1855-8d69-4238-bc65-6925c1c993cd') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('為', 'N2', 'do, change, make, benefit, welfare, be of use, reach to, try, practice, cost, serve as, good, advantage, as a result of', 'Vi', ARRAY['イ'], ARRAY['ため','な.る','な.す','す.る','たり','つく.る','なり'], 9, '831cfc6a-79c9-4ebb-a4cc-ba737a36caf7') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('異', 'N3', 'uncommon, different, queerness, strangeness, wonderful, curious, unusual', 'Dị', ARRAY['イ'], ARRAY['こと','こと.なる','け'], 11, '43d68113-71ea-45ae-9926-6ea616e69ae2') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('移', 'N3', 'shift, move, change, drift, catch (cold, fire), pass into', 'Di, Dị, Sỉ', ARRAY['イ'], ARRAY['うつ.る','うつ.す'], 11, '18d824dd-4b06-48c0-9e40-ff5132c75dc9') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('維', 'N2', 'fiber, tie, rope', 'Duy', ARRAY['イ'], NULL, 14, '2d4eb76f-4fae-4d05-855c-2520845188ed') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('緯', 'N2', 'horizontal, woof, left & right, (parallels of) latitude, prediction', 'Vĩ', ARRAY['イ'], ARRAY['よこいと','ぬき'], 16, '2d4eb76f-4fae-4d05-855c-2520845188ed') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('胃', 'N3', 'stomach, paunch, crop, craw', 'Vị', ARRAY['イ'], NULL, 9, '71cc2465-f238-4f52-b9e3-39f8f95caaba') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('衣', 'N3', 'garment, clothes, dressing', 'Y, Ý', ARRAY['イ','エ'], ARRAY['ころも','きぬ','-ぎ'], 6, '9c5b95cd-6590-4a03-8c61-a68c80da3c8c') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('違', 'N3', 'difference, differ', 'Vi', ARRAY['イ'], ARRAY['ちが.う','ちが.い','ちが.える','-ちが.える','たが.う','たが.える'], 13, '371180fe-c78a-477d-b628-86c3e88e03f1') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('遺', 'N2', 'bequeath, leave behind, reserve', 'Di, Dị', ARRAY['イ','ユイ'], ARRAY['のこ.す'], 15, '371180fe-c78a-477d-b628-86c3e88e03f1') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('医', 'N4', 'doctor, medicine', 'Ế, Y, Ỷ, I, Ỉ', ARRAY['イ'], ARRAY['い.やす','い.する','くすし'], 7, '3c076357-dc93-48ad-96f1-aef3d8dd938d') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('井', 'N2', 'well, well crib, town, community', 'Tỉnh', ARRAY['セイ','ショウ'], ARRAY['い'], 4, '7a559b3e-4eea-47ee-a353-8deec41a7cd7') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('亥', 'N2', 'sign of the hog, 9-11PM, twelfth sign of the Chinese zodiac', 'Hợi', ARRAY['ガイ','カイ'], ARRAY['い'], 6, '78591721-155a-4c67-999d-a331bb59ebb5') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('域', 'N3', 'range, region, limits, stage, level', 'Vực', ARRAY['イキ'], NULL, 11, '2fd61440-db3f-4cd5-8101-9e74019df262') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('育', 'N3', 'bring up, grow up, raise, rear', 'Dục', ARRAY['イク'], ARRAY['そだ.つ','そだ.ち','そだ.てる','はぐく.む'], 8, '71cc2465-f238-4f52-b9e3-39f8f95caaba') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('郁', 'N2', 'cultural progress, perfume', 'Úc', ARRAY['イク'], NULL, 9, '57b67155-4755-4cbd-8c34-1edf3d4cb815') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('磯', 'N2', 'seashore, beach', 'Ki', ARRAY['キ'], ARRAY['いそ'], 17, 'c3bb7570-e8b9-49cc-bf56-90e74165d503') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('一', 'N5', 'one, one radical (no.1)', 'Nhất', ARRAY['イチ','イツ'], ARRAY['ひと-','ひと.つ'], 1, '12f0d122-51f5-4c55-8a67-d3fc53818027') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('壱', 'N2', 'one (in documents)', 'Nhất', ARRAY['イチ','イツ'], ARRAY['ひとつ'], 7, 'd76d5b2c-c675-4484-a875-14a4e0534449') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('逸', 'N2', 'deviate, idleness, leisure, miss the mark, evade, elude, parry, diverge', 'Dật', ARRAY['イツ'], ARRAY['そ.れる','そ.らす','はぐ.れる'], 11, '371180fe-c78a-477d-b628-86c3e88e03f1') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('稲', 'N2', 'rice plant', 'Đạo', ARRAY['トウ','テ'], ARRAY['いね','いな-'], 14, '18d824dd-4b06-48c0-9e40-ff5132c75dc9') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('芋', 'N2', 'taro, yam, tuber', 'Dụ, Hu', ARRAY['ウ'], ARRAY['いも'], 6, '25c57eec-88fa-4e6e-95a2-9ba83b5f4246') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('允', 'N2', 'license, sincerity, permit', 'Duẫn', ARRAY['イン'], ARRAY['じょう','まこと.に','ゆるす'], 4, '88165dcc-9e82-4204-80b3-e041b6649197') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('印', 'N3', 'stamp, seal, mark, imprint, symbol, emblem, trademark, evidence, souvenir, India', 'Ấn', ARRAY['イン'], ARRAY['しるし','-じるし','しる.す'], 6, 'd88fdf4e-6084-471d-ac31-64ddac58a407') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('員', 'N4', 'employee, member, number, the one in charge', 'Viên, Vân', ARRAY['イン'], NULL, 10, 'a54e08f0-b1f4-49b0-bdcd-1fcfab9f5eb7') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('因', 'N3', 'cause, factor, be associated with, depend on, be limited to', 'Nhân', ARRAY['イン'], ARRAY['よ.る','ちな.む'], 6, 'd6dd2a4a-effd-48d8-baaa-60e2d46cfc4d') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('姻', 'N2', 'matrimony, marry', 'Nhân', ARRAY['イン'], NULL, 9, '2b2beef1-465e-418b-9883-672cd0e0a712') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('引', 'N4', 'pull, tug, jerk, admit, install, quote, refer to', 'Dẫn, Dấn', ARRAY['イン'], ARRAY['ひ.く','ひ.ける'], 4, 'ad6d3726-634b-40d9-bc5a-538b879c95d5') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('飲', 'N5', 'drink, smoke, take', 'Ấm, Ẩm, Hẩm, Ỡm', ARRAY['イン','オン'], ARRAY['の.む','-の.み'], 12, '575f81b8-d9ab-421e-ac61-7d25cf8751da') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('胤', 'N2', 'descendent, issue, offspring', 'Dận', ARRAY['イン'], ARRAY['たね'], 9, '71cc2465-f238-4f52-b9e3-39f8f95caaba') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('院', 'N4', 'Inst., institution, temple, mansion, school', 'Viện', ARRAY['イン'], NULL, 10, 'b85628b0-3f6a-420a-91c7-0cfbd5055459') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('陰', 'N2', 'shade, yin, negative, sex organs, secret, shadow', 'Âm', ARRAY['イン'], ARRAY['かげ','かげ.る'], 11, 'b85628b0-3f6a-420a-91c7-0cfbd5055459') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('隠', 'N2', 'conceal, hide, cover', 'Ẩn', ARRAY['イン','オン'], ARRAY['かく.す','かく.し','かく.れる','よ.る'], 14, 'b85628b0-3f6a-420a-91c7-0cfbd5055459') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('韻', 'N2', 'rhyme, elegance, tone', 'Vận', ARRAY['イン'], NULL, 19, '0092c0a0-6030-49cc-bb87-2ed7f3e8d06a') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('右', 'N5', 'right', 'Hữu', ARRAY['ウ','ユウ'], ARRAY['みぎ'], 5, 'a54e08f0-b1f4-49b0-bdcd-1fcfab9f5eb7') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('宇', 'N3', 'eaves, roof, house, heaven', 'Vũ', ARRAY['ウ'], NULL, 6, '66a403fd-ce7c-4ecc-820d-3f1718e79119') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('羽', 'N3', 'feathers, counter for birds, rabbits', 'Vũ', ARRAY['ウ'], ARRAY['は','わ','はね'], 6, '2290d53b-eec2-4251-8bca-1ceb2407f15c') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('雨', 'N5', 'rain', 'Vũ, Vú', ARRAY['ウ'], ARRAY['あめ','あま-','-さめ'], 8, '491a9ec1-aebb-486b-9e2d-050c80063a8f') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('卯', 'N2', 'sign of the hare or rabbit, fourth sign of Chinese zodiac, 5-7AM, east', 'Mão', ARRAY['ボウ','モウ'], ARRAY['う'], 5, 'd88fdf4e-6084-471d-ac31-64ddac58a407') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('丑', 'N2', 'sign of the ox or cow, 1-3AM, second sign of Chinese zodiac', 'Sửu', ARRAY['チュウ'], ARRAY['うし'], 4, '12f0d122-51f5-4c55-8a67-d3fc53818027') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('渦', 'N2', 'whirlpool, eddy, vortex', 'Qua, Oa', ARRAY['カ'], ARRAY['うず'], 12, '10673667-6c56-413d-bbd5-a48794fb7725') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('唄', 'N2', 'song, ballad', 'Bái', ARRAY['バイ'], ARRAY['うた','うた.う'], 10, 'a54e08f0-b1f4-49b0-bdcd-1fcfab9f5eb7') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('浦', 'N2', 'bay, creek, inlet, gulf, beach, seacoast', 'Phổ, Phố', ARRAY['ホ'], ARRAY['うら'], 10, '10673667-6c56-413d-bbd5-a48794fb7725') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('運', 'N4', 'carry, luck, destiny, fate, lot, transport, progress, advance', 'Vận', ARRAY['ウン'], ARRAY['はこ.ぶ'], 12, '371180fe-c78a-477d-b628-86c3e88e03f1') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('雲', 'N3', 'cloud', 'Vân', ARRAY['ウン'], ARRAY['くも','-ぐも'], 12, '491a9ec1-aebb-486b-9e2d-050c80063a8f') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('叡', 'N2', 'intelligence, imperial', 'Duệ', ARRAY['エイ'], ARRAY['あき.らか'], 16, '6068ca21-fb74-4144-9b3d-7b93749eccdd') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('営', 'N3', 'camp, perform, build, conduct (business)', 'Dinh, Doanh', ARRAY['エイ'], ARRAY['いとな.む','いとな.み'], 12, 'a54e08f0-b1f4-49b0-bdcd-1fcfab9f5eb7') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('影', 'N2', 'shadow, silhouette, phantom', 'Ảnh', ARRAY['エイ'], ARRAY['かげ'], 15, 'a141edd3-78dd-46cc-b260-1b2cfc79e5ed') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('映', 'N4', 'reflect, reflection, projection', 'Ánh', ARRAY['エイ'], ARRAY['うつ.る','うつ.す','は.える','-ば.え'], 9, 'b8af1855-8d69-4238-bc65-6925c1c993cd') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('栄', 'N3', 'flourish, prosperity, honor, glory, splendor', 'Vinh', ARRAY['エイ','ヨウ'], ARRAY['さか.える','は.え','-ば.え','は.える','え'], 9, '80c53d4a-31b5-442f-be48-5d1b64972fae') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('永', 'N3', 'eternity, long, lengthy', 'Vĩnh', ARRAY['エイ'], ARRAY['なが.い'], 5, '10673667-6c56-413d-bbd5-a48794fb7725') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('泳', 'N3', 'swim', 'Vịnh', ARRAY['エイ'], ARRAY['およ.ぐ'], 8, '10673667-6c56-413d-bbd5-a48794fb7725') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('瑛', 'N2', 'sparkle of jewelry, crystal', 'Anh', ARRAY['エイ'], NULL, 12, '1450b570-89aa-4b1c-9e48-32bc25298929') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('英', 'N4', 'England, English, hero, outstanding, calyx', 'Anh', ARRAY['エイ'], ARRAY['はなぶさ'], 8, '25c57eec-88fa-4e6e-95a2-9ba83b5f4246') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('衛', 'N2', 'defense, protection', 'Vệ', ARRAY['エイ','エ'], NULL, 16, '837ea248-33b4-4366-9517-d190cc876855') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('詠', 'N2', 'recitation, poem, song, composing', 'Vịnh', ARRAY['エイ'], ARRAY['よ.む','うた.う'], 12, '7fd47228-ad16-439a-8685-ad9cacdeb95e') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('鋭', 'N3', 'pointed, sharpness, edge, weapon, sharp, violent', 'Duệ, Nhuệ', ARRAY['エイ'], ARRAY['するど.い'], 15, 'c3b48b38-6414-47f2-a7ac-d72a85c0e35a') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('液', 'N3', 'fluid, liquid, juice, sap, secretion', 'Dịch', ARRAY['エキ'], NULL, 11, '10673667-6c56-413d-bbd5-a48794fb7725') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('疫', 'N2', 'epidemic', 'Dịch', ARRAY['エキ','ヤク'], NULL, 9, '5688d6a7-12f3-4090-999b-bee052200ce3') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('益', 'N2', 'benefit, gain, profit, advantage', 'Ích', ARRAY['エキ','ヤク'], ARRAY['ま.す'], 10, '12bd4f5a-a4fb-451b-b25d-418406c683fa') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('駅', 'N5', 'station', 'Dịch', ARRAY['エキ'], NULL, 14, 'd7bb7ac5-d329-47fc-981a-3b2bc480c688') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('悦', 'N2', 'ecstasy, joy, rapture', 'Duyệt, Dột', ARRAY['エツ'], ARRAY['よろこ.ぶ','よろこ.ばす'], 10, '1659d447-8145-42d3-8262-2d05cea9f834') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('謁', 'N2', 'audience, audience (with king)', 'Yết', ARRAY['エツ'], NULL, 15, '7fd47228-ad16-439a-8685-ad9cacdeb95e') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('越', 'N3', 'surpass, cross over, move to, exceed, Vietnam', 'Việt, Hoạt', ARRAY['エツ','オツ'], ARRAY['こ.す','-こ.す','-ご.し','こ.える','-ご.え'], 12, '432fb72b-e9d0-4c51-981a-ebec3d1c1488') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('閲', 'N2', 'review, inspection, revision', 'Duyệt, Duợt, Dượt, Huịch, Huỵch', ARRAY['エツ'], ARRAY['けみ.する'], 15, 'fc1908d4-7e1d-4e55-b1df-72e159f91868') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('円', 'N5', 'circle, yen, round', 'Viên', ARRAY['エン'], ARRAY['まる.い','まる','まど','まど.か','まろ.やか'], 4, '606b6268-d8c0-4e50-98b6-aebb5465850d') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('園', 'N3', 'park, garden, yard, farm', 'Viên', ARRAY['エン'], ARRAY['その'], 13, 'd6dd2a4a-effd-48d8-baaa-60e2d46cfc4d') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('宴', 'N2', 'banquet, feast, party', 'Yến', ARRAY['エン'], ARRAY['うたげ'], 10, '66a403fd-ce7c-4ecc-820d-3f1718e79119') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('延', 'N3', 'prolong, stretching', 'Duyên', ARRAY['エン'], ARRAY['の.びる','の.べる','の.べ','の.ばす'], 8, 'dc9cdeb1-8d32-4023-808d-c8f2f3d9f9f2') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('援', 'N2', 'abet, help, save', 'Viên, Viện', ARRAY['エン'], NULL, 12, 'eaca9807-b2da-4d99-8585-13d429ea249d') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('沿', 'N2', 'run alongside, follow along, run along, lie along', 'Duyên', ARRAY['エン'], ARRAY['そ.う','-ぞ.い'], 8, '10673667-6c56-413d-bbd5-a48794fb7725') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('演', 'N3', 'performance, act, play, render, stage', 'Diễn', ARRAY['エン'], NULL, 14, '10673667-6c56-413d-bbd5-a48794fb7725') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('炎', 'N2', 'inflammation, flame, blaze', 'Viêm, Đàm, Diễm', ARRAY['エン'], ARRAY['ほのお'], 8, '831cfc6a-79c9-4ebb-a4cc-ba737a36caf7') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('煙', 'N3', 'smoke', 'Yên', ARRAY['エン'], ARRAY['けむ.る','けむり','けむ.い'], 13, '831cfc6a-79c9-4ebb-a4cc-ba737a36caf7') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('猿', 'N2', 'monkey', 'Viên', ARRAY['エン'], ARRAY['さる'], 13, '060e9144-2828-4302-b284-f6ac8ea6ae51') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('縁', 'N2', 'affinity, relation, connection, edge, border, verge, brink', 'Duyên', ARRAY['エン','-ネン'], ARRAY['ふち','ふち.どる','ゆかり','よすが','へり','えにし'], 15, '2d4eb76f-4fae-4d05-855c-2520845188ed') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('艶', 'N2', 'glossy, luster, glaze, polish, charm, colorful, captivating', 'Diễm', ARRAY['エン'], ARRAY['つや','なま.めかしい','あで.やか','つや.めく','なま.めく'], 19, '23e4cd82-9730-445a-acb4-7941eb4fdc32') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('苑', 'N2', 'garden, farm, park', 'Uyển, Uất, Uẩn', ARRAY['エン','オン'], ARRAY['その','う.つ'], 8, '25c57eec-88fa-4e6e-95a2-9ba83b5f4246') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('遠', 'N4', 'distant, far', 'Viễn, Viển', ARRAY['エン','オン'], ARRAY['とお.い'], 13, '371180fe-c78a-477d-b628-86c3e88e03f1') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('鉛', 'N2', 'lead', 'Duyên', ARRAY['エン'], ARRAY['なまり'], 13, 'c3b48b38-6414-47f2-a7ac-d72a85c0e35a') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('塩', 'N3', 'salt', 'Diêm', ARRAY['エン'], ARRAY['しお'], 13, '2fd61440-db3f-4cd5-8101-9e74019df262') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('於', 'N2', 'at, in, on, as for', 'Ư, Ô', ARRAY['オ','ヨ'], ARRAY['おい.て','お.ける','ああ','より'], 8, '816fcd71-fef2-4808-a4c6-60bc531d2d01') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('汚', 'N3', 'dirty, pollute, disgrace, rape, defile', 'Ô, Ố, Phiếm', ARRAY['オ'], ARRAY['けが.す','けが.れる','けが.らわしい','よご.す','よご.れる','きたな.い'], 6, '10673667-6c56-413d-bbd5-a48794fb7725') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('凹', 'N2', 'concave, hollow, sunken', 'Ao', ARRAY['オウ'], ARRAY['くぼ.む','へこ.む','ぼこ'], 5, '2c241828-d32e-4d79-8fba-50c0b6fe9ab4') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('央', 'N3', 'center, middle', 'Ương', ARRAY['オウ'], NULL, 5, '457c9d33-f2d9-4f61-bca8-910ce7ade194') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('奥', 'N3', 'heart, interior', 'Áo, Úc', ARRAY['オウ'], ARRAY['おく','おく.まる','くま'], 12, '457c9d33-f2d9-4f61-bca8-910ce7ade194') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('往', 'N2', 'journey, travel, chase away, let go, going, before, formerly', 'Vãng', ARRAY['オウ'], ARRAY['い.く','いにしえ','さき.に','ゆ.く'], 8, '5a7d3fce-7600-45fd-91a8-2af832381ee4') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('応', 'N3', 'apply, answer, yes, OK, reply, accept', 'Ứng', ARRAY['オウ','ヨウ','-ノウ'], ARRAY['あた.る','まさに','こた.える'], 7, '1659d447-8145-42d3-8262-2d05cea9f834') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('押', 'N3', 'push, stop, check, subdue, attach, seize, weight, shove, press, seal, do in spite of', 'Áp', ARRAY['オウ'], ARRAY['お.す','お.し-','お.っ-','お.さえる','おさ.える'], 8, 'eaca9807-b2da-4d99-8585-13d429ea249d') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('旺', 'N2', 'flourishing, successful, beautiful, vigorous', 'Vượng', ARRAY['オウ'], ARRAY['さかん'], 8, 'b8af1855-8d69-4238-bc65-6925c1c993cd') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('横', 'N3', 'sideways, side, horizontal, width, woof, unreasonable, perverse', 'Hoành, Hoạnh, Quáng, Vàng', ARRAY['オウ'], ARRAY['よこ'], 15, '80c53d4a-31b5-442f-be48-5d1b64972fae') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('欧', 'N3', 'Europe', 'Âu, Ẩu', ARRAY['オウ'], ARRAY['うた.う','は.く'], 8, '96d875ed-5269-427a-b3ca-828933e753fc') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('殴', 'N2', 'assault, hit, beat, thrash', 'Ấu, Ẩu, Khu', ARRAY['オウ'], ARRAY['なぐ.る'], 8, '6d0baa7b-8a58-4bf8-915f-3a6f6c134440') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('王', 'N3', 'king, rule, magnate', 'Vương, Vượng', ARRAY['オウ','-ノウ'], NULL, 4, '1450b570-89aa-4b1c-9e48-32bc25298929') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('翁', 'N2', 'venerable old man', 'Ông', ARRAY['オウ'], ARRAY['おきな'], 10, '2290d53b-eec2-4251-8bca-1ceb2407f15c') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('黄', 'N3', 'yellow', 'Hoàng', ARRAY['コウ','オウ'], ARRAY['き','こ-'], 11, 'a5f674ab-250b-48a8-89e3-9bc1ecf62556') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('沖', 'N2', 'open sea, offing, rise high into sky', 'Trùng, Xung', ARRAY['チュウ'], ARRAY['おき','おきつ','ちゅう.する','わく'], 7, '10673667-6c56-413d-bbd5-a48794fb7725') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('億', 'N3', 'hundred million, 10**8', 'Ức', ARRAY['オク'], NULL, 15, '78419994-196d-4445-8165-a6029d33a0ff') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('屋', 'N4', 'roof, house, shop, dealer, seller', 'Ốc', ARRAY['オク'], ARRAY['や'], 9, 'dbb1b9f0-b6d7-4c0b-989a-7a98ab167f37') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('憶', 'N2', 'recollection, think, remember', 'Ức', ARRAY['オク'], NULL, 16, '1659d447-8145-42d3-8262-2d05cea9f834') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('乙', 'N2', 'the latter, duplicate, strange, witty, fishhook radical (no. 5)', 'Ất', ARRAY['オツ','イツ'], ARRAY['おと-','きのと'], 1, '4721cf9b-ec7a-4029-8f61-3f80cc4d64fb') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('卸', 'N2', 'wholesale', 'Tá', ARRAY['シャ'], ARRAY['おろ.す','おろし','おろ.し'], 9, 'd88fdf4e-6084-471d-ac31-64ddac58a407') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('恩', 'N2', 'grace, kindness, goodness, favor, mercy, blessing, benefit', 'Ân', ARRAY['オン'], NULL, 10, '1659d447-8145-42d3-8262-2d05cea9f834') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('温', 'N3', 'warm', 'Ôn, Uẩn, Ồn, Ổn, Un', ARRAY['オン'], ARRAY['あたた.か','あたた.かい','あたた.まる','あたた.める','ぬく'], 12, '10673667-6c56-413d-bbd5-a48794fb7725') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('穏', 'N2', 'calm, quiet, moderation', 'Ổn, Ủn', ARRAY['オン'], ARRAY['おだ.やか'], 16, '18d824dd-4b06-48c0-9e40-ff5132c75dc9') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('音', 'N4', 'sound, noise', 'Âm', ARRAY['オン','イン','-ノン'], ARRAY['おと','ね'], 9, '0092c0a0-6030-49cc-bb87-2ed7f3e8d06a') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('下', 'N5', 'below, down, descend, give, low, inferior', 'Hạ, Há', ARRAY['カ','ゲ'], ARRAY['した','しも','もと','さ.げる','さ.がる','くだ.る','くだ.り','くだ.す','-くだ.す','くだ.さる','お.ろす','お.りる'], 3, '12f0d122-51f5-4c55-8a67-d3fc53818027') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('化', 'N3', 'change, take the form of, influence, enchant, delude, -ization', 'Hóa', ARRAY['カ','ケ'], ARRAY['ば.ける','ば.かす','ふ.ける','け.する'], 4, 'bb9cb1c8-f409-4a7c-9740-15dd051b40b9') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('仮', 'N3', 'sham, temporary, interim, assumed (name), informal', 'Phản', ARRAY['カ','ケ'], ARRAY['かり','かり-'], 6, '78419994-196d-4445-8165-a6029d33a0ff') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('何', 'N5', 'what', 'Hà', ARRAY['カ'], ARRAY['なに','なん','なに-','なん-'], 7, '78419994-196d-4445-8165-a6029d33a0ff') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('伽', 'N2', 'nursing, attending, entertainer', 'Già', ARRAY['カ','ガ','キャ','ギャ'], ARRAY['とぎ'], 7, '78419994-196d-4445-8165-a6029d33a0ff') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('価', 'N3', 'value, price', 'Giá, Giới', ARRAY['カ','ケ'], ARRAY['あたい'], 8, '78419994-196d-4445-8165-a6029d33a0ff') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('佳', 'N2', 'excellent, beautiful, good, pleasing, skilled', 'Giai', ARRAY['カ'], NULL, 8, '78419994-196d-4445-8165-a6029d33a0ff') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('加', 'N3', 'add, addition, increase, join, include, Canada', 'Gia', ARRAY['カ'], ARRAY['くわ.える','くわ.わる'], 5, 'd9107ec4-ea5d-4a21-bacd-ffca462b29dd') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('可', 'N3', 'can, passable, approval', 'Khả, Khắc', ARRAY['カ','コク'], ARRAY['-べ.き','-べ.し'], 5, 'a54e08f0-b1f4-49b0-bdcd-1fcfab9f5eb7') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('嘉', 'N2', 'applaud, praise, esteem, happy, auspicious', 'Gia', ARRAY['カ'], ARRAY['よみ.する','よい'], 14, 'a54e08f0-b1f4-49b0-bdcd-1fcfab9f5eb7') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('夏', 'N4', 'summer', 'Hạ, Giạ, Giá', ARRAY['カ','ガ','ゲ'], ARRAY['なつ'], 10, '73206c31-1fd1-4e55-9e35-7910fb6b184e') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('嫁', 'N2', 'marry into, bride', 'Giá', ARRAY['カ'], ARRAY['よめ','とつ.ぐ','い.く','ゆ.く'], 13, '2b2beef1-465e-418b-9883-672cd0e0a712') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('家', 'N4', 'house, home, family, professional, expert, performer', 'Gia, Cô', ARRAY['カ','ケ'], ARRAY['いえ','や','うち'], 10, '66a403fd-ce7c-4ecc-820d-3f1718e79119') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('寡', 'N2', 'widow, minority, few', 'Quả', ARRAY['カ'], NULL, 14, '66a403fd-ce7c-4ecc-820d-3f1718e79119') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('科', 'N3', 'department, course, section', 'Khoa', ARRAY['カ'], NULL, 9, '18d824dd-4b06-48c0-9e40-ff5132c75dc9') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('暇', 'N2', 'spare time, rest, leisure, time, leave of absence', 'Hạ', ARRAY['カ'], ARRAY['ひま','いとま'], 13, 'b8af1855-8d69-4238-bc65-6925c1c993cd') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('果', 'N3', 'fruit, reward, carry out, achieve, complete, end, finish, succeed', 'Quả', ARRAY['カ'], ARRAY['は.たす','はた.す','-は.たす','は.てる','-は.てる','は.て'], 8, '80c53d4a-31b5-442f-be48-5d1b64972fae') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('架', 'N2', 'erect, frame, mount, support, shelf, construct', 'Giá', ARRAY['カ'], ARRAY['か.ける','か.かる'], 9, '80c53d4a-31b5-442f-be48-5d1b64972fae') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('歌', 'N4', 'song, sing', 'Ca', ARRAY['カ'], ARRAY['うた','うた.う'], 14, '96d875ed-5269-427a-b3ca-828933e753fc') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('河', 'N3', 'river', 'Hà', ARRAY['カ'], ARRAY['かわ'], 8, '10673667-6c56-413d-bbd5-a48794fb7725') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('火', 'N5', 'fire', 'Hỏa', ARRAY['カ'], ARRAY['ひ','-び','ほ-'], 4, '831cfc6a-79c9-4ebb-a4cc-ba737a36caf7') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('禍', 'N2', 'calamity, misfortune, evil, curse', 'Họa', ARRAY['カ'], ARRAY['わざわい'], 13, 'aa655283-0fb9-4ae0-a339-aa1437f00ad1') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('稼', 'N2', 'earnings, work, earn money', 'Giá', ARRAY['カ'], ARRAY['かせ.ぐ'], 15, '18d824dd-4b06-48c0-9e40-ff5132c75dc9') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('箇', 'N2', 'counter for articles', 'Cá', ARRAY['カ','コ'], NULL, 14, 'da702964-289f-443e-995f-0f7c0d2a57f3') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('花', 'N5', 'flower', 'Hoa', ARRAY['カ','ケ'], ARRAY['はな'], 7, '25c57eec-88fa-4e6e-95a2-9ba83b5f4246') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('茄', 'N2', 'eggplant', 'Gia', ARRAY['カ'], NULL, 8, '25c57eec-88fa-4e6e-95a2-9ba83b5f4246') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('荷', 'N3', 'baggage, shoulder-pole load, bear (a burden), shoulder (a gun), load, cargo, freight', 'Hà', ARRAY['カ'], ARRAY['に'], 10, '25c57eec-88fa-4e6e-95a2-9ba83b5f4246') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('華', 'N2', 'splendor, flower, petal, shine, luster, ostentatious, showy, gay, gorgeous', 'Hoa, Hóa', ARRAY['カ','ケ'], ARRAY['はな'], 10, '25c57eec-88fa-4e6e-95a2-9ba83b5f4246') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('菓', 'N3', 'candy, cakes, fruit', 'Quả', ARRAY['カ'], NULL, 11, '25c57eec-88fa-4e6e-95a2-9ba83b5f4246') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('課', 'N3', 'chapter, lesson, section, department, division, counter for chapters (of a book)', 'Khóa', ARRAY['カ'], NULL, 15, '7fd47228-ad16-439a-8685-ad9cacdeb95e') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('貨', 'N3', 'freight, goods, property', 'Hóa', ARRAY['カ'], ARRAY['たから'], 11, '0cb16105-d4c3-4534-9e4e-0eecbad15787') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('過', 'N3', 'overdo, exceed, go beyond, error', 'Quá, Qua', ARRAY['カ'], ARRAY['す.ぎる','す.ごす','あやま.ち','あやま.つ','よぎ.る','よ.ぎる'], 12, '371180fe-c78a-477d-b628-86c3e88e03f1') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('霞', 'N2', 'be hazy, grow dim, blurred', 'Hà', ARRAY['カ','ゲ'], ARRAY['かすみ','かす.む'], 17, '491a9ec1-aebb-486b-9e2d-050c80063a8f') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('蚊', 'N2', 'mosquito', 'Văn', ARRAY['ブン'], ARRAY['か'], 10, '2b1d8e20-f306-465c-b245-cb2dd48f3615') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('我', 'N2', 'ego, I, selfish, our, oneself', 'Ngã', ARRAY['ガ'], ARRAY['われ','わ','わ.が-','わが-'], 7, '05e52f9b-ed68-4ba8-8ccd-b22e4b8860b4') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('画', 'N4', 'brush-stroke, picture', 'Hoạch', ARRAY['ガ','カク','エ','カイ'], ARRAY['えが.く','かく.する','かぎ.る','はかりごと','はか.る'], 8, '43d68113-71ea-45ae-9926-6ea616e69ae2') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('芽', 'N2', 'bud, sprout, spear, germ', 'Nha', ARRAY['ガ'], ARRAY['め'], 8, '25c57eec-88fa-4e6e-95a2-9ba83b5f4246') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('賀', 'N2', 'congratulations, joy', 'Hạ', ARRAY['ガ'], NULL, 12, '0cb16105-d4c3-4534-9e4e-0eecbad15787') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('雅', 'N2', 'gracious, elegant, graceful, refined', 'Nhã', ARRAY['ガ'], ARRAY['みや.び'], 13, 'e9426c63-0e1d-4399-a59e-ce2e851fa615') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('餓', 'N2', 'starve, hungry, thirst', 'Ngạ', ARRAY['ガ'], ARRAY['う.える'], 15, '575f81b8-d9ab-421e-ac61-7d25cf8751da') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('介', 'N3', 'jammed in, shellfish, mediate, concern oneself with', 'Giới', ARRAY['カイ'], NULL, 4, '78419994-196d-4445-8165-a6029d33a0ff') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('会', 'N5', 'meeting, meet, party, association, interview, join', 'Cối, Hội, Hụi', ARRAY['カイ','エ'], ARRAY['あ.う','あ.わせる','あつ.まる'], 6, '78419994-196d-4445-8165-a6029d33a0ff') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('解', 'N3', 'unravel, notes, key, explanation, understanding, untie, undo, solve, answer, cancel, absolve, explain, minute', 'Giải, Giới, Giái', ARRAY['カイ','ゲ'], ARRAY['と.く','と.かす','と.ける','ほど.く','ほぐ.す','わか.る','さと.る'], 13, '0e7ac1f1-7052-42b6-add7-9104991a8454') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('回', 'N4', '-times, round, game, revolve, counter for occurrences', 'Hồi, Hối', ARRAY['カイ','エ'], ARRAY['まわ.る','-まわ.る','-まわ.り','まわ.す','-まわ.す','まわ.し-','-まわ.し','もとお.る','か.える'], 6, 'd6dd2a4a-effd-48d8-baaa-60e2d46cfc4d') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('塊', 'N2', 'clod, lump, chunk, clot, mass', 'Khối', ARRAY['カイ','ケ'], ARRAY['かたまり','つちくれ'], 13, '2fd61440-db3f-4cd5-8101-9e74019df262') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('壊', 'N2', 'demolition, break, destroy', 'Hoại', ARRAY['カイ','エ'], ARRAY['こわ.す','こわ.れる','やぶ.る'], 16, '2fd61440-db3f-4cd5-8101-9e74019df262') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('快', 'N3', 'cheerful, pleasant, agreeable, comfortable', 'Khoái', ARRAY['カイ'], ARRAY['こころよ.い'], 7, '1659d447-8145-42d3-8262-2d05cea9f834') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('怪', 'N2', 'suspicious, mystery, apparition', 'Quái', ARRAY['カイ','ケ'], ARRAY['あや.しい','あや.しむ'], 8, '1659d447-8145-42d3-8262-2d05cea9f834') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('悔', 'N2', 'repent, regret', 'Hối, Hổi', ARRAY['カイ'], ARRAY['く.いる','く.やむ','くや.しい'], 9, '1659d447-8145-42d3-8262-2d05cea9f834') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('懐', 'N2', 'feelings, heart, yearn, miss someone, become attached to, bosom, breast, pocket', 'Hoài', ARRAY['カイ','エ'], ARRAY['ふところ','なつ.かしい','なつ.かしむ','なつ.く','なつ.ける','なず.ける','いだ.く','おも.う'], 16, '1659d447-8145-42d3-8262-2d05cea9f834') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('戒', 'N2', 'commandment', 'Giới, Dới, Giái, Giáy, Rối', ARRAY['カイ'], ARRAY['いまし.める'], 7, '05e52f9b-ed68-4ba8-8ccd-b22e4b8860b4') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('拐', 'N2', 'kidnap, falsify', 'Quải', ARRAY['カイ'], NULL, 8, 'eaca9807-b2da-4d99-8585-13d429ea249d') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('改', 'N3', 'reformation, change, modify, mend, renew, examine, inspect, search', 'Cải', ARRAY['カイ'], ARRAY['あらた.める','あらた.まる'], 7, 'b62aa3f5-bcc4-4c24-944d-b02f3fbb5499') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('魁', 'N2', 'charging ahead of others', 'Khôi', ARRAY['カイ'], ARRAY['さきがけ','かしら'], 14, '768dd18f-b077-4421-bb5c-32535db0cd4b') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('械', 'N3', 'contraption, fetter, machine, instrument', 'Giới', ARRAY['カイ'], ARRAY['かせ'], 11, '80c53d4a-31b5-442f-be48-5d1b64972fae') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('海', 'N4', 'sea, ocean', 'Hải', ARRAY['カイ'], ARRAY['うみ'], 9, '10673667-6c56-413d-bbd5-a48794fb7725') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('灰', 'N3', 'ashes, puckery juice, cremate', 'Hôi, Khôi', ARRAY['カイ'], ARRAY['はい'], 6, '831cfc6a-79c9-4ebb-a4cc-ba737a36caf7') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('界', 'N4', 'world, boundary', 'Giới', ARRAY['カイ'], NULL, 9, '43d68113-71ea-45ae-9926-6ea616e69ae2') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('皆', 'N3', 'all, everything', 'Giai', ARRAY['カイ'], ARRAY['みな','みんな'], 9, '3b90f7ed-6228-403f-94bc-50105d4ad47e') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('絵', 'N3', 'picture, drawing, painting, sketch', 'Hội, Gói, Gối', ARRAY['カイ','エ'], NULL, 12, '2d4eb76f-4fae-4d05-855c-2520845188ed') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('開', 'N4', 'open, unfold, unseal', 'Khai', ARRAY['カイ'], ARRAY['ひら.く','ひら.き','-びら.き','ひら.ける','あ.く','あ.ける'], 12, 'fc1908d4-7e1d-4e55-b1df-72e159f91868') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('階', 'N3', 'storey, stair, counter for storeys of a building', 'Giai', ARRAY['カイ'], ARRAY['きざはし'], 12, 'b85628b0-3f6a-420a-91c7-0cfbd5055459') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('貝', 'N3', 'shellfish', 'Bối', ARRAY['バイ'], ARRAY['かい'], 7, '0cb16105-d4c3-4534-9e4e-0eecbad15787') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('凱', 'N2', 'victory song', 'Khải', ARRAY['ガイ','カイ'], ARRAY['かちどき','やわらぐ'], 12, '57745b80-a744-46c1-af52-58f66dcad3c1') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('劾', 'N2', 'censure, criminal investigation', 'Hặc', ARRAY['ガイ'], NULL, 8, 'd9107ec4-ea5d-4a21-bacd-ffca462b29dd') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('外', 'N5', 'outside', 'Ngoại', ARRAY['ガイ','ゲ'], ARRAY['そと','ほか','はず.す','はず.れる','と-'], 5, '61ef9463-b171-47ec-b077-20f2dcd774fc') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('害', 'N3', 'harm, injury', 'Hại, Hạt', ARRAY['ガイ'], NULL, 10, '66a403fd-ce7c-4ecc-820d-3f1718e79119') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('慨', 'N2', 'rue, be sad, sigh, lament', 'Khái', ARRAY['ガイ'], ARRAY['なげ.く'], 13, '1659d447-8145-42d3-8262-2d05cea9f834') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('概', 'N2', 'outline, condition, approximation, generally', 'Khái', ARRAY['ガイ'], ARRAY['おおむ.ね'], 14, '80c53d4a-31b5-442f-be48-5d1b64972fae') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('涯', 'N2', 'horizon, shore, limit, bound', 'Nhai', ARRAY['ガイ'], ARRAY['はて'], 11, '10673667-6c56-413d-bbd5-a48794fb7725') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('街', 'N2', 'boulevard, street, town', 'Nhai', ARRAY['ガイ','カイ'], ARRAY['まち'], 12, '837ea248-33b4-4366-9517-d190cc876855') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('該', 'N2', 'above-stated, the said, that specific', 'Cai', ARRAY['ガイ'], NULL, 13, '7fd47228-ad16-439a-8685-ad9cacdeb95e') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('馨', 'N2', 'fragrant, balmy, favourable', 'Hinh', ARRAY['ケイ','キョウ'], ARRAY['かお.る','かおり'], 20, '51dd4b53-71b3-4a03-9c1c-0c0f58befe39') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('垣', 'N2', 'hedge, fence, wall', 'Viên', ARRAY['エン'], ARRAY['かき'], 9, '2fd61440-db3f-4cd5-8101-9e74019df262') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('嚇', 'N2', 'menacing, dignity, majesty, threaten', 'Hách', ARRAY['カク'], ARRAY['おど.す'], 17, 'a54e08f0-b1f4-49b0-bdcd-1fcfab9f5eb7') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('各', 'N3', 'each, every, either', 'Các', ARRAY['カク'], ARRAY['おのおの'], 6, 'a54e08f0-b1f4-49b0-bdcd-1fcfab9f5eb7') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('拡', 'N3', 'broaden, extend, expand, enlarge', 'Khuếch', ARRAY['カク','コウ'], ARRAY['ひろ.がる','ひろ.げる','ひろ.める'], 8, 'eaca9807-b2da-4d99-8585-13d429ea249d') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('格', 'N3', 'status, rank, capacity, character, case (law, grammar)', 'Cách, Các', ARRAY['カク','コウ','キャク','ゴウ'], NULL, 10, '80c53d4a-31b5-442f-be48-5d1b64972fae') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('核', 'N2', 'nucleus, core, kernel', 'Hạch', ARRAY['カク'], NULL, 10, '80c53d4a-31b5-442f-be48-5d1b64972fae') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('殻', 'N2', 'husk, nut shell', 'Xác', ARRAY['カク','コク','バイ'], ARRAY['から','がら'], 11, '6d0baa7b-8a58-4bf8-915f-3a6f6c134440') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('獲', 'N2', 'seize, get, find, earn, acquire, can, may, able to', 'Hoạch', ARRAY['カク'], ARRAY['え.る'], 16, '060e9144-2828-4302-b284-f6ac8ea6ae51') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('確', 'N3', 'assurance, firm, tight, hard, solid, confirm, clear, evident', 'Xác', ARRAY['カク','コウ'], ARRAY['たし.か','たし.かめる'], 15, 'c3bb7570-e8b9-49cc-bf56-90e74165d503') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('穫', 'N2', 'harvest, reap', 'Hoạch', ARRAY['カク'], NULL, 18, '18d824dd-4b06-48c0-9e40-ff5132c75dc9') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('覚', 'N3', 'memorize, learn, remember, awake, sober up', 'Giác, Giáo, Dác', ARRAY['カク'], ARRAY['おぼ.える','さ.ます','さ.める','さと.る'], 12, 'd260f2a4-eacb-4447-97ac-2ef7518f6af8') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('角', 'N3', 'angle, corner, square, horn, antlers', 'Giác, Giốc', ARRAY['カク'], ARRAY['かど','つの'], 7, '0e7ac1f1-7052-42b6-add7-9104991a8454') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('較', 'N3', 'contrast, compare', 'Giác, Giếu, Giảo', ARRAY['カク','コウ'], ARRAY['くら.べる'], 13, '869f4859-e3d9-4a6a-8839-d1bf7a715a34') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('郭', 'N2', 'enclosure, quarters, fortification, red-light district', 'Quách', ARRAY['カク'], ARRAY['くるわ'], 11, '57b67155-4755-4cbd-8c34-1edf3d4cb815') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('閣', 'N2', 'tower, tall building, palace', 'Các', ARRAY['カク'], NULL, 14, 'fc1908d4-7e1d-4e55-b1df-72e159f91868') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('隔', 'N2', 'isolate, alternate, distance, separate, gulf', 'Cách', ARRAY['カク'], ARRAY['へだ.てる','へだ.たる'], 13, 'b85628b0-3f6a-420a-91c7-0cfbd5055459') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('革', 'N3', 'leather, skin, reform, become serious', 'Cách, Cức', ARRAY['カク'], ARRAY['かわ'], 9, '028285ca-9803-452a-96d9-d2888c20491d') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('学', 'N5', 'study, learning, science', 'Học', ARRAY['ガク'], ARRAY['まな.ぶ'], 8, '7c3ff4e1-b8e9-4c25-ba10-0fbf8198a71d') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('岳', 'N2', 'point, peak, mountain', 'Nhạc', ARRAY['ガク'], ARRAY['たけ'], 8, 'a2f58e0e-c558-4282-80ff-1d8088c5f250') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('楽', 'N4', 'music, comfort, ease', 'Lạc, Nhạc', ARRAY['ガク','ラク','ゴウ'], ARRAY['たの.しい','たの.しむ','この.む'], 13, '80c53d4a-31b5-442f-be48-5d1b64972fae') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('額', 'N3', 'forehead, tablet, plaque, framed picture, sum, amount, volume', 'Ngạch', ARRAY['ガク'], ARRAY['ひたい'], 18, 'be4fe89f-bae1-4238-8aad-4789348c0e13') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('掛', 'N2', 'hang, suspend, depend, arrive at, tax, pour', 'Quải', ARRAY['カイ','ケイ'], ARRAY['か.ける','-か.ける','か.け','-か.け','-が.け','か.かる','-か.かる','-が.かる','か.かり','-が.かり','かかり','-がかり'], 11, 'eaca9807-b2da-4d99-8585-13d429ea249d') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('潟', 'N2', 'lagoon', 'Tích', ARRAY['セキ'], ARRAY['かた','-がた'], 15, '10673667-6c56-413d-bbd5-a48794fb7725') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('割', 'N3', 'proportion, comparatively, divide, cut, separate, split', 'Cát', ARRAY['カツ'], ARRAY['わ.る','わり','わ.り','わ.れる','さ.く'], 12, 'bc6a1cef-e769-454c-a64f-910a5e1b5d74') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('喝', 'N2', 'hoarse, scold', 'Hát, Ới', ARRAY['カツ'], NULL, 11, 'a54e08f0-b1f4-49b0-bdcd-1fcfab9f5eb7') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('括', 'N2', 'fasten, tie up, arrest, constrict', 'Quát, Hoạt', ARRAY['カツ'], ARRAY['くく.る'], 9, 'eaca9807-b2da-4d99-8585-13d429ea249d') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('活', 'N3', 'lively, resuscitation, being helped, living', 'Hoạt, Quạt', ARRAY['カツ'], ARRAY['い.きる','い.かす','い.ける'], 9, '10673667-6c56-413d-bbd5-a48794fb7725') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('渇', 'N2', 'thirst, dry up, parch', 'Khát', ARRAY['カツ'], ARRAY['かわ.く'], 11, '10673667-6c56-413d-bbd5-a48794fb7725') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('滑', 'N2', 'slippery, slide, slip, fail exam', 'Hoạt, Cốt', ARRAY['カツ','コツ'], ARRAY['すべ.る','なめ.らか'], 13, '10673667-6c56-413d-bbd5-a48794fb7725') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('褐', 'N2', 'brown, woollen kimono', 'Hạt, Cát', ARRAY['カツ'], NULL, 13, '9c5b95cd-6590-4a03-8c61-a68c80da3c8c') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('轄', 'N2', 'control, wedge', 'Hạt', ARRAY['カツ'], ARRAY['くさび'], 17, '869f4859-e3d9-4a6a-8839-d1bf7a715a34') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('且', 'N2', 'moreover, also, furthermore', 'Thả, Thư', ARRAY['ショ','ソ','ショウ'], ARRAY['か.つ'], 5, '12f0d122-51f5-4c55-8a67-d3fc53818027') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('叶', 'N2', 'grant, answer', 'Hiệp', ARRAY['キョウ'], ARRAY['かな.える','かな.う'], 5, 'a54e08f0-b1f4-49b0-bdcd-1fcfab9f5eb7') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('樺', 'N2', 'birch, dark red', 'Hoa', ARRAY['カ'], ARRAY['かば','かんば'], 14, '80c53d4a-31b5-442f-be48-5d1b64972fae') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('株', 'N2', 'stocks, stump, shares, stock, counter for small plants', 'Chu, Châu', ARRAY['シュ'], ARRAY['かぶ'], 10, '80c53d4a-31b5-442f-be48-5d1b64972fae') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('鎌', 'N2', 'sickle, scythe, trick', 'Liêm', ARRAY['レン','ケン'], ARRAY['かま'], 18, 'c3b48b38-6414-47f2-a7ac-d72a85c0e35a') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('茅', 'N2', 'miscanthus reed', 'Mao', ARRAY['ボウ','ミョウ'], ARRAY['かや','ちがや'], 8, '25c57eec-88fa-4e6e-95a2-9ba83b5f4246') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('刈', 'N2', 'reap, cut, clip, trim, prune', 'Ngải', ARRAY['ガイ','カイ'], ARRAY['か.る'], 4, 'bc6a1cef-e769-454c-a64f-910a5e1b5d74') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('乾', 'N3', 'drought, dry, desiccate, drink up, heaven, emperor', 'Kiền, Can', ARRAY['カン','ケン'], ARRAY['かわ.く','かわ.かす','ほ.す','ひ.る','いぬい'], 11, '4721cf9b-ec7a-4029-8f61-3f80cc4d64fb') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('侃', 'N2', 'strong, just, righteous, peace-loving', 'Khản', ARRAY['カン'], ARRAY['つよ.い'], 8, '78419994-196d-4445-8165-a6029d33a0ff') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('冠', 'N2', 'crown, best, peerless', 'Quan, Quán', ARRAY['カン'], ARRAY['かんむり'], 9, 'c89ec13a-4b2a-4c3d-9167-10f209666df4') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('寒', 'N4', 'cold', 'Hàn', ARRAY['カン'], ARRAY['さむ.い'], 12, '66a403fd-ce7c-4ecc-820d-3f1718e79119') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('刊', 'N3', 'publish, carve, engrave', 'Khan, San', ARRAY['カン'], NULL, 5, 'bc6a1cef-e769-454c-a64f-910a5e1b5d74') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('勘', 'N2', 'intuition, perception, check, compare, sixth sense', 'Khám', ARRAY['カン'], NULL, 11, 'd9107ec4-ea5d-4a21-bacd-ffca462b29dd') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('勧', 'N2', 'persuade, recommend, advise, encourage, offer', 'Khuyến', ARRAY['カン','ケン'], ARRAY['すす.める'], 13, 'd9107ec4-ea5d-4a21-bacd-ffca462b29dd') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('巻', 'N3', 'scroll, volume, book, part, roll up, wind up, tie, coil, counter for texts (or book scrolls)', 'Quyển', ARRAY['カン','ケン'], ARRAY['ま.く','まき','ま.き'], 9, 'afc445ef-54dd-45a9-86b5-d01fbec09f75') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('喚', 'N2', 'yell, cry, call, scream, summon', 'Hoán', ARRAY['カン'], ARRAY['わめ.く'], 12, 'a54e08f0-b1f4-49b0-bdcd-1fcfab9f5eb7') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('堪', 'N2', 'withstand, endure, support, resist', 'Kham', ARRAY['カン','タン'], ARRAY['た.える','たま.る','こら.える','こた.える'], 12, '2fd61440-db3f-4cd5-8101-9e74019df262') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('完', 'N3', 'perfect, completion, end', 'Hoàn', ARRAY['カン'], NULL, 7, '66a403fd-ce7c-4ecc-820d-3f1718e79119') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('官', 'N3', 'bureaucrat, the government, organ', 'Quan', ARRAY['カン'], NULL, 8, '66a403fd-ce7c-4ecc-820d-3f1718e79119') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('寛', 'N2', 'tolerant, leniency, generosity, relax, feel at home, be at ease, broadminded', 'Khoan', ARRAY['カン'], ARRAY['くつろ.ぐ','ひろ.い','ゆる.やか'], 13, '66a403fd-ce7c-4ecc-820d-3f1718e79119') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('干', 'N3', 'dry, parch, ebb, recede, interfere, intercede', 'Can', ARRAY['カン'], ARRAY['ほ.す','ほ.し-','-ぼ.し','ひ.る'], 3, '8abb0e5e-778e-44fc-b6a7-9581999b661c') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('幹', 'N2', 'tree trunk, main part, talent, capability', 'Cán', ARRAY['カン'], ARRAY['みき'], 13, '8abb0e5e-778e-44fc-b6a7-9581999b661c') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('患', 'N2', 'afflicted, disease, suffer from, be ill', 'Hoạn', ARRAY['カン'], ARRAY['わずら.う'], 11, '1659d447-8145-42d3-8262-2d05cea9f834') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('感', 'N3', 'emotion, feeling, sensation', 'Cảm', ARRAY['カン'], NULL, 13, '1659d447-8145-42d3-8262-2d05cea9f834') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('慣', 'N3', 'accustomed, get used to, become experienced', 'Quán', ARRAY['カン'], ARRAY['な.れる','な.らす'], 14, '1659d447-8145-42d3-8262-2d05cea9f834') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('憾', 'N2', 'remorse, regret, be sorry', 'Hám', ARRAY['カン'], ARRAY['うら.む'], 16, '1659d447-8145-42d3-8262-2d05cea9f834') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('換', 'N3', 'interchange, period, change, convert, replace, renew', 'Hoán', ARRAY['カン'], ARRAY['か.える','-か.える','か.わる'], 12, 'eaca9807-b2da-4d99-8585-13d429ea249d') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('敢', 'N2', 'daring, brave, bold, sad, tragic, pitiful', 'Cảm', ARRAY['カン'], ARRAY['あ.えて','あ.えない','あ.えず'], 12, 'b62aa3f5-bcc4-4c24-944d-b02f3fbb5499') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('棺', 'N2', 'coffin, casket', 'Quan, Quán', ARRAY['カン'], NULL, 12, '80c53d4a-31b5-442f-be48-5d1b64972fae') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('款', 'N2', 'goodwill, article, section, friendship, collusion', 'Khoản', ARRAY['カン'], NULL, 12, '96d875ed-5269-427a-b3ca-828933e753fc') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('歓', 'N2', 'delight, joy', 'Hoan', ARRAY['カン'], ARRAY['よろこ.ぶ'], 15, '96d875ed-5269-427a-b3ca-828933e753fc') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('汗', 'N3', 'sweat, perspire', 'Hãn, Hàn', ARRAY['カン'], ARRAY['あせ'], 6, '10673667-6c56-413d-bbd5-a48794fb7725') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('漢', 'N4', 'Sino-, China', 'Hán', ARRAY['カン'], NULL, 13, '10673667-6c56-413d-bbd5-a48794fb7725') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('環', 'N3', 'ring, circle, loop', 'Hoàn', ARRAY['カン'], ARRAY['わ'], 17, '1450b570-89aa-4b1c-9e48-32bc25298929') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('甘', 'N3', 'sweet, coax, pamper, be content, sugary', 'Cam', ARRAY['カン'], ARRAY['あま.い','あま.える','あま.やかす','うま.い'], 5, 'b582cd8d-e0d8-47f5-bd14-b1bba51e8a93') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('監', 'N2', 'oversee, official, govt office, rule, administer', 'Giam, Giám', ARRAY['カン'], NULL, 15, '12bd4f5a-a4fb-451b-b25d-418406c683fa') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('看', 'N3', 'watch over, see', 'Khán', ARRAY['カン'], ARRAY['み.る'], 9, 'eeeb0778-60ee-4882-b7a5-d6e12279fade') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('管', 'N3', 'pipe, tube, wind instrument, drunken talk, control, jurisdiction', 'Quản', ARRAY['カン'], ARRAY['くだ'], 14, 'da702964-289f-443e-995f-0f7c0d2a57f3') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('簡', 'N3', 'simplicity, brevity', 'Giản', ARRAY['カン','ケン'], ARRAY['えら.ぶ','ふだ'], 18, 'da702964-289f-443e-995f-0f7c0d2a57f3') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('緩', 'N2', 'slacken, loosen, relax, lessen, be moderate, ease', 'Hoãn', ARRAY['カン'], ARRAY['ゆる.い','ゆる.やか','ゆる.む','ゆる.める'], 15, '2d4eb76f-4fae-4d05-855c-2520845188ed') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('缶', 'N2', 'tin can, container, jar radical (no. 121)', 'Phữu, Phẫu, Phũ', ARRAY['カン'], ARRAY['かま'], 6, '3e2b9fa8-ee56-4308-9750-641d165aff77') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('肝', 'N2', 'liver, pluck, nerve, chutzpah', 'Can', ARRAY['カン'], ARRAY['きも'], 7, '71cc2465-f238-4f52-b9e3-39f8f95caaba') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('艦', 'N2', 'warship', 'Hạm', ARRAY['カン'], NULL, 21, 'c2814223-66bf-4fde-bf2e-3b95fa5d206c') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('莞', 'N2', 'smiling, reed used to cover tatami', 'Hoàn, Hoản', ARRAY['カン'], ARRAY['い'], 10, '25c57eec-88fa-4e6e-95a2-9ba83b5f4246') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('観', 'N3', 'outlook, look, appearance, condition, view', 'Quan, Quán', ARRAY['カン'], ARRAY['み.る','しめ.す'], 18, 'd260f2a4-eacb-4447-97ac-2ef7518f6af8') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('貫', 'N2', 'pierce, 8 1/3lbs, penetrate, brace', 'Quán', ARRAY['カン'], ARRAY['つらぬ.く','ぬ.く','ぬき'], 11, '0cb16105-d4c3-4534-9e4e-0eecbad15787') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('還', 'N2', 'send back, return', 'Hoàn, Toàn', ARRAY['カン'], ARRAY['かえ.る'], 16, '371180fe-c78a-477d-b628-86c3e88e03f1') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('鑑', 'N2', 'specimen, take warning from, learn from', 'Giám', ARRAY['カン'], ARRAY['かんが.みる','かがみ'], 23, 'c3b48b38-6414-47f2-a7ac-d72a85c0e35a') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('間', 'N5', 'interval, space', 'Gian', ARRAY['カン','ケン'], ARRAY['あいだ','ま','あい'], 12, 'fc1908d4-7e1d-4e55-b1df-72e159f91868') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('閑', 'N2', 'leisure', 'Nhàn', ARRAY['カン'], NULL, 12, 'fc1908d4-7e1d-4e55-b1df-72e159f91868') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('関', 'N3', 'connection, barrier, gateway, involve, concerning', 'Quan', ARRAY['カン'], ARRAY['せき','-ぜき','かか.わる','からくり','かんぬき'], 14, 'fc1908d4-7e1d-4e55-b1df-72e159f91868') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('陥', 'N2', 'collapse, fall into, cave in, fall (castle), slide into', 'Hầm', ARRAY['カン'], ARRAY['おちい.る','おとしい.れる'], 10, 'b85628b0-3f6a-420a-91c7-0cfbd5055459') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('館', 'N4', 'building, mansion, large building, palace', 'Quán', ARRAY['カン'], ARRAY['やかた','たて'], 16, '575f81b8-d9ab-421e-ac61-7d25cf8751da') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('丸', 'N3', 'round, full (month), perfection, -ship, pills, make round, roll up, curl up, seduce, explain away', 'Hoàn', ARRAY['ガン'], ARRAY['まる','まる.める','まる.い'], 3, '535f1b45-76eb-4e2f-9bc7-16a2ef38515c') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('含', 'N3', 'contain, include, hold in the mouth, bear in mind, understand, cherish', 'Hàm', ARRAY['ガン'], ARRAY['ふく.む','ふく.める'], 7, 'a54e08f0-b1f4-49b0-bdcd-1fcfab9f5eb7') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('岸', 'N3', 'beach', 'Ngạn', ARRAY['ガン'], ARRAY['きし'], 8, 'a2f58e0e-c558-4282-80ff-1d8088c5f250') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('巌', 'N2', 'rock, crag, boulder', 'Nham', ARRAY['ガン'], ARRAY['いわ','いわお','けわ.しい'], 20, 'a2f58e0e-c558-4282-80ff-1d8088c5f250') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('眼', 'N2', 'eyeball', 'Nhãn', ARRAY['ガン','ゲン'], ARRAY['まなこ','め'], 11, 'eeeb0778-60ee-4882-b7a5-d6e12279fade') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('岩', 'N3', 'boulder, rock, cliff', 'Nham', ARRAY['ガン'], ARRAY['いわ'], 8, 'a2f58e0e-c558-4282-80ff-1d8088c5f250') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('頑', 'N2', 'stubborn, foolish, firmly', 'Ngoan', ARRAY['ガン'], ARRAY['かたく.な'], 13, 'be4fe89f-bae1-4238-8aad-4789348c0e13') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('顔', 'N4', 'face, expression', 'Nhan, Nhăn', ARRAY['ガン'], ARRAY['かお'], 18, 'be4fe89f-bae1-4238-8aad-4789348c0e13') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('願', 'N3', 'petition, request, vow, wish, hope', 'Nguyện', ARRAY['ガン'], ARRAY['ねが.う','-ねがい'], 19, 'be4fe89f-bae1-4238-8aad-4789348c0e13') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('企', 'N2', 'undertake, scheme, design, attempt, plan', 'Xí', ARRAY['キ'], ARRAY['くわだ.てる','たくら.む'], 6, '78419994-196d-4445-8165-a6029d33a0ff') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('伎', 'N2', 'deed, skill', 'Kỹ', ARRAY['ギ','キ'], ARRAY['わざ','わざおぎ'], 6, '78419994-196d-4445-8165-a6029d33a0ff') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('危', 'N3', 'dangerous, fear, uneasy', 'Nguy', ARRAY['キ'], ARRAY['あぶ.ない','あや.うい','あや.ぶむ'], 6, 'd88fdf4e-6084-471d-ac31-64ddac58a407') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('喜', 'N3', 'rejoice, take pleasure in', 'Hỉ, Hí', ARRAY['キ'], ARRAY['よろこ.ぶ','よろこ.ばす'], 12, 'a54e08f0-b1f4-49b0-bdcd-1fcfab9f5eb7') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('器', 'N3', 'utensil, vessel, receptacle, implement, instrument, ability, container, tool, set', 'Khí', ARRAY['キ'], ARRAY['うつわ'], 15, 'a54e08f0-b1f4-49b0-bdcd-1fcfab9f5eb7') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('基', 'N3', 'fundamentals, radical (chem), counter for machines, foundation', 'Cơ', ARRAY['キ'], ARRAY['もと','もとい'], 11, '2fd61440-db3f-4cd5-8101-9e74019df262') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('奇', 'N2', 'strange, strangeness, curiosity', 'Kì, Cơ', ARRAY['キ'], ARRAY['く.しき','あや.しい','くし','めずら.しい'], 8, '457c9d33-f2d9-4f61-bca8-910ce7ade194') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('嬉', 'N2', 'glad, pleased, rejoice', 'Hi', ARRAY['キ'], ARRAY['うれ.しい','たの.しむ'], 15, '2b2beef1-465e-418b-9883-672cd0e0a712') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('寄', 'N3', 'draw near, stop in, bring near, gather, collect, send, forward', 'Kí', ARRAY['キ'], ARRAY['よ.る','-よ.り','よ.せる'], 11, '66a403fd-ce7c-4ecc-820d-3f1718e79119') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('岐', 'N2', 'branch off, fork in road, scene, arena, theater', 'Kì', ARRAY['キ','ギ'], NULL, 7, 'a2f58e0e-c558-4282-80ff-1d8088c5f250') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('希', 'N3', 'hope, beg, request, pray, beseech, Greece, dilute (acid), rare, few, phenomenal', 'Hy', ARRAY['キ','ケ'], ARRAY['まれ','こいねが.う'], 7, 'c3c77b72-afa6-4b3f-acd2-b9a7f991cf53') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('幾', 'N2', 'how many, how much, how far, how long, some, several', 'Ki, Kỉ, Kí', ARRAY['キ'], ARRAY['いく-','いく.つ','いく.ら'], 12, '855bcd0d-8692-4d72-8952-d16179ecf58f') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('忌', 'N2', 'mourning, abhor, detestable, death anniversary', 'Kị, Kí', ARRAY['キ'], ARRAY['い.む','い.み','い.まわしい'], 7, '1659d447-8145-42d3-8262-2d05cea9f834') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('揮', 'N2', 'brandish, wave, wag, swing, shake', 'Huy', ARRAY['キ'], ARRAY['ふる.う'], 12, 'eaca9807-b2da-4d99-8585-13d429ea249d') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('机', 'N3', 'desk, table', 'Cơ, Ki, Kỉ, Ky, Kỷ', ARRAY['キ'], ARRAY['つくえ'], 6, '80c53d4a-31b5-442f-be48-5d1b64972fae') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('旗', 'N2', 'flag, banner, standard', 'Kỳ', ARRAY['キ'], ARRAY['はた'], 14, '816fcd71-fef2-4808-a4c6-60bc531d2d01') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('既', 'N2', 'previously, already, long ago', 'Kí, Ký, Dĩ', ARRAY['キ'], ARRAY['すで.に'], 10, '796d189c-dad1-4566-b246-1a7519871d2c') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('期', 'N3', 'period, time, date, term', 'Kỳ, Ky', ARRAY['キ','ゴ'], NULL, 12, 'a55eee17-b099-4cb3-810a-0a4c9dbc7ea9') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('棋', 'N2', 'chess piece, Japanese chess, shogi', 'Kỳ, Kí', ARRAY['キ'], ARRAY['ご'], 12, '80c53d4a-31b5-442f-be48-5d1b64972fae') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('棄', 'N2', 'abandon, throw away, discard, resign, reject, sacrifice', 'Khí', ARRAY['キ'], ARRAY['す.てる'], 13, '80c53d4a-31b5-442f-be48-5d1b64972fae') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('機', 'N3', 'loom, mechanism, machine, airplane, opportunity, potency, efficacy, occasion', 'Ky, Cơ', ARRAY['キ'], ARRAY['はた'], 16, '80c53d4a-31b5-442f-be48-5d1b64972fae') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('帰', 'N4', 'homecoming, arrive at, lead to, result in', 'Quy', ARRAY['キ'], ARRAY['かえ.る','かえ.す','おく.る','とつ.ぐ'], 10, 'c3c77b72-afa6-4b3f-acd2-b9a7f991cf53') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('毅', 'N2', 'strong', 'Nghị', ARRAY['キ','ギ'], ARRAY['つよ.い'], 15, '6d0baa7b-8a58-4bf8-915f-3a6f6c134440') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('気', 'N5', 'spirit, mind, air, atmosphere, mood', 'Khí', ARRAY['キ','ケ'], ARRAY['いき','き'], 6, '5a75f57a-fc86-49e6-903a-e35ce3272896') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('汽', 'N2', 'vapor, steam', 'Khí', ARRAY['キ'], NULL, 7, '10673667-6c56-413d-bbd5-a48794fb7725') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('祈', 'N3', 'pray, wish', 'Kì', ARRAY['キ'], ARRAY['いの.る'], 8, 'aa655283-0fb9-4ae0-a339-aa1437f00ad1') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('季', 'N3', 'seasons', 'Quý', ARRAY['キ'], NULL, 8, '7c3ff4e1-b8e9-4c25-ba10-0fbf8198a71d') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('稀', 'N2', 'rare, phenomenal, dilute (acid)', 'Hi', ARRAY['キ','ケ'], ARRAY['まれ','まばら'], 12, '18d824dd-4b06-48c0-9e40-ff5132c75dc9') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('紀', 'N2', 'chronicle, account, narrative, history, annals, geologic period', 'Kỉ', ARRAY['キ'], NULL, 9, '2d4eb76f-4fae-4d05-855c-2520845188ed') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('規', 'N3', 'standard, measure', 'Quy', ARRAY['キ'], NULL, 11, 'd260f2a4-eacb-4447-97ac-2ef7518f6af8') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('記', 'N3', 'scribe, account, narrative', 'Kí', ARRAY['キ'], ARRAY['しる.す'], 10, '7fd47228-ad16-439a-8685-ad9cacdeb95e') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('貴', 'N2', 'precious, value, prize, esteem, honor', 'Quý', ARRAY['キ'], ARRAY['たっと.い','とうと.い','たっと.ぶ','とうと.ぶ'], 12, '0cb16105-d4c3-4534-9e4e-0eecbad15787') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('起', 'N4', 'rouse, wake up, get up', 'Khởi', ARRAY['キ'], ARRAY['お.きる','お.こる','お.こす','おこ.す','た.つ'], 10, '432fb72b-e9d0-4c51-981a-ebec3d1c1488') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('軌', 'N2', 'rut, wheel, track, model, way of doing', 'Quỹ', ARRAY['キ'], NULL, 9, '869f4859-e3d9-4a6a-8839-d1bf7a715a34') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('輝', 'N2', 'radiance, shine, sparkle, gleam, twinkle', 'Huy', ARRAY['キ'], ARRAY['かがや.く'], 15, '869f4859-e3d9-4a6a-8839-d1bf7a715a34') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('飢', 'N2', 'hungry, starve', 'Cơ', ARRAY['キ'], ARRAY['う.える'], 10, '575f81b8-d9ab-421e-ac61-7d25cf8751da') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('騎', 'N2', 'equestrian, riding on horses, counter for equestrians', 'Kị', ARRAY['キ'], NULL, 18, 'd7bb7ac5-d329-47fc-981a-3b2bc480c688') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('鬼', 'N2', 'ghost, devil', 'Quỷ', ARRAY['キ'], ARRAY['おに','おに-'], 10, '768dd18f-b077-4421-bb5c-32535db0cd4b') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('亀', 'N2', 'tortoise, turtle', 'Quy, Qui', ARRAY['キ','キュウ','キン'], ARRAY['かめ'], 11, '4721cf9b-ec7a-4029-8f61-3f80cc4d64fb') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('偽', 'N2', 'falsehood, lie, deceive, pretend, counterfeit, forgery', 'Ngụy', ARRAY['ギ','カ'], ARRAY['いつわ.る','にせ','いつわ.り'], 11, '78419994-196d-4445-8165-a6029d33a0ff') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('儀', 'N2', 'ceremony, rule, affair, case, a matter', 'Nghi', ARRAY['ギ'], NULL, 15, '78419994-196d-4445-8165-a6029d33a0ff') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('宜', 'N2', 'best regards, good', 'Nghi', ARRAY['ギ'], ARRAY['よろ.しい','よろ.しく'], 8, '66a403fd-ce7c-4ecc-820d-3f1718e79119') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('戯', 'N2', 'frolic, play, sport', 'Hí, Hý, Hé, Nghí', ARRAY['ギ','ゲ'], ARRAY['たわむ.れる','ざ.れる','じゃ.れる'], 15, '05e52f9b-ed68-4ba8-8ccd-b22e4b8860b4') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('技', 'N3', 'skill, art, craft, ability, feat, performance, vocation, arts', 'Kĩ', ARRAY['ギ'], ARRAY['わざ'], 7, 'eaca9807-b2da-4d99-8585-13d429ea249d') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('擬', 'N2', 'mimic, aim (a gun) at, nominate, imitate', 'Nghĩ', ARRAY['ギ'], ARRAY['まが.い','もど.き'], 17, 'eaca9807-b2da-4d99-8585-13d429ea249d') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('欺', 'N2', 'deceit, cheat, delude', 'Khi', ARRAY['ギ'], ARRAY['あざむ.く'], 12, '96d875ed-5269-427a-b3ca-828933e753fc') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('犠', 'N2', 'sacrifice', 'Nghé', ARRAY['ギ','キ'], ARRAY['いけにえ'], 17, 'a55bbf5a-1ffc-48ef-909c-6b366c2d8398') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('疑', 'N3', 'doubt, distrust, be suspicious, question', 'Nghi', ARRAY['ギ'], ARRAY['うたが.う'], 14, '9089f172-af07-4bde-9932-425b9fda9d0d') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('義', 'N2', 'righteousness, justice, morality, honor, loyalty, meaning', 'Nghĩa', ARRAY['ギ'], NULL, 13, 'e438596e-f3e0-4bb3-9396-bcebdb382fd7') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('誼', 'N2', 'friendship, intimacy', 'Nghị', ARRAY['ギ'], ARRAY['よしみ','よい'], 15, '7fd47228-ad16-439a-8685-ad9cacdeb95e') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('議', 'N3', 'deliberation, consultation, debate, consideration', 'Nghị', ARRAY['ギ'], NULL, 20, '7fd47228-ad16-439a-8685-ad9cacdeb95e') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('菊', 'N2', 'chrysanthemum', 'Cúc', ARRAY['キク'], NULL, 11, '25c57eec-88fa-4e6e-95a2-9ba83b5f4246') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('鞠', 'N2', 'ball', 'Cúc', ARRAY['キク','キュウ'], ARRAY['まり'], 17, '028285ca-9803-452a-96d9-d2888c20491d') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('吉', 'N2', 'good luck, joy, congratulations', 'Cát', ARRAY['キチ','キツ'], ARRAY['よし'], 6, 'a54e08f0-b1f4-49b0-bdcd-1fcfab9f5eb7') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('喫', 'N3', 'consume, eat, drink, smoke, receive (a blow)', 'Khiết', ARRAY['キツ'], ARRAY['の.む'], 12, 'a54e08f0-b1f4-49b0-bdcd-1fcfab9f5eb7') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('橘', 'N2', 'mandarin orange', 'Quất', ARRAY['キツ'], ARRAY['たちばな'], 16, '80c53d4a-31b5-442f-be48-5d1b64972fae') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('詰', 'N3', 'packed, close, pressed, reprove, rebuke, blame', 'Cật', ARRAY['キツ','キチ'], ARRAY['つ.める','つ.め','-づ.め','つ.まる','つ.む'], 13, '7fd47228-ad16-439a-8685-ad9cacdeb95e') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('却', 'N2', 'instead, on the contrary, rather, step back, withdraw, retreat', 'Khước, Ngang, Tức', ARRAY['キャク'], ARRAY['かえ.って','しりぞ.く','しりぞ.ける'], 7, 'd88fdf4e-6084-471d-ac31-64ddac58a407') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('客', 'N3', 'guest, visitor, customer, client', 'Khách', ARRAY['キャク','カク'], NULL, 9, '66a403fd-ce7c-4ecc-820d-3f1718e79119') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('脚', 'N2', 'skids, leg, undercarriage, lower part, base', 'Cước', ARRAY['キャク','キャ','カク'], ARRAY['あし'], 11, '71cc2465-f238-4f52-b9e3-39f8f95caaba') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('虐', 'N2', 'tyrannize, oppress', 'Ngược', ARRAY['ギャク'], ARRAY['しいた.げる'], 9, '787bb4d8-bce5-4764-8c72-6c3cfb0ee9a7') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('逆', 'N3', 'inverted, reverse, opposite, wicked', 'Nghịch, Nghịnh', ARRAY['ギャク','ゲキ'], ARRAY['さか','さか.さ','さか.らう'], 9, '371180fe-c78a-477d-b628-86c3e88e03f1') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('丘', 'N2', 'hill, knoll', 'Khâu, Khiêu', ARRAY['キュウ'], ARRAY['おか'], 5, '12f0d122-51f5-4c55-8a67-d3fc53818027') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('久', 'N3', 'long time, old story', 'Cửu', ARRAY['キュウ','ク'], ARRAY['ひさ.しい'], 3, '34034105-e6f4-4bfd-b23a-7f4cb3d93010') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('休', 'N5', 'rest, day off, retire, sleep', 'Hưu', ARRAY['キュウ'], ARRAY['やす.む','やす.まる','やす.める'], 6, '78419994-196d-4445-8165-a6029d33a0ff') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('及', 'N2', 'reach out, exert, exercise, cause', 'Cập', ARRAY['キュウ'], ARRAY['およ.ぶ','およ.び','および','およ.ぼす'], 3, '6068ca21-fb74-4144-9b3d-7b93749eccdd') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('吸', 'N3', 'suck, imbibe, inhale, sip', 'Hấp', ARRAY['キュウ'], ARRAY['す.う'], 6, 'a54e08f0-b1f4-49b0-bdcd-1fcfab9f5eb7') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('宮', 'N2', 'Shinto shrine, constellations, palace, princess', 'Cung', ARRAY['キュウ','グウ','ク','クウ'], ARRAY['みや'], 10, '66a403fd-ce7c-4ecc-820d-3f1718e79119') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('弓', 'N2', 'bow, bow (archery, violin)', 'Cung', ARRAY['キュウ'], ARRAY['ゆみ'], 3, 'ad6d3726-634b-40d9-bc5a-538b879c95d5') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('急', 'N4', 'hurry, emergency, sudden, steep', 'Cấp', ARRAY['キュウ'], ARRAY['いそ.ぐ','いそ.ぎ','せ.く'], 9, '1659d447-8145-42d3-8262-2d05cea9f834') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('救', 'N3', 'salvation, save, help, rescue, reclaim', 'Cứu', ARRAY['キュウ'], ARRAY['すく.う'], 11, 'b62aa3f5-bcc4-4c24-944d-b02f3fbb5499') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('朽', 'N2', 'decay, rot, remain in seclusion', 'Hủ', ARRAY['キュウ'], ARRAY['く.ちる'], 6, '80c53d4a-31b5-442f-be48-5d1b64972fae') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('求', 'N3', 'request, want, wish for, require, demand', 'Cầu', ARRAY['キュウ','グ'], ARRAY['もと.める'], 7, '10673667-6c56-413d-bbd5-a48794fb7725') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('泣', 'N3', 'cry, weep, moan', 'Khấp', ARRAY['キュウ'], ARRAY['な.く'], 8, '10673667-6c56-413d-bbd5-a48794fb7725') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('球', 'N3', 'ball, sphere', 'Cầu', ARRAY['キュウ'], ARRAY['たま'], 11, '1450b570-89aa-4b1c-9e48-32bc25298929') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('究', 'N4', 'research, study', 'Cứu', ARRAY['キュウ','ク'], ARRAY['きわ.める'], 7, 'bff21635-eba6-4d8c-9cb9-99e227a4820a') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('窮', 'N2', 'hard up, destitute, suffer, perplexed, cornered', 'Cùng', ARRAY['キュウ','キョウ'], ARRAY['きわ.める','きわ.まる','きわ.まり','きわ.み'], 15, 'bff21635-eba6-4d8c-9cb9-99e227a4820a') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('級', 'N3', 'class, rank, grade', 'Cấp', ARRAY['キュウ'], NULL, 9, '2d4eb76f-4fae-4d05-855c-2520845188ed') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('糾', 'N2', 'twist, ask, investigate, verify', 'Củ, Kiểu', ARRAY['キュウ'], ARRAY['ただ.す'], 9, '2d4eb76f-4fae-4d05-855c-2520845188ed') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('給', 'N3', 'salary, wage, gift, allow, grant, bestow on', 'Cấp', ARRAY['キュウ'], ARRAY['たま.う','たも.う','-たま.え'], 12, '2d4eb76f-4fae-4d05-855c-2520845188ed') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('旧', 'N3', 'old times, old things, old friend, former, ex-', 'Cựu, Cậu', ARRAY['キュウ'], ARRAY['ふる.い','もと'], 5, 'b8af1855-8d69-4238-bc65-6925c1c993cd') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('牛', 'N4', 'cow', 'Ngưu', ARRAY['ギュウ'], ARRAY['うし'], 4, 'a55bbf5a-1ffc-48ef-909c-6b366c2d8398') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('去', 'N4', 'gone, past, quit, leave, elapse, eliminate, divorce', 'Khứ, Khu', ARRAY['キョ','コ'], ARRAY['さ.る','-さ.る'], 5, '6e625255-083f-41d7-9990-32ade10636bd') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('居', 'N3', 'reside, to be, exist, live with', 'Cư, Kí', ARRAY['キョ','コ'], ARRAY['い.る','-い','お.る'], 8, 'dbb1b9f0-b6d7-4c0b-989a-7a98ab167f37') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('巨', 'N3', 'gigantic, big, large, great', 'Cự, Há', ARRAY['キョ'], NULL, 5, '67ad0176-509d-4b25-8257-860164c92119') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('拒', 'N2', 'repel, refuse, reject, decline', 'Cự, Củ', ARRAY['キョ','ゴ'], ARRAY['こば.む'], 8, 'eaca9807-b2da-4d99-8585-13d429ea249d') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('拠', 'N2', 'foothold, based on, follow, therefore', 'Cứ', ARRAY['キョ','コ'], ARRAY['よ.る'], 8, 'eaca9807-b2da-4d99-8585-13d429ea249d') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('挙', 'N2', 'raise, plan, project, behavior, actions', 'Cử, Gỡ, Gở', ARRAY['キョ'], ARRAY['あ.げる','あ.がる','こぞ.る'], 10, 'eaca9807-b2da-4d99-8585-13d429ea249d') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('虚', 'N2', 'void, emptiness, unpreparedness, crack, fissure, untruth', 'Hư, Khư, Hơ, Hử, Hự, Hưa, Khờ', ARRAY['キョ','コ'], ARRAY['むな.しい','うつ.ろ'], 11, '787bb4d8-bce5-4764-8c72-6c3cfb0ee9a7') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('許', 'N3', 'permit, approve', 'Hứa, Hử, Hổ', ARRAY['キョ'], ARRAY['ゆる.す','もと'], 11, '7fd47228-ad16-439a-8685-ad9cacdeb95e') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('距', 'N2', 'long-distance, spur, fetlock', 'Cự', ARRAY['キョ'], ARRAY['へだ.たる','けづめ'], 12, 'ad5f2a38-b774-4a9b-b3ff-2b2cb029cc51') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('漁', 'N3', 'fishing, fishery', 'Ngư', ARRAY['ギョ','リョウ'], ARRAY['あさ.る'], 14, '10673667-6c56-413d-bbd5-a48794fb7725') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('魚', 'N5', 'fish', 'Ngư', ARRAY['ギョ'], ARRAY['うお','さかな','-ざかな'], 11, '91b15cdf-2754-4848-bc73-b3d4589b39ad') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('亨', 'N2', 'pass through, go smoothly', 'Hanh, Hưởng, Phanh', ARRAY['コウ','キョウ','ホウ'], ARRAY['とお.る'], 7, '78591721-155a-4c67-999d-a331bb59ebb5') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('享', 'N2', 'enjoy, receive, undergo, answer (phone), take, get, catch', 'Hưởng', ARRAY['キョウ','コウ'], ARRAY['う.ける'], 8, '78591721-155a-4c67-999d-a331bb59ebb5') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('京', 'N4', 'capital, 10**16', 'Kinh', ARRAY['キョウ','ケイ','キン'], ARRAY['みやこ'], 8, '78591721-155a-4c67-999d-a331bb59ebb5') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('供', 'N3', 'submit, offer, present, serve (meal), accompany', 'Cung', ARRAY['キョウ','ク','クウ','グ'], ARRAY['そな.える','とも','-ども'], 8, '78419994-196d-4445-8165-a6029d33a0ff') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('競', 'N3', 'emulate, compete with, bid, sell at auction, bout, contest, race', 'Cạnh', ARRAY['キョウ','ケイ'], ARRAY['きそ.う','せ.る','くら.べる'], 20, '9cf1d21c-3259-43e2-9a76-3e9d37cefc02') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('共', 'N3', 'together, both, neither, all, and, alike, with', 'Cộng, Cung', ARRAY['キョウ'], ARRAY['とも','とも.に','-ども'], 6, '33938fa7-49b8-4856-a98e-5aff308f56f2') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('凶', 'N2', 'villain, evil, bad luck, disaster', 'Hung', ARRAY['キョウ'], NULL, 4, '2c241828-d32e-4d79-8fba-50c0b6fe9ab4') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('協', 'N3', 'co-, cooperation', 'Hiệp', ARRAY['キョウ'], NULL, 8, 'ac324fde-d736-479e-b9ae-c0f09a7f3091') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('匡', 'N2', 'correct, save, assist', 'Khuông', ARRAY['キョウ','オウ'], ARRAY['すく.う','ただ.す'], 6, '74a65e12-5580-4979-9fea-3710c62043fc') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('叫', 'N3', 'shout, exclaim, yell', 'Khiếu', ARRAY['キョウ'], ARRAY['さけ.ぶ'], 6, 'a54e08f0-b1f4-49b0-bdcd-1fcfab9f5eb7') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('喬', 'N2', 'high, boasting', 'Kiều', ARRAY['キョウ'], ARRAY['たか.い'], 12, 'a54e08f0-b1f4-49b0-bdcd-1fcfab9f5eb7') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('境', 'N3', 'boundary, border, region', 'Cảnh', ARRAY['キョウ','ケイ'], ARRAY['さかい'], 14, '2fd61440-db3f-4cd5-8101-9e74019df262') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('峡', 'N2', 'gorge, ravine', 'Giáp, Hạp, Hiệp, Kẽm', ARRAY['キョウ','コウ'], ARRAY['はざま'], 9, 'a2f58e0e-c558-4282-80ff-1d8088c5f250') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('強', 'N4', 'strong', 'Cường, Cưỡng, Càng, Cướng, Cượng, Gàn, Gàng, Gắng, Gương, Gượng, Ngượng', ARRAY['キョウ','ゴウ'], ARRAY['つよ.い','つよ.まる','つよ.める','し.いる','こわ.い'], 11, 'ad6d3726-634b-40d9-bc5a-538b879c95d5') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('恐', 'N3', 'fear, dread, awe', 'Khủng, Khúng', ARRAY['キョウ'], ARRAY['おそ.れる','おそ.る','おそ.ろしい','こわ.い','こわ.がる'], 10, '1659d447-8145-42d3-8262-2d05cea9f834') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('恭', 'N2', 'respect, reverent', 'Cung', ARRAY['キョウ'], ARRAY['うやうや.しい'], 10, '1659d447-8145-42d3-8262-2d05cea9f834') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('挟', 'N3', 'pinch, between', 'Cáp, Hiệp, Tiệp, Giáp', ARRAY['キョウ','ショウ'], ARRAY['はさ.む','はさ.まる','わきばさ.む','さしはさ.む'], 9, 'eaca9807-b2da-4d99-8585-13d429ea249d') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('教', 'N4', 'teach, faith, doctrine', 'Giáo', ARRAY['キョウ'], ARRAY['おし.える','おそ.わる'], 11, 'b62aa3f5-bcc4-4c24-944d-b02f3fbb5499') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('橋', 'N3', 'bridge', 'Kiều, Khiêu, Cao', ARRAY['キョウ'], ARRAY['はし'], 16, '80c53d4a-31b5-442f-be48-5d1b64972fae') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('況', 'N3', 'condition, situation', 'Huống', ARRAY['キョウ'], ARRAY['まし.て','いわ.んや','おもむき'], 8, '10673667-6c56-413d-bbd5-a48794fb7725') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('狂', 'N2', 'lunatic, insane, crazy, confuse', 'Cuồng', ARRAY['キョウ'], ARRAY['くる.う','くる.おしい','くるお.しい'], 7, '060e9144-2828-4302-b284-f6ac8ea6ae51') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('狭', 'N3', 'cramped, narrow, contract, tight', 'Hiệp, Hẹp', ARRAY['キョウ','コウ'], ARRAY['せま.い','せば.める','せば.まる','さ'], 9, '060e9144-2828-4302-b284-f6ac8ea6ae51') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('矯', 'N2', 'rectify, straighten, correct, reform, cure, control, pretend, falsify', 'Kiểu', ARRAY['キョウ'], ARRAY['た.める'], 17, 'b7deea42-61dd-4e35-a44c-25dd634fd02a') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('胸', 'N3', 'bosom, breast, chest, heart, feelings', 'Hung', ARRAY['キョウ'], ARRAY['むね','むな-'], 10, '71cc2465-f238-4f52-b9e3-39f8f95caaba') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('脅', 'N2', 'threaten, coerce', 'Hiếp', ARRAY['キョウ'], ARRAY['おびや.かす','おど.す','おど.かす'], 10, '71cc2465-f238-4f52-b9e3-39f8f95caaba') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('興', 'N2', 'entertain, revive, retrieve, interest, pleasure', 'Hưng, Hứng', ARRAY['コウ','キョウ'], ARRAY['おこ.る','おこ.す'], 16, '847c1560-358e-4bb1-b00f-d5f18cee8dfd') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('郷', 'N2', 'home town, village, native place, district', 'Hương', ARRAY['キョウ','ゴウ'], ARRAY['さと'], 11, '57b67155-4755-4cbd-8c34-1edf3d4cb815') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('鏡', 'N2', 'mirror, speculum, barrel-head, round rice-cake offering', 'Kính', ARRAY['キョウ','ケイ'], ARRAY['かがみ'], 19, 'c3b48b38-6414-47f2-a7ac-d72a85c0e35a') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('響', 'N2', 'echo, sound, resound, ring, vibrate', 'Hưởng', ARRAY['キョウ'], ARRAY['ひび.く'], 20, '0092c0a0-6030-49cc-bb87-2ed7f3e8d06a') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('驚', 'N2', 'wonder, be surprised, frightened, amazed', 'Kinh', ARRAY['キョウ'], ARRAY['おどろ.く','おどろ.かす'], 22, 'd7bb7ac5-d329-47fc-981a-3b2bc480c688') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('仰', 'N2', 'face-up, look up, depend, seek, respect, revere, drink, take', 'Ngưỡng, Nhạng', ARRAY['ギョウ','コウ'], ARRAY['あお.ぐ','おお.せ','お.っしゃる','おっしゃ.る'], 6, '78419994-196d-4445-8165-a6029d33a0ff') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('凝', 'N2', 'congeal, freeze, stiff, be absorbed in', 'Ngưng', ARRAY['ギョウ'], ARRAY['こ.る','こ.らす','こご.らす','こご.らせる','こご.る'], 16, '23a10182-2ed1-47fd-a83e-9381dcd8dfad') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('尭', 'N2', 'high, far', 'Nghiêu', ARRAY['ギョウ'], ARRAY['たか.い'], 8, '2fd61440-db3f-4cd5-8101-9e74019df262') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('暁', 'N2', 'daybreak, dawn, in the event', 'Hiếu', ARRAY['ギョウ','キョウ'], ARRAY['あかつき','さと.る'], 12, 'b8af1855-8d69-4238-bc65-6925c1c993cd') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('業', 'N4', 'business, vocation, arts, performance', 'Nghiệp', ARRAY['ギョウ','ゴウ'], ARRAY['わざ'], 13, '80c53d4a-31b5-442f-be48-5d1b64972fae') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('局', 'N3', 'bureau, board, office, affair, conclusion, court lady, lady-in-waiting, her apartment', 'Cục', ARRAY['キョク'], ARRAY['つぼね'], 7, 'dbb1b9f0-b6d7-4c0b-989a-7a98ab167f37') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('曲', 'N3', 'bend, music, melody, composition, pleasure, injustice, fault, curve, crooked, perverse, lean', 'Khúc', ARRAY['キョク'], ARRAY['ま.がる','ま.げる','くま'], 6, '124d252b-1dfb-4544-8e76-7327ba3e05c3') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('極', 'N3', 'extreme, pole, extremely, very, highly, most, end, settlement, conclusion, highest rank', 'Cực', ARRAY['キョク','ゴク'], ARRAY['きわ.める','きわ.まる','きわ.まり','きわ.み','き.める','-ぎ.め','き.まる'], 12, '80c53d4a-31b5-442f-be48-5d1b64972fae') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('玉', 'N3', 'jewel, ball', 'Ngọc, Túc', ARRAY['ギョク'], ARRAY['たま','たま-','-だま'], 5, '1450b570-89aa-4b1c-9e48-32bc25298929') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('桐', 'N2', 'paulownia', 'Đồng', ARRAY['トウ','ドウ'], ARRAY['きり'], 10, '80c53d4a-31b5-442f-be48-5d1b64972fae') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('勤', 'N3', 'diligence, become employed, serve', 'Cần', ARRAY['キン','ゴン'], ARRAY['つと.める','-づと.め','つと.まる','いそ.しむ'], 12, 'd9107ec4-ea5d-4a21-bacd-ffca462b29dd') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('均', 'N3', 'level, average', 'Quân, Vận', ARRAY['キン'], ARRAY['なら.す'], 7, '2fd61440-db3f-4cd5-8101-9e74019df262') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('錦', 'N2', 'brocade, fine dress, honors', 'Cẩm', ARRAY['キン'], ARRAY['にしき'], 16, 'c3b48b38-6414-47f2-a7ac-d72a85c0e35a') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('斤', 'N2', 'axe, 1.32 lb, catty, counter for loaves of bread, axe radical (no. 69)', 'Cân, Cấn', ARRAY['キン'], NULL, 4, 'ce2155c8-dac3-4d8d-8eba-ce37c06541f4') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('欣', 'N2', 'take pleasure in, rejoice', 'Hân', ARRAY['キン','ゴン','コン'], ARRAY['よろこ.ぶ','よろこ.び'], 8, '96d875ed-5269-427a-b3ca-828933e753fc') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('欽', 'N2', 'respect, revere, long for', 'Khâm', ARRAY['キン','コン'], ARRAY['つつし.む'], 12, '96d875ed-5269-427a-b3ca-828933e753fc') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('琴', 'N2', 'harp, koto', 'Cầm', ARRAY['キン','ゴン'], ARRAY['こと'], 12, '1450b570-89aa-4b1c-9e48-32bc25298929') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('禁', 'N3', 'prohibition, ban, forbid', 'Cấm, Câm', ARRAY['キン'], NULL, 13, 'aa655283-0fb9-4ae0-a339-aa1437f00ad1') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('筋', 'N2', 'muscle, sinew, tendon, fiber, plot, plan, descent', 'Cân', ARRAY['キン'], ARRAY['すじ'], 12, 'da702964-289f-443e-995f-0f7c0d2a57f3') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('緊', 'N2', 'tense, solid, hard, reliable, tight', 'Khẩn', ARRAY['キン'], ARRAY['し.める','し.まる'], 15, '2d4eb76f-4fae-4d05-855c-2520845188ed') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('芹', 'N2', 'parsley', 'Cần', ARRAY['キン'], ARRAY['せり'], 7, '25c57eec-88fa-4e6e-95a2-9ba83b5f4246') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('菌', 'N2', 'germ, fungus, bacteria', 'Khuẩn', ARRAY['キン'], NULL, 11, '25c57eec-88fa-4e6e-95a2-9ba83b5f4246') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('衿', 'N2', 'neck, collar, lapel', 'Câm', ARRAY['キン','コン'], ARRAY['えり'], 9, '9c5b95cd-6590-4a03-8c61-a68c80da3c8c') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('襟', 'N2', 'collar, neck, lapel, one''s inner feelings', 'Khâm', ARRAY['キン'], ARRAY['えり'], 18, '9c5b95cd-6590-4a03-8c61-a68c80da3c8c') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('謹', 'N2', 'discreet, reverently, humbly', 'Cẩn', ARRAY['キン'], ARRAY['つつし.む'], 17, '7fd47228-ad16-439a-8685-ad9cacdeb95e') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('近', 'N4', 'near, early, akin, tantamount', 'Cận, Cấn, Ký', ARRAY['キン','コン'], ARRAY['ちか.い'], 7, '371180fe-c78a-477d-b628-86c3e88e03f1') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('金', 'N5', 'gold', 'Kim', ARRAY['キン','コン','ゴン'], ARRAY['かね','かな-','-がね'], 8, 'c3b48b38-6414-47f2-a7ac-d72a85c0e35a') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('吟', 'N2', 'versify, singing, recital', 'Ngâm', ARRAY['ギン'], NULL, 7, 'a54e08f0-b1f4-49b0-bdcd-1fcfab9f5eb7') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('銀', 'N4', 'silver', 'Ngân', ARRAY['ギン'], ARRAY['しろがね'], 14, 'c3b48b38-6414-47f2-a7ac-d72a85c0e35a') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('九', 'N5', 'nine', 'Cửu, Cưu', ARRAY['キュウ','ク'], ARRAY['ここの','ここの.つ'], 2, '4721cf9b-ec7a-4029-8f61-3f80cc4d64fb') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('句', 'N2', 'phrase, clause, sentence, passage, paragraph, counter for haiku', 'Cú, Câu, Cấu', ARRAY['ク'], NULL, 5, 'a54e08f0-b1f4-49b0-bdcd-1fcfab9f5eb7') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('区', 'N4', 'ward, district', 'Âu, Khu', ARRAY['ク','オウ','コウ'], NULL, 4, '3c076357-dc93-48ad-96f1-aef3d8dd938d') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('玖', 'N2', 'beautiful black jewel, nine', 'Cửu', ARRAY['キュウ','ク'], NULL, 7, '1450b570-89aa-4b1c-9e48-32bc25298929') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('矩', 'N2', 'ruler, carpenter''s square', 'Củ', ARRAY['ク'], ARRAY['かね','かねざし','さしがね'], 10, 'b7deea42-61dd-4e35-a44c-25dd634fd02a') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('苦', 'N3', 'suffering, trial, worry, hardship, feel bitter, scowl', 'Khổ', ARRAY['ク'], ARRAY['くる.しい','-ぐる.しい','くる.しむ','くる.しめる','にが.い','にが.る'], 8, '25c57eec-88fa-4e6e-95a2-9ba83b5f4246') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('駆', 'N2', 'drive, run, gallop, advance, inspire, impel', 'Khu', ARRAY['ク'], ARRAY['か.ける','か.る'], 14, 'd7bb7ac5-d329-47fc-981a-3b2bc480c688') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('駒', 'N2', 'pony, horse, colt', 'Câu', ARRAY['ク'], ARRAY['こま'], 15, 'd7bb7ac5-d329-47fc-981a-3b2bc480c688') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('具', 'N3', 'tool, utensil, means, possess, ingredients, counter for armor, suits, sets of furniture', 'Cụ', ARRAY['グ'], ARRAY['そな.える','つぶさ.に'], 8, '33938fa7-49b8-4856-a98e-5aff308f56f2') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('愚', 'N2', 'foolish, folly, absurdity, stupid', 'Ngu', ARRAY['グ'], ARRAY['おろ.か'], 13, '1659d447-8145-42d3-8262-2d05cea9f834') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('虞', 'N2', 'fear, uneasiness, anxiety, concern, expectation, consideration', 'Ngu', ARRAY['グ'], ARRAY['おそれ','おもんぱか.る','はか.る','うれ.える','あざむ.く','あやま.る','のぞ.む','たの.しむ'], 13, '787bb4d8-bce5-4764-8c72-6c3cfb0ee9a7') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('空', 'N5', 'empty, sky, void, vacant, vacuum', 'Không, Khống, Khổng', ARRAY['クウ'], ARRAY['そら','あ.く','あ.き','あ.ける','から','す.く','す.かす','むな.しい'], 8, 'bff21635-eba6-4d8c-9cb9-99e227a4820a') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('偶', 'N3', 'accidentally, even number, couple, man & wife, same kind', 'Ngẫu', ARRAY['グウ'], ARRAY['たま'], 11, '78419994-196d-4445-8165-a6029d33a0ff') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('遇', 'N2', 'meet, encounter, interview, treat, entertain, receive, deal with', 'Ngộ', ARRAY['グウ'], ARRAY['あ.う'], 12, '371180fe-c78a-477d-b628-86c3e88e03f1') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('隅', 'N3', 'corner, nook', 'Ngung', ARRAY['グウ'], ARRAY['すみ'], 12, 'b85628b0-3f6a-420a-91c7-0cfbd5055459') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('屈', 'N2', 'yield, bend, flinch, submit', 'Khuất, Quật', ARRAY['クツ'], ARRAY['かが.む','かが.める'], 8, 'dbb1b9f0-b6d7-4c0b-989a-7a98ab167f37') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('掘', 'N3', 'dig, delve, excavate', 'Quật', ARRAY['クツ'], ARRAY['ほ.る'], 11, 'eaca9807-b2da-4d99-8585-13d429ea249d') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('靴', 'N3', 'shoes', 'Ngoa', ARRAY['カ'], ARRAY['くつ'], 13, '028285ca-9803-452a-96d9-d2888c20491d') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('熊', 'N2', 'bear', 'Hùng', ARRAY['ユウ'], ARRAY['くま'], 14, '831cfc6a-79c9-4ebb-a4cc-ba737a36caf7') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('栗', 'N2', 'chestnut', 'Lật', ARRAY['リツ','リ'], ARRAY['くり','おののく'], 10, '80c53d4a-31b5-442f-be48-5d1b64972fae') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('繰', 'N2', 'winding, reel, spin, turn (pages), look up, refer to', 'Sào', ARRAY['ソウ'], ARRAY['く.る'], 19, '2d4eb76f-4fae-4d05-855c-2520845188ed') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('桑', 'N2', 'mulberry', 'Tang', ARRAY['ソウ'], ARRAY['くわ'], 10, '80c53d4a-31b5-442f-be48-5d1b64972fae') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('勲', 'N2', 'meritorious deed, merit', 'Huân', ARRAY['クン'], ARRAY['いさお'], 15, 'd9107ec4-ea5d-4a21-bacd-ffca462b29dd') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('君', 'N3', 'mister, you, ruler, male name suffix', 'Quân', ARRAY['クン'], ARRAY['きみ','-ぎみ'], 7, 'a54e08f0-b1f4-49b0-bdcd-1fcfab9f5eb7') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('薫', 'N2', 'send forth fragrance, fragrant, be scented, smoke (tobacco)', 'Huân', ARRAY['クン'], ARRAY['かお.る'], 16, '25c57eec-88fa-4e6e-95a2-9ba83b5f4246') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('訓', 'N3', 'instruction, Japanese character reading, explanation, read', 'Huấn', ARRAY['クン','キン'], ARRAY['おし.える','よ.む','くん.ずる'], 10, '7fd47228-ad16-439a-8685-ad9cacdeb95e') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('群', 'N3', 'flock, group, crowd, herd, swarm, cluster', 'Quần', ARRAY['グン'], ARRAY['む.れる','む.れ','むら','むら.がる'], 13, 'e438596e-f3e0-4bb3-9396-bcebdb382fd7') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('軍', 'N3', 'army, force, troops, war, battle', 'Quân', ARRAY['グン'], ARRAY['いくさ'], 9, '869f4859-e3d9-4a6a-8839-d1bf7a715a34') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('郡', 'N2', 'county, district', 'Quận', ARRAY['グン'], ARRAY['こおり'], 10, '57b67155-4755-4cbd-8c34-1edf3d4cb815') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('袈', 'N2', 'a coarse camlet', 'Ca', ARRAY['ケ','カ'], NULL, 11, '9c5b95cd-6590-4a03-8c61-a68c80da3c8c') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('係', 'N3', 'person in charge, connection, duty, concern oneself', 'Hệ', ARRAY['ケイ'], ARRAY['かか.る','かかり','-がかり','かか.わる'], 9, '78419994-196d-4445-8165-a6029d33a0ff') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('傾', 'N3', 'lean, incline, tilt, trend, wane, sink, ruin, bias', 'Khuynh', ARRAY['ケイ'], ARRAY['かたむ.く','かたむ.ける','かたぶ.く','かた.げる','かし.げる'], 13, '78419994-196d-4445-8165-a6029d33a0ff') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('刑', 'N2', 'punish, penalty, sentence, punishment', 'Hình', ARRAY['ケイ'], NULL, 6, 'bc6a1cef-e769-454c-a64f-910a5e1b5d74') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('兄', 'N4', 'elder brother, big brother', 'Huynh', ARRAY['ケイ','キョウ'], ARRAY['あに'], 5, '88165dcc-9e82-4204-80b3-e041b6649197') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('啓', 'N2', 'disclose, open, say', 'Khải', ARRAY['ケイ'], ARRAY['ひら.く','さと.す'], 11, 'a54e08f0-b1f4-49b0-bdcd-1fcfab9f5eb7') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('圭', 'N2', 'square jewel, corner, angle, edge', 'Khuê', ARRAY['ケイ','ケ'], NULL, 6, '2fd61440-db3f-4cd5-8101-9e74019df262') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('型', 'N3', 'mould, type, model', 'Hình', ARRAY['ケイ'], ARRAY['かた','-がた'], 9, '2fd61440-db3f-4cd5-8101-9e74019df262') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('契', 'N2', 'pledge, promise, vow', 'Khế, Tiết, Khiết, Khất', ARRAY['ケイ'], ARRAY['ちぎ.る'], 9, '457c9d33-f2d9-4f61-bca8-910ce7ade194') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('形', 'N3', 'shape, form, style', 'Hình', ARRAY['ケイ','ギョウ'], ARRAY['かた','-がた','かたち','なり'], 7, 'a141edd3-78dd-46cc-b260-1b2cfc79e5ed') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('径', 'N2', 'diameter, path, method', 'Kính', ARRAY['ケイ'], ARRAY['みち','こみち','さしわたし','ただちに'], 8, '5a7d3fce-7600-45fd-91a8-2af832381ee4') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('恵', 'N3', 'favor, blessing, grace, kindness', 'Huệ', ARRAY['ケイ','エ'], ARRAY['めぐ.む','めぐ.み'], 10, '1659d447-8145-42d3-8262-2d05cea9f834') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('慶', 'N2', 'jubilation, congratulate, rejoice, be happy', 'Khánh, Khương, Khanh', ARRAY['ケイ'], ARRAY['よろこ.び'], 15, '1659d447-8145-42d3-8262-2d05cea9f834') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('慧', 'N2', 'wise', 'Tuệ', ARRAY['ケイ','エ'], ARRAY['さとい'], 15, '1659d447-8145-42d3-8262-2d05cea9f834') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('憩', 'N2', 'recess, rest, relax, repose', 'Khế', ARRAY['ケイ'], ARRAY['いこ.い','いこ.う'], 16, '1659d447-8145-42d3-8262-2d05cea9f834') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('掲', 'N2', 'put up (a notice), put up, hoist, display, hang out, publish, describe', 'Yết', ARRAY['ケイ'], ARRAY['かか.げる'], 11, 'eaca9807-b2da-4d99-8585-13d429ea249d') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('携', 'N2', 'portable, carry (in hand), armed with, bring along', 'Huề', ARRAY['ケイ'], ARRAY['たずさ.える','たずさ.わる'], 13, 'eaca9807-b2da-4d99-8585-13d429ea249d') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('敬', 'N3', 'awe, respect, honor, revere', 'Kính', ARRAY['ケイ','キョウ'], ARRAY['うやま.う'], 12, 'b62aa3f5-bcc4-4c24-944d-b02f3fbb5499') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('景', 'N3', 'scenery, view', 'Cảnh', ARRAY['ケイ'], NULL, 12, 'b8af1855-8d69-4238-bc65-6925c1c993cd') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('桂', 'N2', 'Japanese Judas-tree, cinnamon tree', 'Quế', ARRAY['ケイ'], ARRAY['かつら'], 10, '80c53d4a-31b5-442f-be48-5d1b64972fae') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('渓', 'N2', 'mountain stream, valley', 'Khê', ARRAY['ケイ'], ARRAY['たに','たにがわ'], 11, '10673667-6c56-413d-bbd5-a48794fb7725') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('系', 'N2', 'lineage, system', 'Hệ', ARRAY['ケイ'], NULL, 7, '2d4eb76f-4fae-4d05-855c-2520845188ed') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('経', 'N3', 'sutra, longitude, pass thru, expire, warp', 'Kinh', ARRAY['ケイ','キョウ','キン'], ARRAY['へ.る','た.つ','たていと','はか.る','のり'], 11, '2d4eb76f-4fae-4d05-855c-2520845188ed') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('継', 'N2', 'inherit, succeed, continue, patch, graft (tree)', 'Bối, Kế', ARRAY['ケイ'], ARRAY['つ.ぐ','まま-'], 13, '2d4eb76f-4fae-4d05-855c-2520845188ed') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('茎', 'N2', 'stalk, stem', 'Hành, Kinh', ARRAY['ケイ','キョウ'], ARRAY['くき'], 8, '25c57eec-88fa-4e6e-95a2-9ba83b5f4246') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('蛍', 'N2', 'lightning-bug, firefly', 'Huỳnh', ARRAY['ケイ'], ARRAY['ほたる'], 11, '2b1d8e20-f306-465c-b245-cb2dd48f3615') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('計', 'N4', 'plot, plan, scheme, measure', 'Kế, Kê', ARRAY['ケイ'], ARRAY['はか.る','はか.らう'], 9, '7fd47228-ad16-439a-8685-ad9cacdeb95e') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('警', 'N3', 'admonish, commandment', 'Cảnh', ARRAY['ケイ'], ARRAY['いまし.める'], 19, '7fd47228-ad16-439a-8685-ad9cacdeb95e') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('軽', 'N4', 'lightly, trifling, unimportant', 'Khinh', ARRAY['ケイ','キョウ','キン'], ARRAY['かる.い','かろ.やか','かろ.んじる'], 12, '869f4859-e3d9-4a6a-8839-d1bf7a715a34') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('鶏', 'N2', 'chicken', 'Duật', ARRAY['ケイ'], ARRAY['にわとり','とり'], 19, 'a5d543cc-57c8-4627-8531-64c511b7bc11') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('芸', 'N3', 'technique, art, craft, performance, acting, trick, stunt', 'Vân', ARRAY['ゲイ','ウン'], ARRAY['う.える','のり','わざ'], 7, '25c57eec-88fa-4e6e-95a2-9ba83b5f4246') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('迎', 'N3', 'welcome, meet, greet', 'Nghênh, Nghịnh', ARRAY['ゲイ'], ARRAY['むか.える'], 7, '371180fe-c78a-477d-b628-86c3e88e03f1') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('鯨', 'N2', 'whale', 'Kình', ARRAY['ゲイ'], ARRAY['くじら'], 19, '91b15cdf-2754-4848-bc73-b3d4589b39ad') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('劇', 'N3', 'drama, play', 'Kịch', ARRAY['ゲキ'], NULL, 15, 'bc6a1cef-e769-454c-a64f-910a5e1b5d74') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('撃', 'N2', 'beat, attack, defeat, conquer', 'Kích', ARRAY['ゲキ'], ARRAY['う.つ'], 15, 'eaca9807-b2da-4d99-8585-13d429ea249d') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('激', 'N2', 'violent, get excited, enraged, chafe, incite', 'Kích', ARRAY['ゲキ'], ARRAY['はげ.しい'], 16, '10673667-6c56-413d-bbd5-a48794fb7725') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('傑', 'N2', 'greatness, excellence', 'Kiệt', ARRAY['ケツ'], ARRAY['すぐ.れる'], 13, '78419994-196d-4445-8165-a6029d33a0ff') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('欠', 'N3', 'lack, gap, fail, yawning radical (no. 76)', 'Khiếm', ARRAY['ケツ','ケン'], ARRAY['か.ける','か.く'], 4, '96d875ed-5269-427a-b3ca-828933e753fc') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('決', 'N3', 'decide, fix, agree upon, appoint', 'Quyết', ARRAY['ケツ'], ARRAY['き.める','-ぎ.め','き.まる','さ.く'], 7, '10673667-6c56-413d-bbd5-a48794fb7725') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('潔', 'N2', 'undefiled, pure, clean, righteous, gallant', 'Khiết', ARRAY['ケツ'], ARRAY['いさぎよ.い'], 15, '10673667-6c56-413d-bbd5-a48794fb7725') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('穴', 'N2', 'hole, aperture, slit, cave, den', 'Huyệt', ARRAY['ケツ'], ARRAY['あな'], 5, 'bff21635-eba6-4d8c-9cb9-99e227a4820a') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('結', 'N3', 'tie, bind, contract, join, organize, do up hair, fasten', 'Kết', ARRAY['ケツ','ケチ'], ARRAY['むす.ぶ','ゆ.う','ゆ.わえる'], 12, '2d4eb76f-4fae-4d05-855c-2520845188ed') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('血', 'N3', 'blood', 'Huyết', ARRAY['ケツ'], ARRAY['ち'], 6, '5fccfa28-bf2d-4ce4-a963-6238270170f3') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('月', 'N5', 'month, moon', 'Nguyệt', ARRAY['ゲツ','ガツ'], ARRAY['つき'], 4, 'a55eee17-b099-4cb3-810a-0a4c9dbc7ea9') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('件', 'N3', 'affair, case, matter, item', 'Kiện', ARRAY['ケン'], ARRAY['くだん'], 6, '78419994-196d-4445-8165-a6029d33a0ff') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('倹', 'N2', 'frugal, economy, thrifty', 'Kiệm', ARRAY['ケン'], ARRAY['つま.しい','つづまやか'], 10, '78419994-196d-4445-8165-a6029d33a0ff') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('健', 'N3', 'healthy, health, strength, persistence', 'Kiện', ARRAY['ケン'], ARRAY['すこ.やか'], 11, '78419994-196d-4445-8165-a6029d33a0ff') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('兼', 'N2', 'concurrently, and, beforehand, in advance', 'Kiêm', ARRAY['ケン'], ARRAY['か.ねる','-か.ねる'], 10, '33938fa7-49b8-4856-a98e-5aff308f56f2') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('券', 'N3', 'ticket', 'Khoán', ARRAY['ケン'], NULL, 8, 'bc6a1cef-e769-454c-a64f-910a5e1b5d74') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('剣', 'N2', 'sabre, sword, blade, clock hand', 'Kiếm, Kém', ARRAY['ケン'], ARRAY['つるぎ'], 10, 'bc6a1cef-e769-454c-a64f-910a5e1b5d74') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('圏', 'N2', 'sphere, circle, radius, range', 'Quyển, Khuyên', ARRAY['ケン'], ARRAY['かこ.い'], 12, 'd6dd2a4a-effd-48d8-baaa-60e2d46cfc4d') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('堅', 'N2', 'strict, hard, solid, tough, tight, reliable', 'Kiên', ARRAY['ケン'], ARRAY['かた.い','-がた.い'], 12, '2fd61440-db3f-4cd5-8101-9e74019df262') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('嫌', 'N2', 'dislike, detest, hate', 'Hiềm', ARRAY['ケン','ゲン'], ARRAY['きら.う','きら.い','いや'], 13, '2b2beef1-465e-418b-9883-672cd0e0a712') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('建', 'N4', 'build', 'Kiến, Kiển', ARRAY['ケン','コン'], ARRAY['た.てる','た.て','-だ.て','た.つ'], 9, 'dc9cdeb1-8d32-4023-808d-c8f2f3d9f9f2') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('憲', 'N2', 'constitution, law', 'Hiến', ARRAY['ケン'], NULL, 16, '1659d447-8145-42d3-8262-2d05cea9f834') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('懸', 'N2', 'state of suspension, hang, depend, consult, distant, far apart', 'Huyền', ARRAY['ケン','ケ'], ARRAY['か.ける','か.かる'], 20, '1659d447-8145-42d3-8262-2d05cea9f834') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('拳', 'N2', 'fist', 'Quyền', ARRAY['ケン','ゲン'], ARRAY['こぶし'], 10, 'eaca9807-b2da-4d99-8585-13d429ea249d') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('検', 'N3', 'examination, investigate', 'Kiểm', ARRAY['ケン'], ARRAY['しら.べる'], 12, '80c53d4a-31b5-442f-be48-5d1b64972fae') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('権', 'N3', 'authority, power, rights', 'Quyền', ARRAY['ケン','ゴン'], ARRAY['おもり','かり','はか.る'], 15, '80c53d4a-31b5-442f-be48-5d1b64972fae') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('犬', 'N4', 'dog', 'Khuyển', ARRAY['ケン'], ARRAY['いぬ','いぬ-'], 4, '060e9144-2828-4302-b284-f6ac8ea6ae51') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('献', 'N2', 'offering, counter for drinks, present, offer', 'Hiến, Ta', ARRAY['ケン','コン'], ARRAY['たてまつ.る'], 13, '060e9144-2828-4302-b284-f6ac8ea6ae51') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('研', 'N4', 'polish, study of, sharpen', 'Nghiên, Nghiễn, Nghiến, Nghiền, Nghiện', ARRAY['ケン'], ARRAY['と.ぐ'], 9, 'c3bb7570-e8b9-49cc-bf56-90e74165d503') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('絹', 'N2', 'silk', 'Quyên', ARRAY['ケン'], ARRAY['きぬ'], 13, '2d4eb76f-4fae-4d05-855c-2520845188ed') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('県', 'N4', 'prefecture', 'Huyền', ARRAY['ケン'], ARRAY['か.ける'], 9, 'eeeb0778-60ee-4882-b7a5-d6e12279fade') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('肩', 'N3', 'shoulder', 'Kiên', ARRAY['ケン'], ARRAY['かた'], 8, '71cc2465-f238-4f52-b9e3-39f8f95caaba') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('見', 'N5', 'see, hopes, chances, idea, opinion, look at, visible', 'Kiến, Hiện', ARRAY['ケン'], ARRAY['み.る','み.える','み.せる'], 7, 'd260f2a4-eacb-4447-97ac-2ef7518f6af8') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('謙', 'N2', 'self-effacing, humble oneself, condescend, be modest', 'Khiêm, Khiệm', ARRAY['ケン'], ARRAY['へりくだ.る'], 17, '7fd47228-ad16-439a-8685-ad9cacdeb95e') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('賢', 'N3', 'intelligent, wise, wisdom, cleverness', 'Hiền', ARRAY['ケン'], ARRAY['かしこ.い'], 16, '0cb16105-d4c3-4534-9e4e-0eecbad15787') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('軒', 'N3', 'flats, counter for houses, eaves', 'Hiên', ARRAY['ケン'], ARRAY['のき'], 10, '869f4859-e3d9-4a6a-8839-d1bf7a715a34') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('遣', 'N2', 'dispatch, despatch, send, give, donate, do, undertake', 'Khiển, Khán', ARRAY['ケン'], ARRAY['つか.う','-つか.い','-づか.い','つか.わす','や.る'], 13, '371180fe-c78a-477d-b628-86c3e88e03f1') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('険', 'N3', 'precipitous, inaccessible place, impregnable position, steep place, sharp eyes', 'Hiểm', ARRAY['ケン'], ARRAY['けわ.しい'], 11, 'b85628b0-3f6a-420a-91c7-0cfbd5055459') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('顕', 'N2', 'appear, existing', 'Hiển', ARRAY['ケン'], ARRAY['あきらか','あらわ.れる'], 18, 'be4fe89f-bae1-4238-8aad-4789348c0e13') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('験', 'N4', 'verification, effect, testing', 'Nghiệm', ARRAY['ケン','ゲン'], ARRAY['あかし','しるし','ため.す','ためし'], 18, 'd7bb7ac5-d329-47fc-981a-3b2bc480c688') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('元', 'N4', 'beginning, former time, origin', 'Nguyên', ARRAY['ゲン','ガン'], ARRAY['もと'], 4, '88165dcc-9e82-4204-80b3-e041b6649197') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('原', 'N3', 'meadow, original, primitive, field, plain, prairie, tundra, wilderness', 'Nguyên', ARRAY['ゲン'], ARRAY['はら'], 10, '06e286c9-3801-4780-a073-6568f4c0dc2d') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('厳', 'N2', 'stern, strictness, severity, rigidity', 'Nghiêm', ARRAY['ゲン','ゴン'], ARRAY['おごそ.か','きび.しい','いか.めしい','いつくし'], 17, '06e286c9-3801-4780-a073-6568f4c0dc2d') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('幻', 'N2', 'phantasm, vision, dream, illusion, apparition', 'Huyễn', ARRAY['ゲン'], ARRAY['まぼろし'], 4, '855bcd0d-8692-4d72-8952-d16179ecf58f') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('弦', 'N2', 'bowstring, chord, hypotenuse', 'Huyền', ARRAY['ゲン'], ARRAY['つる'], 8, 'ad6d3726-634b-40d9-bc5a-538b879c95d5') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('減', 'N3', 'dwindle, decrease, reduce, decline, curtail, get hungry', 'Giảm', ARRAY['ゲン'], ARRAY['へ.る','へ.らす'], 12, '10673667-6c56-413d-bbd5-a48794fb7725') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('源', 'N2', 'source, origin', 'Nguyên', ARRAY['ゲン'], ARRAY['みなもと'], 13, '10673667-6c56-413d-bbd5-a48794fb7725') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('玄', 'N2', 'mysterious, occultness, black, deep, profound', 'Huyền', ARRAY['ゲン'], ARRAY['くろ','くろ.い'], 5, '7bb6208d-6849-43e0-be87-098e7fbc5125') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('現', 'N3', 'present, existing, actual', 'Hiện', ARRAY['ゲン'], ARRAY['あらわ.れる','あらわ.す','うつつ','うつ.つ'], 11, '1450b570-89aa-4b1c-9e48-32bc25298929') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('絃', 'N2', 'string, cord, samisen music', 'Huyền', ARRAY['ゲン'], ARRAY['いと'], 11, '2d4eb76f-4fae-4d05-855c-2520845188ed') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('言', 'N5', 'say, word', 'Ngôn, Ngân', ARRAY['ゲン','ゴン'], ARRAY['い.う','こと'], 7, '7fd47228-ad16-439a-8685-ad9cacdeb95e') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('限', 'N3', 'limit, restrict, to best of ability', 'Hạn', ARRAY['ゲン'], ARRAY['かぎ.る','かぎ.り','-かぎ.り'], 9, 'b85628b0-3f6a-420a-91c7-0cfbd5055459') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('個', 'N3', 'individual, counter for articles', 'Cá', ARRAY['コ','カ'], NULL, 10, '78419994-196d-4445-8165-a6029d33a0ff') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('古', 'N5', 'old', 'Cổ', ARRAY['コ'], ARRAY['ふる.い','ふる-','-ふる.す'], 5, 'a54e08f0-b1f4-49b0-bdcd-1fcfab9f5eb7') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('呼', 'N3', 'call, call out to, invite', 'Hô, Há', ARRAY['コ'], ARRAY['よ.ぶ'], 8, 'a54e08f0-b1f4-49b0-bdcd-1fcfab9f5eb7') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('固', 'N3', 'harden, set, clot, curdle', 'Cố', ARRAY['コ'], ARRAY['かた.める','かた.まる','かた.まり','かた.い'], 8, 'd6dd2a4a-effd-48d8-baaa-60e2d46cfc4d') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('孤', 'N2', 'orphan, alone', 'Cô', ARRAY['コ'], NULL, 9, '7c3ff4e1-b8e9-4c25-ba10-0fbf8198a71d') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('己', 'N2', 'self', 'Kỷ', ARRAY['コ','キ'], ARRAY['おのれ','つちのと','な'], 3, 'afc445ef-54dd-45a9-86b5-d01fbec09f75') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('庫', 'N3', 'warehouse, storehouse', 'Khố', ARRAY['コ','ク'], ARRAY['くら'], 10, '2417a6bf-65df-4c8a-a8d0-fba42aeb96ed') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('弧', 'N2', 'arc, arch, bow', 'Hồ, O', ARRAY['コ'], NULL, 9, 'ad6d3726-634b-40d9-bc5a-538b879c95d5') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('戸', 'N3', 'door, counter for houses, door radical (no. 63)', 'Hộ, Họ', ARRAY['コ'], ARRAY['と'], 4, '3df4fb00-e325-4d60-b6e2-dac33518caca') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('故', 'N3', 'happenstance, especially, intentionally, reason, cause, circumstances, the late, therefore, consequently', 'Cố', ARRAY['コ'], ARRAY['ゆえ','ふる.い','もと'], 9, 'b62aa3f5-bcc4-4c24-944d-b02f3fbb5499') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('枯', 'N3', 'wither, die, dry up, be seasoned', 'Khô', ARRAY['コ'], ARRAY['か.れる','か.らす'], 9, '80c53d4a-31b5-442f-be48-5d1b64972fae') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('湖', 'N3', 'lake', 'Hồ', ARRAY['コ'], ARRAY['みずうみ'], 12, '10673667-6c56-413d-bbd5-a48794fb7725') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('胡', 'N2', 'barbarian, foreign', 'Hồ', ARRAY['ウ','コ','ゴ'], ARRAY['なんぞ'], 9, '71cc2465-f238-4f52-b9e3-39f8f95caaba') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('虎', 'N2', 'tiger, drunkard', 'Hổ', ARRAY['コ'], ARRAY['とら'], 8, '787bb4d8-bce5-4764-8c72-6c3cfb0ee9a7') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('誇', 'N2', 'boast, be proud, pride, triumphantly', 'Khoa', ARRAY['コ'], ARRAY['ほこ.る'], 13, '7fd47228-ad16-439a-8685-ad9cacdeb95e') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('雇', 'N3', 'employ, hire', 'Cố', ARRAY['コ'], ARRAY['やと.う'], 12, 'e9426c63-0e1d-4399-a59e-ce2e851fa615') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('顧', 'N2', 'look back, review, examine oneself, turn around', 'Cố', ARRAY['コ'], ARRAY['かえり.みる'], 21, 'be4fe89f-bae1-4238-8aad-4789348c0e13') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('鼓', 'N2', 'drum, beat, rouse, muster', 'Cổ', ARRAY['コ'], ARRAY['つづみ'], 13, 'd2a7a1ab-1c79-4eb3-8eac-13bd34600edf') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('五', 'N5', 'five', 'Ngũ', ARRAY['ゴ'], ARRAY['いつ','いつ.つ'], 4, '7a559b3e-4eea-47ee-a353-8deec41a7cd7') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('互', 'N3', 'mutually, reciprocally, together', 'Hỗ', ARRAY['ゴ'], ARRAY['たが.い','かたみ.に'], 4, '7a559b3e-4eea-47ee-a353-8deec41a7cd7') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('伍', 'N2', 'five, five-man squad, file, line', 'Ngũ', ARRAY['ゴ'], ARRAY['いつつ'], 6, '78419994-196d-4445-8165-a6029d33a0ff') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('午', 'N5', 'noon, sign of the horse, 11AM-1PM, seventh sign of Chinese zodiac', 'Ngọ', ARRAY['ゴ'], ARRAY['うま'], 4, 'ac324fde-d736-479e-b9ae-c0f09a7f3091') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('呉', 'N2', 'give, do something for, kingdom of Wu', 'Ngô', ARRAY['ゴ'], ARRAY['く.れる','くれ'], 7, 'a54e08f0-b1f4-49b0-bdcd-1fcfab9f5eb7') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('吾', 'N2', 'I, my, our, one''s own', 'Ngô', ARRAY['ゴ'], ARRAY['われ','わが-','あ-'], 7, 'a54e08f0-b1f4-49b0-bdcd-1fcfab9f5eb7') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('娯', 'N2', 'recreation, pleasure', 'Ngu', ARRAY['ゴ'], NULL, 10, '2b2beef1-465e-418b-9883-672cd0e0a712') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('後', 'N5', 'behind, back, later', 'Hậu, Hấu', ARRAY['ゴ','コウ'], ARRAY['のち','うし.ろ','うしろ','あと','おく.れる'], 9, '5a7d3fce-7600-45fd-91a8-2af832381ee4') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('御', 'N3', 'honorable, manipulate, govern', 'Ngự, Nhạ', ARRAY['ギョ','ゴ'], ARRAY['おん-','お-','み-'], 12, '5a7d3fce-7600-45fd-91a8-2af832381ee4') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('悟', 'N2', 'enlightenment, perceive, discern, realize, understand', 'Ngộ', ARRAY['ゴ'], ARRAY['さと.る'], 10, '1659d447-8145-42d3-8262-2d05cea9f834') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('梧', 'N2', 'Chinese parasol tree, phoenix tree', 'Ngô, Ngộ', ARRAY['ゴ'], ARRAY['あおぎり'], 11, '80c53d4a-31b5-442f-be48-5d1b64972fae') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('瑚', 'N2', 'ancestral offering receptacle, coral', 'Hô, Hồ', ARRAY['コ','ゴ'], NULL, 13, '1450b570-89aa-4b1c-9e48-32bc25298929') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('碁', 'N2', 'Go', 'Kỳ', ARRAY['ゴ'], NULL, 13, 'c3bb7570-e8b9-49cc-bf56-90e74165d503') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('語', 'N5', 'word, speech, language', 'Ngữ, Ngứ', ARRAY['ゴ'], ARRAY['かた.る','かた.らう'], 14, '7fd47228-ad16-439a-8685-ad9cacdeb95e') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('誤', 'N3', 'mistake, err, do wrong, mislead', 'Ngộ', ARRAY['ゴ'], ARRAY['あやま.る','-あやま.る'], 14, '7fd47228-ad16-439a-8685-ad9cacdeb95e') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('護', 'N2', 'safeguard, protect', 'Hộ', ARRAY['ゴ'], ARRAY['まも.る'], 20, '7fd47228-ad16-439a-8685-ad9cacdeb95e') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('鯉', 'N2', 'carp', 'Lý', ARRAY['リ'], ARRAY['こい'], 18, '91b15cdf-2754-4848-bc73-b3d4589b39ad') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('交', 'N3', 'mingle, mixing, association, coming & going', 'Giao', ARRAY['コウ'], ARRAY['まじ.わる','まじ.える','ま.じる','まじ.る','ま.ざる','ま.ぜる','-か.う','か.わす','かわ.す','こもごも'], 6, '78591721-155a-4c67-999d-a331bb59ebb5') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('侯', 'N2', 'marquis, lord, daimyo', 'Hầu', ARRAY['コウ'], NULL, 9, '78419994-196d-4445-8165-a6029d33a0ff') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('候', 'N3', 'climate, season, weather, wait for, expect', 'Hậu', ARRAY['コウ'], ARRAY['そうろう'], 10, '78419994-196d-4445-8165-a6029d33a0ff') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('倖', 'N2', 'happiness, luck', 'Hãnh', ARRAY['コウ'], ARRAY['しあわ.せ','さいわ.い'], 10, '78419994-196d-4445-8165-a6029d33a0ff') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('光', 'N4', 'ray, light', 'Quang', ARRAY['コウ'], ARRAY['ひか.る','ひかり'], 6, '88165dcc-9e82-4204-80b3-e041b6649197') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('公', 'N3', 'public, prince, official, governmental', 'Công', ARRAY['コウ','ク'], ARRAY['おおやけ'], 4, '33938fa7-49b8-4856-a98e-5aff308f56f2') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('功', 'N2', 'achievement, merits, success, honor, credit', 'Công', ARRAY['コウ','ク'], ARRAY['いさお'], 5, 'd9107ec4-ea5d-4a21-bacd-ffca462b29dd') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('効', 'N3', 'merit, efficacy, efficiency, benefit', 'Hiệu', ARRAY['コウ'], ARRAY['き.く','ききめ','なら.う'], 8, 'd9107ec4-ea5d-4a21-bacd-ffca462b29dd') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('厚', 'N3', 'thick, heavy, rich, kind, cordial, brazen, shameless', 'Hậu', ARRAY['コウ'], ARRAY['あつ.い','あか'], 9, '06e286c9-3801-4780-a073-6568f4c0dc2d') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('口', 'N5', 'mouth', 'Khẩu', ARRAY['コウ','ク'], ARRAY['くち'], 3, 'a54e08f0-b1f4-49b0-bdcd-1fcfab9f5eb7') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('向', 'N3', 'yonder, facing, beyond, confront, defy, tend toward, approach', 'Hướng', ARRAY['コウ'], ARRAY['む.く','む.い','-む.き','む.ける','-む.け','む.かう','む.かい','む.こう','む.こう-','むこ','むか.い'], 6, 'a54e08f0-b1f4-49b0-bdcd-1fcfab9f5eb7') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('后', 'N2', 'empress, queen, after, behind, back, later', 'Hậu', ARRAY['コウ','ゴ'], ARRAY['きさき'], 6, 'a54e08f0-b1f4-49b0-bdcd-1fcfab9f5eb7') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('坑', 'N2', 'pit, hole', 'Kháng, Khanh, Ganh', ARRAY['コウ'], NULL, 7, '2fd61440-db3f-4cd5-8101-9e74019df262') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('好', 'N4', 'fond, pleasing, like something', 'Hảo, Hiếu', ARRAY['コウ'], ARRAY['この.む','す.く','よ.い','い.い'], 6, '2b2beef1-465e-418b-9883-672cd0e0a712') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('孔', 'N2', 'cavity, hole, slit, very, great, exceedingly', 'Khổng', ARRAY['コウ','ク'], ARRAY['あな'], 4, '7c3ff4e1-b8e9-4c25-ba10-0fbf8198a71d') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('孝', 'N2', 'filial piety, child''s respect', 'Hiếu', ARRAY['コウ','キョウ'], NULL, 7, '7c3ff4e1-b8e9-4c25-ba10-0fbf8198a71d') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('宏', 'N2', 'wide, large', 'Hoành', ARRAY['コウ'], ARRAY['ひろ.い'], 7, '66a403fd-ce7c-4ecc-820d-3f1718e79119') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('工', 'N4', 'craft, construction, katakana e radical (no. 48)', 'Công', ARRAY['コウ','ク','グ'], NULL, 3, '67ad0176-509d-4b25-8257-860164c92119') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('巧', 'N2', 'adroit, skilled, ingenuity', 'Xảo', ARRAY['コウ'], ARRAY['たく.み','たく.む','うま.い'], 5, '67ad0176-509d-4b25-8257-860164c92119') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('幸', 'N3', 'happiness, blessing, fortune', 'Hạnh', ARRAY['コウ'], ARRAY['さいわ.い','さち','しあわ.せ'], 8, '8abb0e5e-778e-44fc-b6a7-9581999b661c') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('広', 'N4', 'wide, broad, spacious', 'Quảng', ARRAY['コウ'], ARRAY['ひろ.い','ひろ.まる','ひろ.める','ひろ.がる','ひろ.げる'], 5, '2417a6bf-65df-4c8a-a8d0-fba42aeb96ed') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('康', 'N3', 'ease, peace', 'Khang', ARRAY['コウ'], NULL, 11, '2417a6bf-65df-4c8a-a8d0-fba42aeb96ed') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('弘', 'N2', 'vast, broad, wide', 'Hoằng', ARRAY['コウ','グ'], ARRAY['ひろ.い'], 5, 'ad6d3726-634b-40d9-bc5a-538b879c95d5') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('恒', 'N2', 'constancy, always', 'Hằng, Cắng, Căng', ARRAY['コウ'], ARRAY['つね','つねに'], 9, '1659d447-8145-42d3-8262-2d05cea9f834') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('慌', 'N2', 'disconcerted, be confused, lose one''s head', 'Hoảng', ARRAY['コウ'], ARRAY['あわ.てる','あわ.ただしい'], 12, '1659d447-8145-42d3-8262-2d05cea9f834') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('抗', 'N2', 'confront, resist, defy, oppose', 'Kháng', ARRAY['コウ'], ARRAY['あらが.う'], 7, 'eaca9807-b2da-4d99-8585-13d429ea249d') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('拘', 'N2', 'arrest, seize, concerned, adhere to, despite', 'Câu, Cù', ARRAY['コウ'], ARRAY['かか.わる'], 8, 'eaca9807-b2da-4d99-8585-13d429ea249d') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('控', 'N2', 'withdraw, draw in, hold back, refrain from, be moderate', 'Khống', ARRAY['コウ'], ARRAY['ひか.える','ひか.え'], 11, 'eaca9807-b2da-4d99-8585-13d429ea249d') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('攻', 'N2', 'aggression, attack, criticize, polish', 'Công', ARRAY['コウ'], ARRAY['せ.める'], 7, 'b62aa3f5-bcc4-4c24-944d-b02f3fbb5499') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('昂', 'N2', 'rise', 'Ngang', ARRAY['コウ','ゴウ'], ARRAY['あ.がる','たか.い','たか.ぶる'], 8, 'b8af1855-8d69-4238-bc65-6925c1c993cd') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('晃', 'N2', 'clear', 'Hoảng, Hoáng, Tư, Quáng, Quàng', ARRAY['コウ'], ARRAY['あきらか'], 10, 'b8af1855-8d69-4238-bc65-6925c1c993cd') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('更', 'N3', 'grow late, night watch, sit up late, of course, renew, renovate, again, more and more, further', 'Canh, Cánh', ARRAY['コウ'], ARRAY['さら','さら.に','ふ.ける','ふ.かす'], 7, '124d252b-1dfb-4544-8e76-7327ba3e05c3') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('校', 'N5', 'exam, school, printing, proof, correction', 'Giáo, Hiệu, Hào', ARRAY['コウ','キョウ'], NULL, 10, '80c53d4a-31b5-442f-be48-5d1b64972fae') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('構', 'N3', 'posture, stance, appearance, build, set up', 'Cấu', ARRAY['コウ'], ARRAY['かま.える','かま.う'], 14, '80c53d4a-31b5-442f-be48-5d1b64972fae') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('江', 'N2', 'creek, inlet, bay', 'Giang', ARRAY['コウ'], ARRAY['え'], 6, '10673667-6c56-413d-bbd5-a48794fb7725') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('洪', 'N2', 'deluge, flood, vast', 'Hồng', ARRAY['コウ'], NULL, 9, '10673667-6c56-413d-bbd5-a48794fb7725') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('浩', 'N2', 'wide expanse, abundance, vigorous', 'Hạo', ARRAY['コウ'], ARRAY['おおき.い','ひろ.い'], 10, '10673667-6c56-413d-bbd5-a48794fb7725') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('港', 'N3', 'harbor', 'Cảng', ARRAY['コウ'], ARRAY['みなと'], 12, '10673667-6c56-413d-bbd5-a48794fb7725') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('溝', 'N2', 'gutter, ditch, sewer, drain, 10**32', 'Câu', ARRAY['コウ'], ARRAY['みぞ'], 13, '10673667-6c56-413d-bbd5-a48794fb7725') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('甲', 'N2', 'armor, high (voice), A grade, first class, former, instep, carapace', 'Giáp', ARRAY['コウ','カン'], ARRAY['きのえ'], 5, '43d68113-71ea-45ae-9926-6ea616e69ae2') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('皇', 'N2', 'emperor', 'Hoàng', ARRAY['コウ','オウ'], NULL, 9, '3b90f7ed-6228-403f-94bc-50105d4ad47e') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('硬', 'N3', 'stiff, hard', 'Ngạnh', ARRAY['コウ'], ARRAY['かた.い'], 12, 'c3bb7570-e8b9-49cc-bf56-90e74165d503') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('稿', 'N2', 'draft, copy, manuscript, straw', 'Cảo', ARRAY['コウ'], ARRAY['わら','したがき'], 15, '18d824dd-4b06-48c0-9e40-ff5132c75dc9') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('紅', 'N3', 'crimson, deep red', 'Hồng', ARRAY['コウ','ク'], ARRAY['べに','くれない','あか.い'], 9, '2d4eb76f-4fae-4d05-855c-2520845188ed') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('紘', 'N2', 'large', 'Hoành', ARRAY['コウ'], ARRAY['おおづな','つな','つなぐ'], 10, '2d4eb76f-4fae-4d05-855c-2520845188ed') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('絞', 'N2', 'strangle, constrict, wring', 'Giảo, Hào', ARRAY['コウ'], ARRAY['しぼ.る','し.める','し.まる'], 12, '2d4eb76f-4fae-4d05-855c-2520845188ed') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('綱', 'N2', 'hawser, class (genus), rope, cord, cable', 'Cương', ARRAY['コウ'], ARRAY['つな'], 14, '2d4eb76f-4fae-4d05-855c-2520845188ed') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('耕', 'N3', 'till, plow, cultivate', 'Canh', ARRAY['コウ'], ARRAY['たがや.す'], 10, 'bdb2e1ab-be07-4f06-85b2-9de88b38926b') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('考', 'N4', 'consider, think over', 'Khảo', ARRAY['コウ'], ARRAY['かんが.える','かんが.え'], 6, '13550029-946b-4860-8d32-2e58ac036637') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('肯', 'N3', 'agreement, consent, comply with', 'Khẳng, Khải', ARRAY['コウ'], ARRAY['がえんじ.る'], 8, '71cc2465-f238-4f52-b9e3-39f8f95caaba') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('航', 'N3', 'navigate, sail, cruise, fly', 'Hàng', ARRAY['コウ'], NULL, 10, 'c2814223-66bf-4fde-bf2e-3b95fa5d206c') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('荒', 'N3', 'laid waste, rough, rude, wild', 'Hoang', ARRAY['コウ'], ARRAY['あ.らす','あ.れる','あら.い','すさ.ぶ','すさ.む','あ.らし'], 9, '25c57eec-88fa-4e6e-95a2-9ba83b5f4246') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('行', 'N5', 'going, journey, carry out, conduct, act, line, row, bank', 'Hành, Hạnh, Hàng, Hạng', ARRAY['コウ','ギョウ','アン'], ARRAY['い.く','ゆ.く','-ゆ.き','-ゆき','-い.き','-いき','おこな.う','おこ.なう'], 6, '837ea248-33b4-4366-9517-d190cc876855') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('衡', 'N2', 'equilibrium, measuring rod, scale', 'Hành, Hoành', ARRAY['コウ'], NULL, 16, '837ea248-33b4-4366-9517-d190cc876855') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('講', 'N3', 'lecture, club, association', 'Giảng', ARRAY['コウ'], NULL, 17, '7fd47228-ad16-439a-8685-ad9cacdeb95e') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('貢', 'N2', 'tribute, support, finance', 'Cống', ARRAY['コウ','ク'], ARRAY['みつ.ぐ'], 10, '0cb16105-d4c3-4534-9e4e-0eecbad15787') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('購', 'N2', 'subscription, buy', 'Cấu', ARRAY['コウ'], NULL, 17, '0cb16105-d4c3-4534-9e4e-0eecbad15787') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('郊', 'N3', 'outskirts, suburbs, rural area', 'Giao', ARRAY['コウ'], NULL, 9, '57b67155-4755-4cbd-8c34-1edf3d4cb815') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('酵', 'N2', 'fermentation', 'Diếu', ARRAY['コウ'], NULL, 14, '12e487c3-d245-437b-b197-9593f0487352') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('鉱', 'N3', 'mineral, ore', 'Khoáng', ARRAY['コウ'], ARRAY['あらがね'], 13, 'c3b48b38-6414-47f2-a7ac-d72a85c0e35a') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('鋼', 'N2', 'steel', 'Cương', ARRAY['コウ'], ARRAY['はがね'], 16, 'c3b48b38-6414-47f2-a7ac-d72a85c0e35a') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('降', 'N3', 'descend, precipitate, fall, surrender', 'Hàng, Giáng', ARRAY['コウ','ゴ'], ARRAY['お.りる','お.ろす','ふ.る','ふ.り','くだ.る','くだ.す'], 10, 'b85628b0-3f6a-420a-91c7-0cfbd5055459') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('項', 'N2', 'paragraph, nape of neck, clause, item, term (expression)', 'Hạng', ARRAY['コウ'], ARRAY['うなじ'], 12, 'be4fe89f-bae1-4238-8aad-4789348c0e13') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('香', 'N3', 'incense, smell, perfume', 'Hương', ARRAY['コウ','キョウ'], ARRAY['か','かお.り','かお.る'], 9, '51dd4b53-71b3-4a03-9c1c-0c0f58befe39') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('高', 'N5', 'tall, high, expensive', 'Cao', ARRAY['コウ'], ARRAY['たか.い','たか','-だか','たか.まる','たか.める'], 10, '36a08b28-9635-4c85-aee5-51d15f749d46') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('鴻', 'N2', 'large bird, wild goose, large, great, powerful, prosperous', 'Hồng', ARRAY['コウ','ゴウ'], ARRAY['おおとり','ひしくい','おおがり'], 17, 'a5d543cc-57c8-4627-8531-64c511b7bc11') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('剛', 'N2', 'sturdy, strength', 'Cương', ARRAY['ゴウ'], NULL, 10, 'bc6a1cef-e769-454c-a64f-910a5e1b5d74') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('号', 'N3', 'nickname, number, item, title, pseudonym, name, call', 'Hiệu', ARRAY['ゴウ'], ARRAY['さけ.ぶ','よびな'], 5, 'a54e08f0-b1f4-49b0-bdcd-1fcfab9f5eb7') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('合', 'N4', 'fit, suit, join, 0.1', 'Hợp, Cáp', ARRAY['ゴウ','ガッ','カッ'], ARRAY['あ.う','-あ.う','あ.い','あい-','-あ.い','-あい','あ.わす','あ.わせる','-あ.わせる'], 6, 'a54e08f0-b1f4-49b0-bdcd-1fcfab9f5eb7') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('拷', 'N2', 'torture, beat', 'Khảo', ARRAY['ゴウ'], NULL, 9, 'eaca9807-b2da-4d99-8585-13d429ea249d') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('豪', 'N2', 'overpowering, great, powerful, excelling, Australia', 'Hào', ARRAY['ゴウ'], ARRAY['えら.い'], 14, '4cb349f0-c2d2-4a1a-805b-18c202dcc4e2') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('克', 'N2', 'overcome, kindly, skillfully', 'Khắc', ARRAY['コク'], ARRAY['か.つ'], 7, '88165dcc-9e82-4204-80b3-e041b6649197') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('刻', 'N3', 'engrave, cut fine, chop, hash, mince, time, carving', 'Khắc', ARRAY['コク'], ARRAY['きざ.む','きざ.み'], 8, 'bc6a1cef-e769-454c-a64f-910a5e1b5d74') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('告', 'N3', 'revelation, tell, inform, announce', 'Cáo, Cốc, Cáu, Kiếu', ARRAY['コク'], ARRAY['つ.げる'], 7, 'a54e08f0-b1f4-49b0-bdcd-1fcfab9f5eb7') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('国', 'N5', 'country', 'Quốc, Cuốc', ARRAY['コク'], ARRAY['くに'], 8, 'd6dd2a4a-effd-48d8-baaa-60e2d46cfc4d') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('穀', 'N2', 'cereals, grain', 'Cốc', ARRAY['コク'], NULL, 14, '18d824dd-4b06-48c0-9e40-ff5132c75dc9') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('酷', 'N2', 'cruel, severe, atrocious, unjust', 'Khốc', ARRAY['コク'], ARRAY['ひど.い'], 14, '12e487c3-d245-437b-b197-9593f0487352') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('黒', 'N4', 'black', 'Hắc', ARRAY['コク'], ARRAY['くろ','くろ.ずむ','くろ.い'], 11, '59a02dd4-c1d1-4447-8c1a-a3f367d22dc3') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('獄', 'N2', 'prison, jail', 'Ngục', ARRAY['ゴク'], NULL, 14, '060e9144-2828-4302-b284-f6ac8ea6ae51') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('腰', 'N3', 'loins, hips, waist, low wainscoting', 'Yêu', ARRAY['ヨウ'], ARRAY['こし'], 13, '71cc2465-f238-4f52-b9e3-39f8f95caaba') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('骨', 'N3', 'skeleton, bone, remains, frame', 'Cốt', ARRAY['コツ'], ARRAY['ほね'], 10, '9ef4bebb-2563-4c71-80cf-961709c74223') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('込', 'N3', 'crowded, mixture, in bulk, included, (kokuji)', 'Liêu', NULL, ARRAY['-こ.む','こ.む','こ.み','-こ.み','こ.める'], 5, '371180fe-c78a-477d-b628-86c3e88e03f1') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('今', 'N5', 'now', 'Kim', ARRAY['コン','キン'], ARRAY['いま'], 4, '78419994-196d-4445-8165-a6029d33a0ff') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('困', 'N3', 'quandary, become distressed, annoyed', 'Khốn', ARRAY['コン'], ARRAY['こま.る'], 7, 'd6dd2a4a-effd-48d8-baaa-60e2d46cfc4d') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('墾', 'N2', 'ground-breaking, open up farmland', 'Khẩn', ARRAY['コン'], ARRAY['は.る','ひら.く'], 16, '2fd61440-db3f-4cd5-8101-9e74019df262') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('婚', 'N3', 'marriage', 'Hôn', ARRAY['コン'], NULL, 11, '2b2beef1-465e-418b-9883-672cd0e0a712') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('恨', 'N2', 'regret, bear a grudge, resentment, malice, hatred', 'Hận', ARRAY['コン'], ARRAY['うら.む','うら.めしい'], 9, '1659d447-8145-42d3-8262-2d05cea9f834') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('懇', 'N2', 'sociable, kind, courteous, hospitable, cordial', 'Khẩn', ARRAY['コン'], ARRAY['ねんご.ろ'], 17, '1659d447-8145-42d3-8262-2d05cea9f834') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('昆', 'N2', 'descendants, elder brother, insect', 'Côn', ARRAY['コン'], NULL, 8, 'b8af1855-8d69-4238-bc65-6925c1c993cd') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('根', 'N3', 'root, radical, head (pimple)', 'Căn', ARRAY['コン'], ARRAY['ね','-ね'], 10, '80c53d4a-31b5-442f-be48-5d1b64972fae') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('混', 'N3', 'mix, blend, confuse', 'Hỗn, Cổn', ARRAY['コン'], ARRAY['ま.じる','-ま.じり','ま.ざる','ま.ぜる','こ.む'], 11, '10673667-6c56-413d-bbd5-a48794fb7725') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('紺', 'N2', 'dark blue, navy', 'Cám', ARRAY['コン'], NULL, 11, '2d4eb76f-4fae-4d05-855c-2520845188ed') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('魂', 'N2', 'soul, spirit', 'Hồn', ARRAY['コン'], ARRAY['たましい','たま'], 14, '768dd18f-b077-4421-bb5c-32535db0cd4b') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('佐', 'N2', 'assistant, help', 'Tá', ARRAY['サ'], NULL, 7, '78419994-196d-4445-8165-a6029d33a0ff') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('唆', 'N2', 'tempt, seduce, instigate, promote', 'Toa', ARRAY['サ'], ARRAY['そそ.る','そそのか.す'], 10, 'a54e08f0-b1f4-49b0-bdcd-1fcfab9f5eb7') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('嵯', 'N2', 'steep, craggy, rugged', 'Tha', ARRAY['サ','シ'], NULL, 13, 'a2f58e0e-c558-4282-80ff-1d8088c5f250') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('左', 'N5', 'left', 'Tả, Tá', ARRAY['サ','シャ'], ARRAY['ひだり'], 5, '67ad0176-509d-4b25-8257-860164c92119') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('差', 'N3', 'distinction, difference, variation, discrepancy, margin, balance', 'Soa, Si, Sai, Sái', ARRAY['サ'], ARRAY['さ.す','さ.し'], 10, '67ad0176-509d-4b25-8257-860164c92119') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('査', 'N3', 'investigate', 'Tra', ARRAY['サ'], NULL, 9, '80c53d4a-31b5-442f-be48-5d1b64972fae') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('沙', 'N2', 'sand', 'Sa, Sá', ARRAY['サ','シャ'], ARRAY['すな','よなげる'], 7, '10673667-6c56-413d-bbd5-a48794fb7725') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('瑳', 'N2', 'polish, brilliant white luster of a gem, artful smile', 'Tha', ARRAY['サ'], ARRAY['みが.く'], 14, '1450b570-89aa-4b1c-9e48-32bc25298929') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('砂', 'N3', 'sand', 'Sa', ARRAY['サ','シャ'], ARRAY['すな'], 9, 'c3bb7570-e8b9-49cc-bf56-90e74165d503') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('詐', 'N2', 'lie, falsehood, deceive, pretend', 'Trá', ARRAY['サ'], ARRAY['いつわ.る'], 12, '7fd47228-ad16-439a-8685-ad9cacdeb95e') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('鎖', 'N2', 'chain, irons, connection', 'Tỏa', ARRAY['サ'], ARRAY['くさり','とざ.す'], 18, 'c3b48b38-6414-47f2-a7ac-d72a85c0e35a') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('裟', 'N2', 'Buddhist surplice', 'Sa', ARRAY['サ','シャ'], NULL, 13, '9c5b95cd-6590-4a03-8c61-a68c80da3c8c') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('座', 'N3', 'squat, seat, cushion, gathering, sit', 'Tọa', ARRAY['ザ'], ARRAY['すわ.る'], 10, '2417a6bf-65df-4c8a-a8d0-fba42aeb96ed') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('債', 'N2', 'bond, loan, debt', 'Trái', ARRAY['サイ'], NULL, 13, '78419994-196d-4445-8165-a6029d33a0ff') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('催', 'N2', 'sponsor, hold (a meeting), give (a dinner)', 'Thôi', ARRAY['サイ'], ARRAY['もよう.す','もよお.す'], 13, '78419994-196d-4445-8165-a6029d33a0ff') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('再', 'N3', 'again, twice, second time', 'Tái', ARRAY['サイ','サ'], ARRAY['ふたた.び'], 6, '606b6268-d8c0-4e50-98b6-aebb5465850d') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('最', 'N3', 'utmost, most, extreme', 'Tối', ARRAY['サイ','シュ'], ARRAY['もっと.も','つま'], 12, '124d252b-1dfb-4544-8e76-7327ba3e05c3') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('哉', 'N2', 'how, what, alas, question mark, exclamation mark', 'Tai', ARRAY['サイ'], ARRAY['かな','や'], 9, 'a54e08f0-b1f4-49b0-bdcd-1fcfab9f5eb7') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('妻', 'N3', 'wife, spouse', 'Thê, Thế', ARRAY['サイ'], ARRAY['つま'], 8, '2b2beef1-465e-418b-9883-672cd0e0a712') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('宰', 'N2', 'superintend, manager, rule', 'Tể', ARRAY['サイ'], NULL, 10, '66a403fd-ce7c-4ecc-820d-3f1718e79119') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('彩', 'N2', 'coloring, paint, makeup', 'Thải, Thái', ARRAY['サイ'], ARRAY['いろど.る'], 11, 'a141edd3-78dd-46cc-b260-1b2cfc79e5ed') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('才', 'N3', 'genius, years old, cubic shaku', 'Tài', ARRAY['サイ'], NULL, 3, 'eaca9807-b2da-4d99-8585-13d429ea249d') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('採', 'N3', 'pick, take, fetch, take up', 'Thải, Thái', ARRAY['サイ'], ARRAY['と.る'], 11, 'eaca9807-b2da-4d99-8585-13d429ea249d') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('栽', 'N2', 'plantation, planting', 'Tài, Tải', ARRAY['サイ'], NULL, 10, '80c53d4a-31b5-442f-be48-5d1b64972fae') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('歳', 'N3', 'year-end, age, occasion, opportunity', 'Tuế, Tuổi', ARRAY['サイ','セイ'], ARRAY['とし','とせ','よわい'], 13, '5abe55eb-4f3c-429f-8c1f-dfa8aca4b1f4') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('済', 'N3', 'settle (debt, etc.), relieve (burden), finish, come to an end, excusable, need not', 'Tế, Tề', ARRAY['サイ','セイ'], ARRAY['す.む','-ず.み','-ずみ','す.まない','す.ます','-す.ます','すく.う','な.す','わたし','わた.る'], 11, '10673667-6c56-413d-bbd5-a48794fb7725') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('災', 'N2', 'disaster, calamity, woe, curse, evil', 'Tai', ARRAY['サイ'], ARRAY['わざわ.い'], 7, '831cfc6a-79c9-4ebb-a4cc-ba737a36caf7') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('采', 'N2', 'dice, form, appearance, take, gather, coloring', 'Thải, Thái', ARRAY['サイ'], ARRAY['と.る','いろどり'], 8, 'dae1e065-0fb8-4121-99e2-234c536e5d7b') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('砕', 'N2', 'smash, break, crush, familiar, popular', 'Toái', ARRAY['サイ'], ARRAY['くだ.く','くだ.ける'], 9, 'c3bb7570-e8b9-49cc-bf56-90e74165d503') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('祭', 'N3', 'ritual, offer prayers, celebrate, deify, enshrine, worship', 'Tế, Sái', ARRAY['サイ'], ARRAY['まつ.る','まつ.り','まつり'], 11, 'aa655283-0fb9-4ae0-a339-aa1437f00ad1') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('斎', 'N2', 'purification, Buddhist food, room, worship, avoid, alike', 'Chái, Chay, Trai, Trơi', ARRAY['サイ'], ARRAY['とき','つつし.む','ものいみ','い.む','いわ.う','いつ.く'], 11, '0382437a-c430-4ec1-bbc0-ca8deea360c9') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('細', 'N3', 'dainty, get thin, taper, slender, narrow, detailed, precise', 'Tế', ARRAY['サイ'], ARRAY['ほそ.い','ほそ.る','こま.か','こま.かい'], 11, '2d4eb76f-4fae-4d05-855c-2520845188ed') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('菜', 'N4', 'vegetable, side dish, greens', 'Thái', ARRAY['サイ'], ARRAY['な'], 11, '25c57eec-88fa-4e6e-95a2-9ba83b5f4246') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('裁', 'N2', 'tailor, judge, decision, cut out (pattern)', 'Tài', ARRAY['サイ'], ARRAY['た.つ','さば.く'], 12, '9c5b95cd-6590-4a03-8c61-a68c80da3c8c') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('載', 'N2', 'ride, board, get on, place, spread, 10**44, record, publish', 'Tái, Tại, Tải', ARRAY['サイ'], ARRAY['の.せる','の.る'], 13, '869f4859-e3d9-4a6a-8839-d1bf7a715a34') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('際', 'N3', 'occasion, side, edge, verge, dangerous, adventurous, indecent, time, when', 'Tế', ARRAY['サイ'], ARRAY['きわ','-ぎわ'], 14, 'b85628b0-3f6a-420a-91c7-0cfbd5055459') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('剤', 'N2', 'dose, medicine, drug', 'Tề', ARRAY['ザイ','スイ','セイ'], ARRAY['かる','けず.る'], 10, 'bc6a1cef-e769-454c-a64f-910a5e1b5d74') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('在', 'N3', 'exist, outskirts, suburbs, located in', 'Tại', ARRAY['ザイ'], ARRAY['あ.る'], 6, '2fd61440-db3f-4cd5-8101-9e74019df262') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('材', 'N3', 'lumber, log, timber, wood, materials, ingredients, talent', 'Tài', ARRAY['ザイ'], NULL, 7, '80c53d4a-31b5-442f-be48-5d1b64972fae') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('罪', 'N3', 'guilt, sin, crime, fault, blame, offense', 'Tội', ARRAY['ザイ'], ARRAY['つみ'], 13, '416f2a82-f8af-4fcc-b9e2-5cb48c3ace0e') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('財', 'N3', 'property, money, wealth, assets', 'Tài', ARRAY['ザイ','サイ','ゾク'], ARRAY['たから'], 10, '0cb16105-d4c3-4534-9e4e-0eecbad15787') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('冴', 'N2', 'be clear, serene, cold, skilful', 'Hộ', ARRAY['ゴ','コ'], ARRAY['さ.える','こお.る','ひ.える'], 7, '23a10182-2ed1-47fd-a83e-9381dcd8dfad') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('坂', 'N3', 'slope, incline, hill', 'Phản', ARRAY['ハン'], ARRAY['さか'], 7, '2fd61440-db3f-4cd5-8101-9e74019df262') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('咲', 'N3', 'blossom, bloom', 'Tiếu', ARRAY['ショウ'], ARRAY['さ.く','-ざき'], 9, 'a54e08f0-b1f4-49b0-bdcd-1fcfab9f5eb7') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('崎', 'N2', 'promontory, cape, spit', 'Khi', ARRAY['キ'], ARRAY['さき','さい','みさき'], 11, 'a2f58e0e-c558-4282-80ff-1d8088c5f250') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('作', 'N4', 'make, production, prepare, build', 'Tác', ARRAY['サク','サ'], ARRAY['つく.る','つく.り','-づく.り'], 7, '78419994-196d-4445-8165-a6029d33a0ff') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('削', 'N2', 'plane, sharpen, whittle, pare, shave', 'Tước', ARRAY['サク'], ARRAY['けず.る','はつ.る','そ.ぐ'], 9, 'bc6a1cef-e769-454c-a64f-910a5e1b5d74') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('搾', 'N2', 'squeeze', 'Trá', ARRAY['サク'], ARRAY['しぼ.る'], 13, 'eaca9807-b2da-4d99-8585-13d429ea249d') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('昨', 'N3', 'yesterday, previous', 'Tạc', ARRAY['サク'], NULL, 9, 'b8af1855-8d69-4238-bc65-6925c1c993cd') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('朔', 'N2', 'conjunction (astronomy), first day of month, north', 'Sóc', ARRAY['サク'], ARRAY['ついたち'], 10, 'a55eee17-b099-4cb3-810a-0a4c9dbc7ea9') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('策', 'N2', 'scheme, plan, policy, step, means', 'Sách', ARRAY['サク'], NULL, 12, 'da702964-289f-443e-995f-0f7c0d2a57f3') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('索', 'N2', 'cord, rope, searching, inquiring', 'Tác, Sách', ARRAY['サク'], NULL, 10, '2d4eb76f-4fae-4d05-855c-2520845188ed') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('錯', 'N2', 'confused, mix, be in disorder', 'Thác', ARRAY['サク','シャク'], NULL, 16, 'c3b48b38-6414-47f2-a7ac-d72a85c0e35a') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('桜', 'N2', 'cherry', 'Tí, Tý', ARRAY['オウ','ヨウ'], ARRAY['さくら'], 10, '80c53d4a-31b5-442f-be48-5d1b64972fae') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('笹', 'N2', 'bamboo grass, (kokuji)', 'Thế', NULL, ARRAY['ささ'], 11, 'da702964-289f-443e-995f-0f7c0d2a57f3') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('冊', 'N3', 'tome, counter for books, volume', 'Sách, Sạch', ARRAY['サツ','サク'], ARRAY['ふみ'], 5, '606b6268-d8c0-4e50-98b6-aebb5465850d') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('刷', 'N3', 'printing, print, brush', 'Xoát, Loát', ARRAY['サツ'], ARRAY['す.る','-ず.り','-ずり','は.く'], 8, 'bc6a1cef-e769-454c-a64f-910a5e1b5d74') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('察', 'N3', 'guess, presume, surmise, judge, understand', 'Sát', ARRAY['サツ'], NULL, 14, '66a403fd-ce7c-4ecc-820d-3f1718e79119') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('撮', 'N2', 'snapshot, take pictures', 'Toát', ARRAY['サツ'], ARRAY['と.る','つま.む','-ど.り'], 15, 'eaca9807-b2da-4d99-8585-13d429ea249d') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('擦', 'N2', 'grate, rub, scratch, scrape, chafe, scour', 'Sát', ARRAY['サツ'], ARRAY['す.る','す.れる','-ず.れ','こす.る','こす.れる'], 17, 'eaca9807-b2da-4d99-8585-13d429ea249d') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('札', 'N3', 'tag, paper money, counter for bonds, placard, bid', 'Trát', ARRAY['サツ'], ARRAY['ふだ'], 5, '80c53d4a-31b5-442f-be48-5d1b64972fae') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('殺', 'N3', 'kill, murder, butcher, slice off, split, diminish, reduce, spoil', 'Sát, Sái, Tát', ARRAY['サツ','サイ','セツ'], ARRAY['ころ.す','-ごろ.し','そ.ぐ','あや.める'], 10, '6d0baa7b-8a58-4bf8-915f-3a6f6c134440') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('雑', 'N3', 'miscellaneous', 'Tạp', ARRAY['ザツ','ゾウ'], ARRAY['まじ.える','まじ.る'], 14, 'e9426c63-0e1d-4399-a59e-ce2e851fa615') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('皐', 'N2', 'swamp, shore, fifth month', 'Cao', ARRAY['コウ'], ARRAY['さつき'], 11, '3b90f7ed-6228-403f-94bc-50105d4ad47e') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('皿', 'N3', 'dish, a helping, plate', 'Mãnh', ARRAY['ベイ'], ARRAY['さら'], 5, '12bd4f5a-a4fb-451b-b25d-418406c683fa') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('三', 'N5', 'three', 'Tam, Tám', ARRAY['サン','ゾウ'], ARRAY['み','み.つ','みっ.つ'], 3, '12f0d122-51f5-4c55-8a67-d3fc53818027') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('傘', 'N2', 'umbrella', 'Tản', ARRAY['サン'], ARRAY['かさ'], 12, '78419994-196d-4445-8165-a6029d33a0ff') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('参', 'N3', 'nonplussed, three (in documents), going, coming, visiting, visit, be defeated, die, be madly in love, participate, take part in', 'Sâm, Tam, Tảm, Tham, Xam, Khươm', ARRAY['サン','シン'], ARRAY['まい.る','まい-','まじわる','みつ'], 8, '6e625255-083f-41d7-9990-32ade10636bd') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('山', 'N5', 'mountain', 'San, Sơn', ARRAY['サン','セン'], ARRAY['やま'], 3, 'a2f58e0e-c558-4282-80ff-1d8088c5f250') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('惨', 'N2', 'wretched, disaster, cruelty, harsh', 'Thảm, Thom', ARRAY['サン','ザン'], ARRAY['みじ.め','いた.む','むご.い'], 11, '1659d447-8145-42d3-8262-2d05cea9f834') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('散', 'N3', 'scatter, disperse, spend, squander', 'Tán, Tản', ARRAY['サン'], ARRAY['ち.る','ち.らす','-ち.らす','ち.らかす','ち.らかる','ち.らばる','ばら','ばら.ける'], 12, 'b62aa3f5-bcc4-4c24-944d-b02f3fbb5499') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('桟', 'N2', 'scaffold, cleat, frame, jetty, bolt (door)', 'San', ARRAY['サン','セン'], ARRAY['かけはし'], 10, '80c53d4a-31b5-442f-be48-5d1b64972fae') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('燦', 'N2', 'brilliant', 'Xán', ARRAY['サン'], ARRAY['さん.たる','あき.らか','きらめ.く','きら.めく'], 17, '831cfc6a-79c9-4ebb-a4cc-ba737a36caf7') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('産', 'N4', 'products, bear, give birth, yield, childbirth, native, property', 'Sản, Sẵn, Sởn', ARRAY['サン'], ARRAY['う.む','う.まれる','うぶ-','む.す'], 11, 'e841c19b-3caf-4d1b-8fdc-6944428d0791') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('算', 'N3', 'calculate, divining, number, abacus, probability', 'Toán', ARRAY['サン'], ARRAY['そろ'], 14, 'da702964-289f-443e-995f-0f7c0d2a57f3') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('蚕', 'N2', 'silkworm', 'Tàm', ARRAY['サン','テン'], ARRAY['かいこ','こ'], 10, '2b1d8e20-f306-465c-b245-cb2dd48f3615') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('賛', 'N3', 'approve, praise, title or inscription on picture, assist, agree with', 'Tán', ARRAY['サン'], ARRAY['たす.ける','たた.える'], 15, '0cb16105-d4c3-4534-9e4e-0eecbad15787') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('酸', 'N2', 'acid, bitterness, sour, tart', 'Toan', ARRAY['サン'], ARRAY['す.い'], 14, '12e487c3-d245-437b-b197-9593f0487352') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('暫', 'N2', 'temporarily, a while, moment, long time', 'Tạm', ARRAY['ザン'], ARRAY['しばら.く'], 15, 'b8af1855-8d69-4238-bc65-6925c1c993cd') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('残', 'N3', 'remainder, leftover, balance', 'Tàn', ARRAY['ザン','サン'], ARRAY['のこ.る','のこ.す','そこな.う','のこ.り'], 10, 'e565e3e9-46e0-49a6-ba2f-0955becc9c08') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('仕', 'N4', 'attend, doing, official, serve', 'Sĩ', ARRAY['シ','ジ'], ARRAY['つか.える'], 5, '78419994-196d-4445-8165-a6029d33a0ff') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('伺', 'N3', 'pay respects, visit, ask, inquire, question, implore', 'Tý, Tứ', ARRAY['シ'], ARRAY['うかが.う'], 7, '78419994-196d-4445-8165-a6029d33a0ff') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('使', 'N4', 'use, send on a mission, order, messenger, envoy, ambassador, cause', 'Sử, Sứ', ARRAY['シ'], ARRAY['つか.う','つか.い','-つか.い','-づか.い'], 8, '78419994-196d-4445-8165-a6029d33a0ff') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('刺', 'N3', 'thorn, pierce, stab, prick, sting, calling card', 'Thứ, Thích', ARRAY['シ'], ARRAY['さ.す','さ.さる','さ.し','さし','とげ'], 8, 'bc6a1cef-e769-454c-a64f-910a5e1b5d74') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('司', 'N3', 'director, official, govt office, rule, administer', 'Ti, Tư', ARRAY['シ'], ARRAY['つかさど.る'], 5, 'a54e08f0-b1f4-49b0-bdcd-1fcfab9f5eb7') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('史', 'N3', 'history, chronicle', 'Sử', ARRAY['シ'], NULL, 5, 'a54e08f0-b1f4-49b0-bdcd-1fcfab9f5eb7') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('嗣', 'N2', 'heir, succeed', 'Tự', ARRAY['シ'], NULL, 13, 'a54e08f0-b1f4-49b0-bdcd-1fcfab9f5eb7') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('四', 'N5', 'four', 'Tứ', ARRAY['シ'], ARRAY['よ','よ.つ','よっ.つ','よん'], 5, 'd6dd2a4a-effd-48d8-baaa-60e2d46cfc4d') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('士', 'N2', 'gentleman, scholar, samurai, samurai radical (no. 33)', 'Sĩ', ARRAY['シ'], ARRAY['さむらい'], 3, 'd76d5b2c-c675-4484-a875-14a4e0534449') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('始', 'N4', 'commence, begin', 'Thủy, Thí', ARRAY['シ'], ARRAY['はじ.める','-はじ.める','はじ.まる'], 8, '2b2beef1-465e-418b-9883-672cd0e0a712') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('姉', 'N4', 'elder sister', 'Tỉ, Tỷ, Chị', ARRAY['シ'], ARRAY['あね','はは'], 8, '2b2beef1-465e-418b-9883-672cd0e0a712') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('姿', 'N2', 'figure, form, shape', 'Tư', ARRAY['シ'], ARRAY['すがた'], 9, '2b2beef1-465e-418b-9883-672cd0e0a712') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('子', 'N5', 'child, sign of the rat, 11PM-1AM, first sign of Chinese zodiac', 'Tử, Tý', ARRAY['シ','ス','ツ'], ARRAY['こ','-こ','ね'], 3, '7c3ff4e1-b8e9-4c25-ba10-0fbf8198a71d') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('市', 'N4', 'market, city, town', 'Thị', ARRAY['シ'], ARRAY['いち'], 5, 'c3c77b72-afa6-4b3f-acd2-b9a7f991cf53') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('師', 'N3', 'expert, teacher, master, model, exemplar, army (incl. counter), war', 'Sư', ARRAY['シ'], ARRAY['いくさ'], 10, 'c3c77b72-afa6-4b3f-acd2-b9a7f991cf53') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('志', 'N3', 'intention, plan, resolve, aspire, motive, hopes, shilling', 'Chí', ARRAY['シ'], ARRAY['シリング','こころざ.す','こころざし'], 7, '1659d447-8145-42d3-8262-2d05cea9f834') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('思', 'N4', 'think', 'Tư, Tứ, Tai', ARRAY['シ'], ARRAY['おも.う','おもえら.く','おぼ.す'], 9, '1659d447-8145-42d3-8262-2d05cea9f834') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('指', 'N3', 'finger, point to, indicate, put into, play (chess), measure (ruler)', 'Chỉ', ARRAY['シ'], ARRAY['ゆび','さ.す','-さ.し'], 9, 'eaca9807-b2da-4d99-8585-13d429ea249d') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('支', 'N3', 'branch, support, sustain, branch radical (no. 65)', 'Chi', ARRAY['シ'], ARRAY['ささ.える','つか.える','か.う'], 4, '66724dc1-1613-4a7b-876a-1f872cd16648') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('施', 'N2', 'give, bestow, perform, alms', 'Thi, Thí, Dị, Thỉ', ARRAY['シ','セ'], ARRAY['ほどこ.す'], 9, '816fcd71-fef2-4808-a4c6-60bc531d2d01') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('旨', 'N2', 'delicious, relish, show a liking for, purport, will, clever, expert', 'Chỉ', ARRAY['シ'], ARRAY['むね','うま.い'], 6, 'b8af1855-8d69-4238-bc65-6925c1c993cd') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('枝', 'N3', 'bough, branch, twig, limb, counter for branches', 'Chi, Kỳ', ARRAY['シ'], ARRAY['えだ'], 8, '80c53d4a-31b5-442f-be48-5d1b64972fae') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('止', 'N4', 'stop, halt', 'Chỉ', ARRAY['シ'], ARRAY['と.まる','-ど.まり','と.める','-と.める','-ど.め','とど.める','とど.め','とど.まる','や.める','や.む','-や.む','よ.す','-さ.す','-さ.し'], 4, '5abe55eb-4f3c-429f-8c1f-dfa8aca4b1f4') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('死', 'N4', 'death, die', 'Tử', ARRAY['シ'], ARRAY['し.ぬ','し.に-'], 6, 'e565e3e9-46e0-49a6-ba2f-0955becc9c08') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('氏', 'N2', 'family name, surname, clan', 'Thị, Chi', ARRAY['シ'], ARRAY['うじ','-うじ'], 4, '6165d24e-8a71-425f-b631-61bbede22729') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('祉', 'N2', 'welfare, happiness', 'Chỉ', ARRAY['シ'], NULL, 8, 'aa655283-0fb9-4ae0-a339-aa1437f00ad1') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('私', 'N4', 'private, I, me', 'Tư', ARRAY['シ'], ARRAY['わたくし','わたし'], 7, '18d824dd-4b06-48c0-9e40-ff5132c75dc9') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('糸', 'N3', 'thread', 'Mịch', ARRAY['シ'], ARRAY['いと'], 6, '2d4eb76f-4fae-4d05-855c-2520845188ed') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('紙', 'N4', 'paper', 'Chỉ', ARRAY['シ'], ARRAY['かみ'], 10, '2d4eb76f-4fae-4d05-855c-2520845188ed') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('紫', 'N2', 'purple, violet', 'Tử', ARRAY['シ'], ARRAY['むらさき'], 12, '2d4eb76f-4fae-4d05-855c-2520845188ed') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('肢', 'N2', 'limb, arms & legs', 'Chi', ARRAY['シ'], NULL, 8, '71cc2465-f238-4f52-b9e3-39f8f95caaba') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('脂', 'N3', 'fat, grease, tallow, lard, rosin, gum, tar', 'Chi', ARRAY['シ'], ARRAY['あぶら'], 10, '71cc2465-f238-4f52-b9e3-39f8f95caaba') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('至', 'N2', 'climax, arrive, proceed, reach, attain, result in', 'Chí', ARRAY['シ'], ARRAY['いた.る'], 6, 'f5b41e40-d83c-46e0-baf3-885e32e9947a') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('視', 'N2', 'inspection, regard as, see, look at', 'Thị', ARRAY['シ'], ARRAY['み.る'], 11, 'd260f2a4-eacb-4447-97ac-2ef7518f6af8') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('詞', 'N3', 'part of speech, words, poetry', 'Từ', ARRAY['シ'], ARRAY['ことば'], 12, '7fd47228-ad16-439a-8685-ad9cacdeb95e') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('詩', 'N2', 'poem, poetry', 'Thi', ARRAY['シ'], ARRAY['うた'], 13, '7fd47228-ad16-439a-8685-ad9cacdeb95e') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('試', 'N4', 'test, try, attempt, experiment, ordeal', 'Thí', ARRAY['シ'], ARRAY['こころ.みる','ため.す'], 13, '7fd47228-ad16-439a-8685-ad9cacdeb95e') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('誌', 'N3', 'document, records', 'Chí', ARRAY['シ'], NULL, 14, '7fd47228-ad16-439a-8685-ad9cacdeb95e') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('諮', 'N2', 'consult with', 'Ti, Tư', ARRAY['シ'], ARRAY['はか.る'], 16, '7fd47228-ad16-439a-8685-ad9cacdeb95e') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('資', 'N3', 'assets, resources, capital, funds, data, be conducive to, contribute to', 'Tư', ARRAY['シ'], NULL, 13, '0cb16105-d4c3-4534-9e4e-0eecbad15787') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('賜', 'N2', 'grant, gift, boon, results', 'Tứ', ARRAY['シ'], ARRAY['たまわ.る','たま.う','たも.う'], 15, '0cb16105-d4c3-4534-9e4e-0eecbad15787') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('雌', 'N2', 'feminine, female', 'Thư', ARRAY['シ'], ARRAY['め-','めす','めん'], 14, 'e9426c63-0e1d-4399-a59e-ce2e851fa615') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('飼', 'N2', 'domesticate, raise, keep, feed', 'Tự', ARRAY['シ'], ARRAY['か.う'], 13, '575f81b8-d9ab-421e-ac61-7d25cf8751da') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('歯', 'N3', 'tooth, cog', 'Xỉ', ARRAY['シ'], ARRAY['よわい','は','よわ.い','よわい.する'], 12, '5abe55eb-4f3c-429f-8c1f-dfa8aca4b1f4') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('事', 'N4', 'matter, thing, fact, business, reason, possibly', 'Sự', ARRAY['ジ','ズ'], ARRAY['こと','つか.う','つか.える'], 8, '9df04e71-70fe-4093-bc6b-bd76d3d32310') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('似', 'N3', 'becoming, resemble, counterfeit, imitate, suitable', 'Tự', ARRAY['ジ'], ARRAY['に.る','ひ.る'], 7, '78419994-196d-4445-8165-a6029d33a0ff') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('侍', 'N2', 'waiter, samurai, wait upon, serve', 'Thị', ARRAY['ジ','シ'], ARRAY['さむらい','はべ.る'], 8, '78419994-196d-4445-8165-a6029d33a0ff') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('児', 'N3', 'newborn babe, child, young of animals', 'Nhi', ARRAY['ジ','ニ','ゲイ'], ARRAY['こ','-こ','-っこ'], 7, '88165dcc-9e82-4204-80b3-e041b6649197') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('字', 'N4', 'character, letter, word, section of village', 'Tự', ARRAY['ジ'], ARRAY['あざ','あざな','-な'], 6, '7c3ff4e1-b8e9-4c25-ba10-0fbf8198a71d') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('寺', 'N3', 'Buddhist temple', 'Tự', ARRAY['ジ'], ARRAY['てら'], 6, '693998e2-9356-4193-bcef-4b2f79e9e857') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('慈', 'N2', 'mercy', 'Từ', ARRAY['ジ'], ARRAY['いつく.しむ'], 13, '1659d447-8145-42d3-8262-2d05cea9f834') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('持', 'N4', 'hold, have', 'Trì', ARRAY['ジ'], ARRAY['も.つ','-も.ち','も.てる'], 9, 'eaca9807-b2da-4d99-8585-13d429ea249d') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('時', 'N5', 'time, hour', 'Thì, Thời', ARRAY['ジ'], ARRAY['とき','-どき'], 10, 'b8af1855-8d69-4238-bc65-6925c1c993cd') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('次', 'N3', 'next, order, sequence', 'Thứ', ARRAY['ジ','シ'], ARRAY['つ.ぐ','つぎ'], 6, '96d875ed-5269-427a-b3ca-828933e753fc') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('滋', 'N2', 'nourishing, more & more, be luxuriant, planting, turbidity', 'Tư', ARRAY['ジ','シ'], NULL, 12, '10673667-6c56-413d-bbd5-a48794fb7725') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('治', 'N3', 'reign, be at peace, calm down, subdue, quell, govt, cure, heal, rule, conserve', 'Trì, Trị', ARRAY['ジ','チ'], ARRAY['おさ.める','おさ.まる','なお.る','なお.す'], 8, '10673667-6c56-413d-bbd5-a48794fb7725') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('爾', 'N2', 'you, thou, second person', 'Nhĩ', ARRAY['ジ','ニ'], ARRAY['なんじ','しかり','その','のみ','おれ','しか'], 14, 'e9b028db-337d-4945-b609-c32f8ea3cde8') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('璽', 'N2', 'emperor''s seal', 'Tỉ', ARRAY['ジ'], NULL, 19, '1450b570-89aa-4b1c-9e48-32bc25298929') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('磁', 'N2', 'magnet, porcelain', 'Từ', ARRAY['ジ'], NULL, 14, 'c3bb7570-e8b9-49cc-bf56-90e74165d503') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('示', 'N3', 'show, indicate, point out, express, display', 'Kì, Thị', ARRAY['ジ','シ'], ARRAY['しめ.す'], 5, 'aa655283-0fb9-4ae0-a339-aa1437f00ad1') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('耳', 'N5', 'ear', 'Nhĩ', ARRAY['ジ'], ARRAY['みみ'], 6, '161e8737-630f-4a34-a6b4-6a75a2f52fbc') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('自', 'N4', 'oneself', 'Tự', ARRAY['ジ','シ'], ARRAY['みずか.ら','おの.ずから','おの.ずと'], 6, '82149330-766d-43e4-baf0-d61a00b887e5') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('蒔', 'N2', 'sow (seeds)', 'Thì, Thi', ARRAY['シ','ジ'], ARRAY['う.える','ま.く'], 13, '25c57eec-88fa-4e6e-95a2-9ba83b5f4246') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('辞', 'N3', 'resign, word, term, expression', 'Từ', ARRAY['ジ'], ARRAY['や.める','いな.む'], 13, '95613b40-0633-4cf8-b683-0fc2784bb44a') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('汐', 'N2', 'eventide, tide, salt water, opportunity', 'Tịch', ARRAY['セキ'], ARRAY['しお','うしお','せい'], 6, '10673667-6c56-413d-bbd5-a48794fb7725') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('鹿', 'N2', 'deer', 'Lộc', ARRAY['ロク'], ARRAY['しか','か'], 11, 'deb572ec-2171-40cf-8310-73e2b9929367') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('式', 'N3', 'style, ceremony, rite, function, method, system, form, expression', 'Thức', ARRAY['シキ'], NULL, 6, 'aa69d825-e96b-4b21-90b0-e7e4c8d8bf83') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('識', 'N3', 'discriminating, know, write', 'Thức, Chí', ARRAY['シキ'], ARRAY['し.る','しる.す'], 19, '7fd47228-ad16-439a-8685-ad9cacdeb95e') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('軸', 'N2', 'axis, pivot, stem, stalk, counter for book scrolls', 'Trục', ARRAY['ジク'], NULL, 12, '869f4859-e3d9-4a6a-8839-d1bf7a715a34') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('七', 'N5', 'seven', 'Thất', ARRAY['シチ'], ARRAY['なな','なな.つ','なの'], 2, '12f0d122-51f5-4c55-8a67-d3fc53818027') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('執', 'N2', 'tenacious, take hold, grasp, take to heart', 'Chấp', ARRAY['シツ','シュウ'], ARRAY['と.る'], 11, '2fd61440-db3f-4cd5-8101-9e74019df262') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('失', 'N3', 'lose, error, fault, disadvantage, loss', 'Thất', ARRAY['シツ'], ARRAY['うしな.う','う.せる'], 5, '457c9d33-f2d9-4f61-bca8-910ce7ade194') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('室', 'N4', 'room, apartment, chamber, greenhouse, cellar', 'Thất', ARRAY['シツ'], ARRAY['むろ'], 9, '66a403fd-ce7c-4ecc-820d-3f1718e79119') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('湿', 'N3', 'damp, wet, moist', 'Chập, Sấp, Thấp', ARRAY['シツ','シュウ'], ARRAY['しめ.る','しめ.す','うるお.う','うるお.す'], 12, '10673667-6c56-413d-bbd5-a48794fb7725') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('漆', 'N2', 'lacquer, varnish, seven', 'Tất, Thế', ARRAY['シツ'], ARRAY['うるし'], 14, '10673667-6c56-413d-bbd5-a48794fb7725') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('疾', 'N2', 'rapidly', 'Tật', ARRAY['シツ'], ARRAY['はや.い'], 10, '5688d6a7-12f3-4090-999b-bee052200ce3') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('質', 'N4', 'substance, quality, matter, temperament', 'Chất, Chí', ARRAY['シツ','シチ','チ'], ARRAY['たち','ただ.す','もと','わりふ'], 15, '0cb16105-d4c3-4534-9e4e-0eecbad15787') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('実', 'N3', 'reality, truth, seed, fruit, nut', 'Thực', ARRAY['ジツ','シツ'], ARRAY['み','みの.る','まこと','みの','みち.る'], 8, '66a403fd-ce7c-4ecc-820d-3f1718e79119') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('偲', 'N2', 'recollect, remember', 'Ti, Tai', ARRAY['サイ','シ'], ARRAY['しの.ぶ'], 11, '78419994-196d-4445-8165-a6029d33a0ff') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('芝', 'N2', 'turf, lawn', 'Chi', ARRAY['シ'], ARRAY['しば'], 6, '25c57eec-88fa-4e6e-95a2-9ba83b5f4246') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('舎', 'N2', 'cottage, inn, hut, house, mansion', 'Xá', ARRAY['シャ','セキ'], ARRAY['やど.る'], 8, '78419994-196d-4445-8165-a6029d33a0ff') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('写', 'N4', 'copy, be photographed, describe', 'Tả', ARRAY['シャ','ジャ'], ARRAY['うつ.す','うつ.る','うつ-','うつ.し'], 5, 'c89ec13a-4b2a-4c3d-9167-10f209666df4') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('射', 'N2', 'shoot, shine into, onto, archery', 'Xạ, Dạ, Dịch', ARRAY['シャ'], ARRAY['い.る','さ.す','う.つ'], 10, '693998e2-9356-4193-bcef-4b2f79e9e857') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('捨', 'N3', 'discard, throw away, abandon, resign, reject, sacrifice', 'Xả', ARRAY['シャ'], ARRAY['す.てる'], 11, 'eaca9807-b2da-4d99-8585-13d429ea249d') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('赦', 'N2', 'pardon, forgiveness', 'Xá', ARRAY['シャ'], ARRAY['ゆる.す'], 11, 'b284da4d-d842-4305-a8aa-c347d8dc91ca') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('斜', 'N2', 'diagonal, slanting, oblique', 'Tà, Gia', ARRAY['シャ'], ARRAY['なな.め','はす'], 11, '63f0a5d8-da20-49a8-a73c-8c31621b9c3c') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('煮', 'N2', 'boil, cook', 'Chử', ARRAY['シャ'], ARRAY['に.る','-に','に.える','に.やす'], 12, '831cfc6a-79c9-4ebb-a4cc-ba737a36caf7') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('社', 'N5', 'company, firm, office, association, shrine', 'Xã', ARRAY['シャ'], ARRAY['やしろ'], 7, 'aa655283-0fb9-4ae0-a339-aa1437f00ad1') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('紗', 'N2', 'gauze, gossamer', 'Sa', ARRAY['サ','シャ'], ARRAY['うすぎぬ'], 10, '2d4eb76f-4fae-4d05-855c-2520845188ed') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('者', 'N4', 'someone, person', 'Giả', ARRAY['シャ'], ARRAY['もの'], 8, '13550029-946b-4860-8d32-2e58ac036637') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('謝', 'N2', 'apologize, thank, refuse', 'Tạ', ARRAY['シャ'], ARRAY['あやま.る'], 17, '7fd47228-ad16-439a-8685-ad9cacdeb95e') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('車', 'N5', 'car', 'Xa', ARRAY['シャ'], ARRAY['くるま'], 7, '869f4859-e3d9-4a6a-8839-d1bf7a715a34') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('遮', 'N2', 'intercept, interrupt, obstruct', 'Già', ARRAY['シャ'], ARRAY['さえぎ.る'], 14, '371180fe-c78a-477d-b628-86c3e88e03f1') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('蛇', 'N2', 'snake, serpent, hard drinker', 'Xà, Di', ARRAY['ジャ','ダ','イ','ヤ'], ARRAY['へび'], 11, '2b1d8e20-f306-465c-b245-cb2dd48f3615') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('邪', 'N2', 'wicked, injustice, wrong', 'Tà, Da', ARRAY['ジャ'], ARRAY['よこし.ま'], 8, '57b67155-4755-4cbd-8c34-1edf3d4cb815') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('借', 'N4', 'borrow, rent', 'Tá', ARRAY['シャク'], ARRAY['か.りる'], 10, '78419994-196d-4445-8165-a6029d33a0ff') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('勺', 'N2', 'ladle, one tenth of a go, dip', 'Chước, Thược', ARRAY['シャク'], NULL, 3, '15e2044a-b802-4011-9d93-2da1db623ea2') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('尺', 'N2', 'shaku, Japanese foot, measure, scale, rule', 'Xích', ARRAY['シャク','セキ'], ARRAY['さし'], 4, 'dbb1b9f0-b6d7-4c0b-989a-7a98ab167f37') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('爵', 'N2', 'baron, peerage, court rank', 'Tước', ARRAY['シャク'], NULL, 17, '476c15a0-32ae-42a3-9bca-d72b0f9239c7') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('酌', 'N2', 'bar-tending, serving sake, the host, draw (water), ladle, scoop, pump', 'Chước', ARRAY['シャク'], ARRAY['く.む'], 10, '12e487c3-d245-437b-b197-9593f0487352') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('釈', 'N2', 'explanation', 'Thích', ARRAY['シャク','セキ'], ARRAY['とく','す.てる','ゆる.す'], 11, 'dae1e065-0fb8-4121-99e2-234c536e5d7b') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('若', 'N3', 'young, if, perhaps, possibly, low number, immature', 'Nhược', ARRAY['ジャク','ニャク','ニャ'], ARRAY['わか.い','わか-','も.しくわ','も.し','も.しくは','ごと.し'], 8, '25c57eec-88fa-4e6e-95a2-9ba83b5f4246') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('寂', 'N2', 'loneliness, quietly, mellow, mature, death of a priest', 'Tịch', ARRAY['ジャク','セキ'], ARRAY['さび','さび.しい','さび.れる','さみ.しい'], 11, '66a403fd-ce7c-4ecc-820d-3f1718e79119') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('弱', 'N4', 'weak, frail', 'Nhược', ARRAY['ジャク'], ARRAY['よわ.い','よわ.る','よわ.まる','よわ.める'], 10, 'ad6d3726-634b-40d9-bc5a-538b879c95d5') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('主', 'N4', 'lord, chief, master, main thing, principal', 'Chủ', ARRAY['シュ','ス','シュウ'], ARRAY['ぬし','おも','あるじ'], 5, '535f1b45-76eb-4e2f-9bc7-16a2ef38515c') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('取', 'N3', 'take, fetch, take up', 'Thủ', ARRAY['シュ'], ARRAY['と.る','と.り','と.り-','とり','-ど.り'], 8, '6068ca21-fb74-4144-9b3d-7b93749eccdd') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('守', 'N3', 'guard, protect, defend, obey', 'Thủ, Thú', ARRAY['シュ','ス'], ARRAY['まも.る','まも.り','もり','-もり','かみ'], 6, '66a403fd-ce7c-4ecc-820d-3f1718e79119') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('手', 'N5', 'hand', 'Thủ', ARRAY['シュ','ズ'], ARRAY['て','て-','-て','た-'], 4, 'eaca9807-b2da-4d99-8585-13d429ea249d') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('朱', 'N2', 'vermilion, cinnabar, scarlet, red, bloody', 'Chu', ARRAY['シュ'], ARRAY['あけ'], 6, '80c53d4a-31b5-442f-be48-5d1b64972fae') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('殊', 'N2', 'particularly, especially, exceptionally', 'Thù', ARRAY['シュ'], ARRAY['こと'], 10, 'e565e3e9-46e0-49a6-ba2f-0955becc9c08') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('狩', 'N2', 'hunt, raid, gather', 'Thú', ARRAY['シュ'], ARRAY['か.る','か.り','-が.り'], 9, '060e9144-2828-4302-b284-f6ac8ea6ae51') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('珠', 'N2', 'pearl, gem, jewel', 'Châu', ARRAY['シュ'], ARRAY['たま'], 10, '1450b570-89aa-4b1c-9e48-32bc25298929') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('種', 'N3', 'species, kind, class, variety, seed', 'Chủng, Chúng', ARRAY['シュ'], ARRAY['たね','-ぐさ'], 14, '18d824dd-4b06-48c0-9e40-ff5132c75dc9') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('趣', 'N2', 'purport, gist, elegance, interest, proceed to, tend, become', 'Thú, Xúc', ARRAY['シュ'], ARRAY['おもむき','おもむ.く'], 15, '432fb72b-e9d0-4c51-981a-ebec3d1c1488') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('酒', 'N3', 'sake, alcohol', 'Tửu', ARRAY['シュ'], ARRAY['さけ','さか-'], 10, '12e487c3-d245-437b-b197-9593f0487352') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('首', 'N4', 'neck, counter for songs and poems', 'Thủ, Thú', ARRAY['シュ'], ARRAY['くび'], 9, '5a374f9c-8db8-4742-b24e-9cb401ea9be3') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('儒', 'N2', 'Confucian', 'Nho', ARRAY['ジュ'], NULL, 16, '78419994-196d-4445-8165-a6029d33a0ff') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('受', 'N3', 'accept, undergo, answer (phone), take, get, catch, receive', 'Thụ', ARRAY['ジュ'], ARRAY['う.ける','-う.け','う.かる'], 8, '6068ca21-fb74-4144-9b3d-7b93749eccdd') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('寿', 'N2', 'longevity, congratulations, one''s natural life', 'Thọ', ARRAY['ジュ','ス','シュウ'], ARRAY['ことぶき','ことぶ.く','ことほ.ぐ'], 7, '693998e2-9356-4193-bcef-4b2f79e9e857') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('授', 'N3', 'impart, instruct, grant, confer', 'Thụ', ARRAY['ジュ'], ARRAY['さず.ける','さず.かる'], 11, 'eaca9807-b2da-4d99-8585-13d429ea249d') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('樹', 'N2', 'timber, trees, wood, establish, set up', 'Thụ', ARRAY['ジュ'], ARRAY['き'], 16, '80c53d4a-31b5-442f-be48-5d1b64972fae') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('需', 'N2', 'demand, request, need', 'Nhu', ARRAY['ジュ'], NULL, 14, '491a9ec1-aebb-486b-9e2d-050c80063a8f') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('囚', 'N2', 'captured, criminal, arrest, catch', 'Tù', ARRAY['シュウ'], ARRAY['とら.われる'], 5, 'd6dd2a4a-effd-48d8-baaa-60e2d46cfc4d') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('収', 'N3', 'income, obtain, reap, pay, supply, store', 'Thâu, Thu, Thua', ARRAY['シュウ'], ARRAY['おさ.める','おさ.まる'], 4, '6068ca21-fb74-4144-9b3d-7b93749eccdd') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('周', 'N3', 'circumference, circuit, lap', 'Chu', ARRAY['シュウ'], ARRAY['まわ.り'], 8, 'a54e08f0-b1f4-49b0-bdcd-1fcfab9f5eb7') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('宗', 'N2', 'religion, sect, denomination, main point, origin, essence', 'Tông', ARRAY['シュウ','ソウ'], ARRAY['むね'], 8, '66a403fd-ce7c-4ecc-820d-3f1718e79119') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('就', 'N2', 'concerning, settle, take position, depart, study, per', 'Tựu', ARRAY['シュウ','ジュ'], ARRAY['つ.く','つ.ける'], 12, 'a26f5860-edf0-4ce0-92d4-ace84a71f31a') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('州', 'N3', 'state, province', 'Châu', ARRAY['シュウ','ス'], ARRAY['す'], 6, 'a9777fba-5783-458e-a497-0fb6a8ddd6b7') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('修', 'N3', 'discipline, conduct oneself well, study, master', 'Tu', ARRAY['シュウ','シュ'], ARRAY['おさ.める','おさ.まる'], 10, '78419994-196d-4445-8165-a6029d33a0ff') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('愁', 'N2', 'distress, grieve, lament, be anxious', 'Sầu', ARRAY['シュウ'], ARRAY['うれ.える','うれ.い'], 13, '1659d447-8145-42d3-8262-2d05cea9f834') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('拾', 'N3', 'pick up, gather, find, go on foot, ten', 'Thập, Thiệp, Kiệp', ARRAY['シュウ','ジュウ'], ARRAY['ひろ.う'], 9, 'eaca9807-b2da-4d99-8585-13d429ea249d') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('洲', 'N2', 'continent, sandbar, island, country', 'Châu', ARRAY['シュウ','ス'], ARRAY['しま'], 9, '10673667-6c56-413d-bbd5-a48794fb7725') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('秀', 'N2', 'excel, excellence, beauty, surpass', 'Tú', ARRAY['シュウ'], ARRAY['ひい.でる'], 7, '18d824dd-4b06-48c0-9e40-ff5132c75dc9') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('秋', 'N4', 'autumn', 'Thu', ARRAY['シュウ'], ARRAY['あき','とき'], 9, '18d824dd-4b06-48c0-9e40-ff5132c75dc9') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('終', 'N4', 'end, finish', 'Chung', ARRAY['シュウ'], ARRAY['お.わる','-お.わる','おわ.る','お.える','つい','つい.に'], 11, '2d4eb76f-4fae-4d05-855c-2520845188ed') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('習', 'N4', 'learn', 'Tập', ARRAY['シュウ','ジュ'], ARRAY['なら.う','なら.い'], 11, '2290d53b-eec2-4251-8bca-1ceb2407f15c') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('臭', 'N2', 'stinking, ill-smelling, suspicious looking, odor, savor, fragrance, be fragrant, stink, glow, be bright', 'Xú, Khứu', ARRAY['シュウ'], ARRAY['くさ.い','-くさ.い','にお.う','にお.い'], 9, '82149330-766d-43e4-baf0-d61a00b887e5') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('舟', 'N3', 'boat, ship', 'Chu', ARRAY['シュウ'], ARRAY['ふね','ふな-','-ぶね'], 6, 'c2814223-66bf-4fde-bf2e-3b95fa5d206c') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('衆', 'N2', 'masses, great numbers, multitude, populace', 'Chúng, Trống', ARRAY['シュウ','シュ'], ARRAY['おお.い'], 12, '5fccfa28-bf2d-4ce4-a963-6238270170f3') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('襲', 'N2', 'attack, advance on, succeed to, pile, heap', 'Tập', ARRAY['シュウ'], ARRAY['おそ.う','かさ.ね'], 22, '9c5b95cd-6590-4a03-8c61-a68c80da3c8c') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('週', 'N5', 'week', 'Chu', ARRAY['シュウ'], NULL, 11, '371180fe-c78a-477d-b628-86c3e88e03f1') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('酬', 'N2', 'repay, reward, retribution', 'Thù', ARRAY['シュウ','シュ','トウ'], ARRAY['むく.いる'], 13, '12e487c3-d245-437b-b197-9593f0487352') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('集', 'N4', 'gather, meet, congregate, swarm, flock', 'Tập', ARRAY['シュウ'], ARRAY['あつ.まる','あつ.める','つど.う'], 12, 'e9426c63-0e1d-4399-a59e-ce2e851fa615') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('醜', 'N2', 'ugly, unclean, shame, bad looking', 'Xú', ARRAY['シュウ'], ARRAY['みにく.い','しこ'], 17, '12e487c3-d245-437b-b197-9593f0487352') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('住', 'N4', 'dwell, reside, live, inhabit', 'Trụ', ARRAY['ジュウ','ヂュウ','チュウ'], ARRAY['す.む','す.まう','-ず.まい'], 7, '78419994-196d-4445-8165-a6029d33a0ff') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('充', 'N2', 'allot, fill', 'Sung', ARRAY['ジュウ'], ARRAY['あ.てる','み.たす'], 6, '88165dcc-9e82-4204-80b3-e041b6649197') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('十', 'N5', 'ten', 'Thập', ARRAY['ジュウ','ジッ','ジュッ'], ARRAY['とお','と','そ'], 2, 'ac324fde-d736-479e-b9ae-c0f09a7f3091') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('従', 'N2', 'accompany, obey, submit to, comply, follow, secondary, incidental, subordinate', 'Tòng, Tùng, Tuồng', ARRAY['ジュウ','ショウ','ジュ'], ARRAY['したが.う','したが.える','より'], 10, '5a7d3fce-7600-45fd-91a8-2af832381ee4') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('柔', 'N3', 'tender, weakness, gentleness, softness', 'Nhu', ARRAY['ジュウ','ニュウ'], ARRAY['やわ.らか','やわ.らかい','やわ','やわ.ら'], 9, '80c53d4a-31b5-442f-be48-5d1b64972fae') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('汁', 'N2', 'soup, juice, broth, sap, gravy, pus', 'Trấp, Hiệp', ARRAY['ジュウ'], ARRAY['しる','-しる','つゆ'], 5, '10673667-6c56-413d-bbd5-a48794fb7725') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('渋', 'N2', 'astringent, hesitate, reluctant, have diarrhea', 'Sáp', ARRAY['ジュウ','シュウ'], ARRAY['しぶ','しぶ.い','しぶ.る'], 11, '10673667-6c56-413d-bbd5-a48794fb7725') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('獣', 'N2', 'animal, beast', 'Thú', ARRAY['ジュウ'], ARRAY['けもの','けだもの'], 16, '060e9144-2828-4302-b284-f6ac8ea6ae51') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('縦', 'N2', 'vertical, length, height, self-indulgent, wayward', 'Sỉ', ARRAY['ジュウ'], ARRAY['たて'], 16, '2d4eb76f-4fae-4d05-855c-2520845188ed') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('重', 'N4', 'heavy, important, esteem, respect, heap up, pile up, nest of boxes, -fold', 'Trọng, Trùng', ARRAY['ジュウ','チョウ'], ARRAY['え','おも.い','おも.り','おも.なう','かさ.ねる','かさ.なる','おも'], 9, '7b994519-90ea-4c97-8378-fa2add6e92fc') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('銃', 'N2', 'gun, arms', 'Súng', ARRAY['ジュウ'], ARRAY['つつ'], 14, 'c3b48b38-6414-47f2-a7ac-d72a85c0e35a') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('叔', 'N2', 'uncle, youth', 'Thúc', ARRAY['シュク'], NULL, 8, '6068ca21-fb74-4144-9b3d-7b93749eccdd') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('宿', 'N3', 'inn, lodging, relay station, dwell, lodge, be pregnant, home, dwelling', 'Túc, Tú', ARRAY['シュク'], ARRAY['やど','やど.る','やど.す'], 11, '66a403fd-ce7c-4ecc-820d-3f1718e79119') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('淑', 'N2', 'graceful, gentle, pure', 'Thục', ARRAY['シュク'], ARRAY['しと.やか'], 11, '10673667-6c56-413d-bbd5-a48794fb7725') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('祝', 'N3', 'celebrate, congratulate', 'Chúc, Chú', ARRAY['シュク','シュウ'], ARRAY['いわ.う'], 9, 'aa655283-0fb9-4ae0-a339-aa1437f00ad1') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('縮', 'N2', 'shrink, contract, shrivel, wrinkle, reduce', 'Súc', ARRAY['シュク'], ARRAY['ちぢ.む','ちぢ.まる','ちぢ.める','ちぢ.れる','ちぢ.らす'], 17, '2d4eb76f-4fae-4d05-855c-2520845188ed') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('粛', 'N2', 'solemn, quietly, softly', 'Túc', ARRAY['シュク','スク'], ARRAY['つつし.む'], 11, 'c15eccb6-77a9-4354-bac1-44b86e755d05') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('塾', 'N2', 'cram school, private school', 'Thục', ARRAY['ジュク'], NULL, 14, '2fd61440-db3f-4cd5-8101-9e74019df262') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('熟', 'N2', 'mellow, ripen, mature, acquire skill', 'Thục', ARRAY['ジュク'], ARRAY['う.れる'], 15, '831cfc6a-79c9-4ebb-a4cc-ba737a36caf7') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('出', 'N5', 'exit, leave, go out, come out, put out, protrude', 'Xuất, Xúy', ARRAY['シュツ','スイ'], ARRAY['で.る','-で','だ.す','-だ.す','い.でる','い.だす'], 5, '2c241828-d32e-4d79-8fba-50c0b6fe9ab4') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('術', 'N3', 'art, technique, skill, means, trick, resources, magic', 'Thuật', ARRAY['ジュツ'], ARRAY['すべ'], 11, '837ea248-33b4-4366-9517-d190cc876855') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('述', 'N3', 'mention, state, speak, relate', 'Thuật', ARRAY['ジュツ'], ARRAY['の.べる'], 8, '371180fe-c78a-477d-b628-86c3e88e03f1') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('俊', 'N2', 'sagacious, genius, excellence', 'Tuấn', ARRAY['シュン'], NULL, 9, '78419994-196d-4445-8165-a6029d33a0ff') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('峻', 'N2', 'high, steep', 'Tuấn', ARRAY['シュン'], ARRAY['けわ.しい','たか.い'], 10, 'a2f58e0e-c558-4282-80ff-1d8088c5f250') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('春', 'N4', 'springtime, spring (season)', 'Xuân', ARRAY['シュン'], ARRAY['はる'], 9, 'b8af1855-8d69-4238-bc65-6925c1c993cd') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('瞬', 'N2', 'wink, blink, twinkle', 'Thuấn', ARRAY['シュン'], ARRAY['またた.く','まじろ.ぐ'], 18, 'eeeb0778-60ee-4882-b7a5-d6e12279fade') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('竣', 'N2', 'end, finish', 'Thuân, Thuyên', ARRAY['ドウ','シュン'], ARRAY['わらわ','わらべ','おわ.る'], 12, '9cf1d21c-3259-43e2-9a76-3e9d37cefc02') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('舜', 'N2', 'type of morning glory, rose of Sharon, althea', 'Thuấn', ARRAY['シュン'], NULL, 13, '0427dee1-ebce-49e9-b12b-b2eb96e10bad') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('駿', 'N2', 'a good horse, speed, a fast person', 'Tuấn', ARRAY['シュン','スン'], ARRAY['すぐ.れる'], 17, 'd7bb7ac5-d329-47fc-981a-3b2bc480c688') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('准', 'N2', 'quasi-, semi-, associate', 'Chuẩn', ARRAY['ジュン'], NULL, 10, '23a10182-2ed1-47fd-a83e-9381dcd8dfad') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('循', 'N2', 'sequential, follow', 'Tuần', ARRAY['ジュン'], NULL, 12, '5a7d3fce-7600-45fd-91a8-2af832381ee4') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('旬', 'N2', 'decameron, ten-day period, season (for specific products)', 'Tuần, Quân', ARRAY['ジュン','シュン'], NULL, 6, 'b8af1855-8d69-4238-bc65-6925c1c993cd') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('殉', 'N2', 'martyrdom, follow by resigning', 'Tuẫn', ARRAY['ジュン'], NULL, 10, 'e565e3e9-46e0-49a6-ba2f-0955becc9c08') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('淳', 'N2', 'pure', 'Thuần', ARRAY['ジュン','シュン'], ARRAY['あつ.い'], 11, '10673667-6c56-413d-bbd5-a48794fb7725') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('準', 'N3', 'semi-, correspond to, proportionate to, conform, imitate', 'Chuẩn, Chuyết', ARRAY['ジュン'], ARRAY['じゅん.じる','じゅん.ずる','なぞら.える','のり','ひと.しい','みずもり'], 13, '10673667-6c56-413d-bbd5-a48794fb7725') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('潤', 'N2', 'wet, be watered, profit by, receive benefits, favor, charm, steep', 'Nhuận', ARRAY['ジュン'], ARRAY['うるお.う','うるお.す','うる.む'], 15, '10673667-6c56-413d-bbd5-a48794fb7725') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('盾', 'N2', 'shield, escutcheon, pretext', 'Thuẫn', ARRAY['ジュン'], ARRAY['たて'], 9, 'eeeb0778-60ee-4882-b7a5-d6e12279fade') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('純', 'N3', 'genuine, purity, innocence, net (profit)', 'Thuần, Chuẩn, Đồn, Truy', ARRAY['ジュン'], NULL, 10, '2d4eb76f-4fae-4d05-855c-2520845188ed') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('巡', 'N2', 'patrol, go around, circumference', 'Tuần', ARRAY['ジュン'], ARRAY['めぐ.る','めぐ.り'], 6, 'a9777fba-5783-458e-a497-0fb6a8ddd6b7') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('遵', 'N2', 'abide by, follow, obey, learn', 'Tuân', ARRAY['ジュン'], NULL, 15, '371180fe-c78a-477d-b628-86c3e88e03f1') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('醇', 'N2', 'pure sake, purity, affection', 'Thuần', ARRAY['ジュン','シュン'], ARRAY['もっぱら','こい','あつい'], 15, '12e487c3-d245-437b-b197-9593f0487352') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('順', 'N3', 'obey, order, turn, right, docility, occasion', 'Thuận', ARRAY['ジュン'], NULL, 12, 'be4fe89f-bae1-4238-8aad-4789348c0e13') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('処', 'N3', 'dispose, manage, deal with, sentence, condemn, act, behave, place', 'Xứ', ARRAY['ショ'], ARRAY['ところ','-こ','お.る'], 5, '57745b80-a744-46c1-af52-58f66dcad3c1') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('初', 'N3', 'first time, beginning', 'Sơ', ARRAY['ショ'], ARRAY['はじ.め','はじ.めて','はつ','はつ-','うい-','-そ.める','-ぞ.め'], 7, 'bc6a1cef-e769-454c-a64f-910a5e1b5d74') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('所', 'N4', 'place, extent', 'Sở', ARRAY['ショ'], ARRAY['ところ','-ところ','どころ','とこ'], 8, '3df4fb00-e325-4d60-b6e2-dac33518caca') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('暑', 'N4', 'sultry, hot, summer heat', 'Thử', ARRAY['ショ'], ARRAY['あつ.い'], 12, 'b8af1855-8d69-4238-bc65-6925c1c993cd') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('曙', 'N2', 'dawn, daybreak', 'Thự', ARRAY['ショ'], ARRAY['あけぼの'], 17, 'b8af1855-8d69-4238-bc65-6925c1c993cd') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('渚', 'N2', 'strand, beach, shore', 'Chử', ARRAY['ショ'], ARRAY['なぎさ'], 11, '10673667-6c56-413d-bbd5-a48794fb7725') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('庶', 'N2', 'commoner, all, bastard', 'Thứ', ARRAY['ショ'], NULL, 11, '2417a6bf-65df-4c8a-a8d0-fba42aeb96ed') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('緒', 'N3', 'thong, beginning, inception, end, cord, strap, mental or emotional state', 'Tự', ARRAY['ショ','チョ'], ARRAY['お','いとぐち'], 14, '2d4eb76f-4fae-4d05-855c-2520845188ed') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('署', 'N3', 'signature, govt office, police station', 'Thự', ARRAY['ショ'], NULL, 13, '416f2a82-f8af-4fcc-b9e2-5cb48c3ace0e') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('書', 'N5', 'write', 'Thư', ARRAY['ショ'], ARRAY['か.く','-が.き','-がき'], 10, '124d252b-1dfb-4544-8e76-7327ba3e05c3') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('諸', 'N3', 'various, many, several, together', 'Chư', ARRAY['ショ'], ARRAY['もろ'], 15, '7fd47228-ad16-439a-8685-ad9cacdeb95e') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('助', 'N3', 'help, rescue, assist', 'Trợ', ARRAY['ジョ'], ARRAY['たす.ける','たす.かる','す.ける','すけ'], 7, 'd9107ec4-ea5d-4a21-bacd-ffca462b29dd') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('叙', 'N2', 'confer, relate, narrate, describe', 'Tự', ARRAY['ジョ'], ARRAY['つい.ず','ついで'], 9, '6068ca21-fb74-4144-9b3d-7b93749eccdd') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('女', 'N5', 'woman, female', 'Nữ, Nứ, Nhữ', ARRAY['ジョ','ニョ','ニョウ'], ARRAY['おんな','め'], 3, '2b2beef1-465e-418b-9883-672cd0e0a712') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('序', 'N2', 'preface, beginning, order, precedence, occasion, chance, incidentally', 'Tự', ARRAY['ジョ'], ARRAY['つい.で','ついで'], 7, '2417a6bf-65df-4c8a-a8d0-fba42aeb96ed') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('徐', 'N2', 'gradually, slowly, deliberately, gently', 'Từ', ARRAY['ジョ'], ARRAY['おもむ.ろに'], 10, '5a7d3fce-7600-45fd-91a8-2af832381ee4') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('恕', 'N2', 'excuse, tolerate, forgive', 'Thứ', ARRAY['ジョ','ショ'], ARRAY['ゆる.す'], 10, '1659d447-8145-42d3-8262-2d05cea9f834') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('除', 'N3', 'exclude, division (x/3), remove, abolish, cancel, except', 'Trừ', ARRAY['ジョ','ジ'], ARRAY['のぞ.く','-よ.け'], 10, 'b85628b0-3f6a-420a-91c7-0cfbd5055459') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('傷', 'N2', 'wound, hurt, injure, impair, pain, injury, cut, gash, scar, weak point', 'Thương', ARRAY['ショウ'], ARRAY['きず','いた.む','いた.める'], 13, '78419994-196d-4445-8165-a6029d33a0ff') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('償', 'N2', 'reparation, make up for, recompense, redeem', 'Thường', ARRAY['ショウ'], ARRAY['つぐな.う'], 17, '78419994-196d-4445-8165-a6029d33a0ff') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('勝', 'N3', 'victory, win, prevail, excel', 'Thắng, Thăng', ARRAY['ショウ'], ARRAY['か.つ','-が.ち','まさ.る','すぐ.れる','かつ'], 12, 'd9107ec4-ea5d-4a21-bacd-ffca462b29dd') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('匠', 'N2', 'artisan, workman, carpenter', 'Tượng', ARRAY['ショウ'], ARRAY['たくみ'], 6, '74a65e12-5580-4979-9fea-3710c62043fc') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('升', 'N2', 'measuring box, 1.8 liter', 'Thăng', ARRAY['ショウ'], ARRAY['ます'], 4, 'ac324fde-d736-479e-b9ae-c0f09a7f3091') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('召', 'N3', 'seduce, call, send for, wear, put on, ride in, buy, eat, drink, catch (cold)', 'Triệu', ARRAY['ショウ'], ARRAY['め.す'], 5, 'a54e08f0-b1f4-49b0-bdcd-1fcfab9f5eb7') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('商', 'N3', 'make a deal, selling, dealing in, merchant', 'Thương', ARRAY['ショウ'], ARRAY['あきな.う'], 11, 'a54e08f0-b1f4-49b0-bdcd-1fcfab9f5eb7') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('唱', 'N2', 'chant, recite, call upon, yell', 'Xướng', ARRAY['ショウ'], ARRAY['とな.える'], 11, 'a54e08f0-b1f4-49b0-bdcd-1fcfab9f5eb7') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('奨', 'N2', 'exhort, urge, encourage', 'Tưởng', ARRAY['ショウ','ソウ'], ARRAY['すす.める'], 13, '457c9d33-f2d9-4f61-bca8-910ce7ade194') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('宵', 'N2', 'wee hours, evening, early night', 'Tiêu', ARRAY['ショウ'], ARRAY['よい'], 10, '66a403fd-ce7c-4ecc-820d-3f1718e79119') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('将', 'N3', 'leader, commander, general, admiral, or, and again, soon, from now on, just about', 'Thương, Tương, Tướng', ARRAY['ショウ','ソウ'], ARRAY['まさ.に','はた','まさ','ひきい.る','もって'], 10, '693998e2-9356-4193-bcef-4b2f79e9e857') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('小', 'N5', 'little, small', 'Tiểu', ARRAY['ショウ'], ARRAY['ちい.さい','こ-','お-','さ-'], 3, 'e0ca1a0d-46c2-4e21-9595-c7c485c93fa0') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('少', 'N5', 'few, little', 'Thiểu, Thiếu', ARRAY['ショウ'], ARRAY['すく.ない','すこ.し'], 4, 'e0ca1a0d-46c2-4e21-9595-c7c485c93fa0') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('尚', 'N2', 'esteem, furthermore, still, yet', 'Thượng, Chuộng, Sượng, Thằng', ARRAY['ショウ'], ARRAY['なお'], 8, 'e0ca1a0d-46c2-4e21-9595-c7c485c93fa0') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('庄', 'N2', 'level, in the country, manor, village, hamlet', 'Trang', ARRAY['ショウ','ソ','ソウ','ホウ'], NULL, 6, '2417a6bf-65df-4c8a-a8d0-fba42aeb96ed') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('床', 'N3', 'bed, counter for beds, floor, padding, tatami', 'Sàng', ARRAY['ショウ'], ARRAY['とこ','ゆか'], 7, '2417a6bf-65df-4c8a-a8d0-fba42aeb96ed') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('彰', 'N2', 'patent, clear', 'Chương', ARRAY['ショウ'], NULL, 14, 'a141edd3-78dd-46cc-b260-1b2cfc79e5ed') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('承', 'N3', 'acquiesce, hear, listen to, be informed, receive', 'Thừa', ARRAY['ショウ','ジョウ'], ARRAY['うけたまわ.る','う.ける'], 8, 'eaca9807-b2da-4d99-8585-13d429ea249d') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('抄', 'N2', 'extract, selection, summary, copy, spread thin', 'Sao', ARRAY['ショウ'], NULL, 7, 'eaca9807-b2da-4d99-8585-13d429ea249d') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('招', 'N3', 'beckon, invite, summon, engage', 'Chiêu, Thiêu, Thiều', ARRAY['ショウ'], ARRAY['まね.く'], 8, 'eaca9807-b2da-4d99-8585-13d429ea249d') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('掌', 'N2', 'palm of hand, rule, administer, conduct', 'Chưởng', ARRAY['ショウ'], ARRAY['てのひら','たなごころ'], 12, 'eaca9807-b2da-4d99-8585-13d429ea249d') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('捷', 'N2', 'victory, fast', 'Tiệp, Thiệp', ARRAY['ショウ','ソウ'], ARRAY['はや.い'], 11, 'eaca9807-b2da-4d99-8585-13d429ea249d') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('昇', 'N3', 'rise up', 'Thăng', ARRAY['ショウ'], ARRAY['のぼ.る'], 8, 'b8af1855-8d69-4238-bc65-6925c1c993cd') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('昌', 'N2', 'prosperous, bright, clear', 'Xương', ARRAY['ショウ'], ARRAY['さかん'], 8, 'b8af1855-8d69-4238-bc65-6925c1c993cd') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('昭', 'N2', 'shining, bright', 'Chiêu', ARRAY['ショウ'], NULL, 9, 'b8af1855-8d69-4238-bc65-6925c1c993cd') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('晶', 'N2', 'sparkle, clear, crystal', 'Tinh', ARRAY['ショウ'], NULL, 12, 'b8af1855-8d69-4238-bc65-6925c1c993cd') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('松', 'N2', 'pine tree', 'Tùng', ARRAY['ショウ'], ARRAY['まつ'], 8, '80c53d4a-31b5-442f-be48-5d1b64972fae') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('梢', 'N2', 'treetops, twig', 'Sao, Tiêu', ARRAY['ショウ'], ARRAY['こずえ','くすのき'], 11, '80c53d4a-31b5-442f-be48-5d1b64972fae') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('沼', 'N2', 'marsh, lake, bog, swamp, pond', 'Chiểu', ARRAY['ショウ'], ARRAY['ぬま'], 8, '10673667-6c56-413d-bbd5-a48794fb7725') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('消', 'N3', 'extinguish, blow out, turn off, neutralize, cancel', 'Tiêu', ARRAY['ショウ'], ARRAY['き.える','け.す'], 10, '10673667-6c56-413d-bbd5-a48794fb7725') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('渉', 'N2', 'ford, go cross, transit, ferry, import, involve', 'Thiệp', ARRAY['ショウ'], ARRAY['わた.る'], 11, '10673667-6c56-413d-bbd5-a48794fb7725') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('焼', 'N3', 'bake, burning', 'Thiêu', ARRAY['ショウ'], ARRAY['や.く','や.き','や.き-','-や.き','や.ける'], 12, '831cfc6a-79c9-4ebb-a4cc-ba737a36caf7') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('焦', 'N2', 'char, hurry, impatient, irritate, burn, scorch, singe', 'Tiêu, Tiều', ARRAY['ショウ'], ARRAY['こ.げる','こ.がす','こ.がれる','あせ.る','じ.れる','じ.らす'], 12, '831cfc6a-79c9-4ebb-a4cc-ba737a36caf7') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('照', 'N3', 'illuminate, shine, compare, bashful', 'Chiếu', ARRAY['ショウ'], ARRAY['て.る','て.らす','て.れる'], 13, '831cfc6a-79c9-4ebb-a4cc-ba737a36caf7') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('症', 'N2', 'symptoms, illness', 'Chứng', ARRAY['ショウ'], NULL, 10, '5688d6a7-12f3-4090-999b-bee052200ce3') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('省', 'N3', 'government ministry, conserve, omit', 'Tỉnh', ARRAY['セイ','ショウ'], ARRAY['かえり.みる','はぶ.く'], 9, 'eeeb0778-60ee-4882-b7a5-d6e12279fade') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('硝', 'N2', 'nitrate, saltpeter', 'Tiêu', ARRAY['ショウ'], NULL, 12, 'c3bb7570-e8b9-49cc-bf56-90e74165d503') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('礁', 'N2', 'reef, sunken rock', 'Tiều', ARRAY['ショウ'], NULL, 17, 'c3bb7570-e8b9-49cc-bf56-90e74165d503') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('祥', 'N2', 'auspicious, happiness, blessedness, good omen, good fortune', 'Tường', ARRAY['ショウ'], ARRAY['さいわ.い','きざ.し','よ.い','つまび.らか'], 10, 'aa655283-0fb9-4ae0-a339-aa1437f00ad1') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('称', 'N2', 'appellation, praise, admire, name, title, fame', 'Xưng, Xứng, Hấng', ARRAY['ショウ'], ARRAY['たた.える','とな.える','あ.げる','かな.う','はか.り','はか.る','ほめ.る'], 10, '18d824dd-4b06-48c0-9e40-ff5132c75dc9') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('章', 'N3', 'badge, chapter, composition, poem, design', 'Chương', ARRAY['ショウ'], NULL, 11, '9cf1d21c-3259-43e2-9a76-3e9d37cefc02') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('笑', 'N3', 'laugh', 'Tiếu', ARRAY['ショウ'], ARRAY['わら.う','え.む'], 10, 'da702964-289f-443e-995f-0f7c0d2a57f3') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('粧', 'N2', 'cosmetics, adorn (one''s person)', 'Trang', ARRAY['ショウ'], NULL, 12, '8497383a-f56a-48b2-a4bd-8c8673d82955') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('紹', 'N3', 'introduce, inherit, help', 'Thiệu', ARRAY['ショウ'], NULL, 11, '2d4eb76f-4fae-4d05-855c-2520845188ed') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('肖', 'N2', 'resemblance', 'Tiếu, Tiêu', ARRAY['ショウ'], ARRAY['あやか.る'], 7, '71cc2465-f238-4f52-b9e3-39f8f95caaba') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('菖', 'N2', 'iris', 'Xương', ARRAY['ショウ'], NULL, 11, '25c57eec-88fa-4e6e-95a2-9ba83b5f4246') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('蕉', 'N2', 'banana, plantain', 'Tiêu', ARRAY['ショウ'], NULL, 15, '25c57eec-88fa-4e6e-95a2-9ba83b5f4246') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('衝', 'N2', 'collide, brunt, highway, opposition (astronomy), thrust, pierce, stab, prick', 'Xung', ARRAY['ショウ'], ARRAY['つ.く'], 15, '837ea248-33b4-4366-9517-d190cc876855') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('訟', 'N2', 'sue, accuse', 'Tụng', ARRAY['ショウ'], NULL, 11, '7fd47228-ad16-439a-8685-ad9cacdeb95e') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('証', 'N2', 'evidence, proof, certificate', 'Chứng', ARRAY['ショウ'], ARRAY['あかし'], 12, '7fd47228-ad16-439a-8685-ad9cacdeb95e') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('詔', 'N2', 'imperial edict', 'Chiếu', ARRAY['ショウ'], ARRAY['みことのり'], 12, '7fd47228-ad16-439a-8685-ad9cacdeb95e') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('詳', 'N2', 'detailed, full, minute, accurate, well-informed', 'Tường', ARRAY['ショウ'], ARRAY['くわ.しい','つまび.らか'], 13, '7fd47228-ad16-439a-8685-ad9cacdeb95e') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('象', 'N3', 'elephant, pattern after, imitate, image, shape, sign (of the times)', 'Tượng', ARRAY['ショウ','ゾウ'], ARRAY['かたど.る'], 12, '4cb349f0-c2d2-4a1a-805b-18c202dcc4e2') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('賞', 'N3', 'prize, reward, praise', 'Thưởng', ARRAY['ショウ'], ARRAY['ほ.める'], 15, '0cb16105-d4c3-4534-9e4e-0eecbad15787') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('鐘', 'N2', 'bell, gong, chimes', 'Chung', ARRAY['ショウ'], ARRAY['かね'], 20, 'c3b48b38-6414-47f2-a7ac-d72a85c0e35a') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('障', 'N2', 'hinder, hurt, harm', 'Chướng', ARRAY['ショウ'], ARRAY['さわ.る'], 14, 'b85628b0-3f6a-420a-91c7-0cfbd5055459') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('上', 'N5', 'above, up', 'Thượng, Thướng', ARRAY['ジョウ','ショウ','シャン'], ARRAY['うえ','-うえ','うわ-','かみ','あ.げる','-あ.げる','あ.がる','-あ.がる','あ.がり','-あ.がり','のぼ.る','のぼ.り','のぼ.せる','のぼ.す','たてまつ.る'], 3, '12f0d122-51f5-4c55-8a67-d3fc53818027') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('丈', 'N2', 'length, ten shaku, measure, Mr., Ms., height, stature, all (one has), only, that''s all, merely', 'Trượng', ARRAY['ジョウ'], ARRAY['たけ','だけ'], 3, '12f0d122-51f5-4c55-8a67-d3fc53818027') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('丞', 'N2', 'help', 'Thừa, Chưng', ARRAY['ジョウ','ショウ'], ARRAY['すく.う','たす.ける'], 6, '12f0d122-51f5-4c55-8a67-d3fc53818027') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('乗', 'N4', 'ride, power, multiplication, record, counter for vehicles, board, mount, join', 'Thặng, Thừa', ARRAY['ジョウ','ショウ'], ARRAY['の.る','-の.り','の.せる'], 9, '34034105-e6f4-4bfd-b23a-7f4cb3d93010') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('冗', 'N2', 'superfluous, uselessness', 'Nhũng', ARRAY['ジョウ'], NULL, 4, 'c89ec13a-4b2a-4c3d-9167-10f209666df4') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('剰', 'N2', 'surplus, besides', 'Thặng, Thừa', ARRAY['ジョウ'], ARRAY['あまつさえ','あま.り','あま.る'], 11, 'bc6a1cef-e769-454c-a64f-910a5e1b5d74') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('城', 'N3', 'castle', 'Thành', ARRAY['ジョウ','セイ'], ARRAY['しろ'], 9, '2fd61440-db3f-4cd5-8101-9e74019df262') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('場', 'N4', 'location, place', 'Tràng, Trường', ARRAY['ジョウ','チョウ'], ARRAY['ば'], 12, '2fd61440-db3f-4cd5-8101-9e74019df262') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('壌', 'N2', 'lot, earth, soil', 'Nhưỡng', ARRAY['ジョウ'], ARRAY['つち'], 16, '2fd61440-db3f-4cd5-8101-9e74019df262') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('嬢', 'N2', 'lass, girl, Miss, daughter', 'Nương', ARRAY['ジョウ'], ARRAY['むすめ'], 16, '2b2beef1-465e-418b-9883-672cd0e0a712') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('常', 'N3', 'usual, ordinary, normal, common, regular, continually, always, long-lasting', 'Thường', ARRAY['ジョウ'], ARRAY['つね','とこ-'], 11, 'c3c77b72-afa6-4b3f-acd2-b9a7f991cf53') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('情', 'N3', 'feelings, emotion, passion, sympathy, circumstances, facts', 'Tình', ARRAY['ジョウ','セイ'], ARRAY['なさ.け'], 11, '1659d447-8145-42d3-8262-2d05cea9f834') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('条', 'N3', 'article, clause, counter for articles, clauses, paragraphs, etc., twig, item, stripe, streak', 'Điêu', ARRAY['ジョウ','チョウ','デキ'], ARRAY['えだ','すじ'], 7, '80c53d4a-31b5-442f-be48-5d1b64972fae') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('浄', 'N2', 'clean, purify, cleanse, exorcise, Manchu Dynasty', 'Tịnh, Tạnh, Tĩnh', ARRAY['ジョウ','セイ'], ARRAY['きよ.める','きよ.い'], 9, '10673667-6c56-413d-bbd5-a48794fb7725') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('状', 'N3', 'status quo, conditions, circumstances, form, appearance', 'Trạng', ARRAY['ジョウ'], NULL, 7, '060e9144-2828-4302-b284-f6ac8ea6ae51') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('畳', 'N3', 'tatami mat, counter for tatami mats, fold, shut up, do away with', 'Điệp', ARRAY['ジョウ','チョウ'], ARRAY['たた.む','たたみ','かさ.なる'], 12, '43d68113-71ea-45ae-9926-6ea616e69ae2') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('穣', 'N2', 'good crops, prosperity, 10**28', 'Nhương', ARRAY['ジョウ'], ARRAY['わら','ゆたか'], 18, '18d824dd-4b06-48c0-9e40-ff5132c75dc9') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('蒸', 'N3', 'steam, heat, sultry, foment, get musty', 'Chưng', ARRAY['ジョウ','セイ'], ARRAY['む.す','む.れる','む.らす'], 13, '25c57eec-88fa-4e6e-95a2-9ba83b5f4246') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('譲', 'N2', 'defer, turnover, transfer, convey', 'Nhượng, Nhường', ARRAY['ジョウ'], ARRAY['ゆず.る'], 20, '7fd47228-ad16-439a-8685-ad9cacdeb95e') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('醸', 'N2', 'brew, cause', 'Nhường', ARRAY['ジョウ'], ARRAY['かも.す'], 20, '12e487c3-d245-437b-b197-9593f0487352') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('錠', 'N2', 'lock, fetters, shackles', 'Đĩnh', ARRAY['ジョウ'], NULL, 16, 'c3b48b38-6414-47f2-a7ac-d72a85c0e35a') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('嘱', 'N2', 'entrust, request, send a message', 'Chúc', ARRAY['ショク'], ARRAY['しょく.する','たの.む'], 15, 'a54e08f0-b1f4-49b0-bdcd-1fcfab9f5eb7') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('飾', 'N2', 'decorate, ornament, adorn, embellish', 'Sức', ARRAY['ショク'], ARRAY['かざ.る','かざ.り'], 13, '575f81b8-d9ab-421e-ac61-7d25cf8751da') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('植', 'N3', 'plant', 'Thực, Trĩ', ARRAY['ショク'], ARRAY['う.える','う.わる'], 12, '80c53d4a-31b5-442f-be48-5d1b64972fae') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('殖', 'N2', 'augment, increase, multiply, raise', 'Thực', ARRAY['ショク'], ARRAY['ふ.える','ふ.やす'], 12, 'e565e3e9-46e0-49a6-ba2f-0955becc9c08') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('織', 'N2', 'weave, fabric', 'Chức, Chí, Xí', ARRAY['ショク','シキ'], ARRAY['お.る','お.り','おり','-おり','-お.り'], 18, '2d4eb76f-4fae-4d05-855c-2520845188ed') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('職', 'N3', 'post, employment, work', 'Chức', ARRAY['ショク','ソク'], NULL, 18, '161e8737-630f-4a34-a6b4-6a75a2f52fbc') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('色', 'N4', 'color', 'Sắc', ARRAY['ショク','シキ'], ARRAY['いろ'], 6, '23e4cd82-9730-445a-acb4-7941eb4fdc32') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('触', 'N3', 'contact, touch, feel, hit, proclaim, announce, conflict', 'Xúc', ARRAY['ショク'], ARRAY['ふ.れる','さわ.る','さわ'], 13, '0e7ac1f1-7052-42b6-add7-9104991a8454') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('食', 'N5', 'eat, food', 'Thực, Tự', ARRAY['ショク','ジキ'], ARRAY['く.う','く.らう','た.べる','は.む'], 9, '575f81b8-d9ab-421e-ac61-7d25cf8751da') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('辱', 'N2', 'embarrass, humiliate, shame', 'Nhục', ARRAY['ジョク'], ARRAY['はずかし.める'], 10, '528b0862-6776-4502-84b1-8ab3e22a7507') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('伸', 'N3', 'expand, stretch, extend, lengthen, increase', 'Thân', ARRAY['シン'], ARRAY['の.びる','の.ばす','の.べる','の.す'], 7, '78419994-196d-4445-8165-a6029d33a0ff') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('信', 'N3', 'faith, truth, fidelity, trust', 'Tín', ARRAY['シン'], NULL, 9, '78419994-196d-4445-8165-a6029d33a0ff') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('侵', 'N2', 'encroach, invade, raid, trespass, violate', 'Xâm', ARRAY['シン'], ARRAY['おか.す'], 9, '78419994-196d-4445-8165-a6029d33a0ff') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('唇', 'N2', 'lips', 'Thần', ARRAY['シン'], ARRAY['くちびる'], 10, 'a54e08f0-b1f4-49b0-bdcd-1fcfab9f5eb7') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('娠', 'N2', 'with child, pregnancy', 'Thần', ARRAY['シン'], NULL, 10, '2b2beef1-465e-418b-9883-672cd0e0a712') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('寝', 'N3', 'lie down, sleep, rest, bed, remain unsold', 'Tẩm', ARRAY['シン'], ARRAY['ね.る','ね.かす','い.ぬ','みたまや','や.める'], 13, '66a403fd-ce7c-4ecc-820d-3f1718e79119') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('審', 'N2', 'hearing, judge, trial', 'Thẩm', ARRAY['シン'], ARRAY['つまび.らか','つぶさ.に'], 15, '66a403fd-ce7c-4ecc-820d-3f1718e79119') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('心', 'N4', 'heart, mind, spirit, heart radical (no. 61)', 'Tâm', ARRAY['シン'], ARRAY['こころ','-ごころ'], 4, '1659d447-8145-42d3-8262-2d05cea9f834') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('慎', 'N2', 'humility, be careful, discreet, prudent', 'Thận', ARRAY['シン'], ARRAY['つつし.む','つつ.ましい','つつし','つつし.み'], 13, '1659d447-8145-42d3-8262-2d05cea9f834') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('振', 'N2', 'shake, wave, wag, swing', 'Chấn, Chân', ARRAY['シン'], ARRAY['ふ.る','ふ.れる','ふ.るう'], 10, 'eaca9807-b2da-4d99-8585-13d429ea249d') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('新', 'N5', 'new', 'Tân', ARRAY['シン'], ARRAY['あたら.しい','あら.た','あら-','にい-'], 13, 'ce2155c8-dac3-4d8d-8eba-ce37c06541f4') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('晋', 'N2', 'advance', 'Tấn', ARRAY['シン'], ARRAY['すす.む'], 10, 'b8af1855-8d69-4238-bc65-6925c1c993cd') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('森', 'N4', 'forest, woods', 'Sâm', ARRAY['シン'], ARRAY['もり'], 12, '80c53d4a-31b5-442f-be48-5d1b64972fae') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('榛', 'N2', 'hazelnut, filbert', 'Trăn', ARRAY['シン','ハン'], ARRAY['はしばみ','はり'], 14, '80c53d4a-31b5-442f-be48-5d1b64972fae') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('浸', 'N2', 'immersed, soak, dip, steep, moisten, wet, dunk', 'Tẩm', ARRAY['シン'], ARRAY['ひた.す','ひた.る','つ.かる'], 10, '10673667-6c56-413d-bbd5-a48794fb7725') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('深', 'N3', 'deep, heighten, intensify, strengthen', 'Thâm', ARRAY['シン'], ARRAY['ふか.い','-ぶか.い','ふか.まる','ふか.める','み-'], 11, '10673667-6c56-413d-bbd5-a48794fb7725') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('申', 'N3', 'have the honor to, sign of the monkey, 3-5PM, ninth sign of Chinese zodiac', 'Thân', ARRAY['シン'], ARRAY['もう.す','もう.し-','さる'], 5, '43d68113-71ea-45ae-9926-6ea616e69ae2') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('真', 'N4', 'true, reality, Buddhist sect', 'Chân', ARRAY['シン'], ARRAY['ま','ま-','まこと'], 10, 'eeeb0778-60ee-4882-b7a5-d6e12279fade') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('神', 'N3', 'gods, mind, soul', 'Thần', ARRAY['シン','ジン'], ARRAY['かみ','かん-','こう-'], 9, 'aa655283-0fb9-4ae0-a339-aa1437f00ad1') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('秦', 'N2', 'Manchu dynasty, name given to naturalized foreigners', 'Tần', ARRAY['シン'], ARRAY['はた'], 10, '18d824dd-4b06-48c0-9e40-ff5132c75dc9') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('紳', 'N2', 'sire, good belt, gentleman', 'Thân', ARRAY['シン'], NULL, 11, '2d4eb76f-4fae-4d05-855c-2520845188ed') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('臣', 'N3', 'retainer, subject', 'Thần', ARRAY['シン','ジン'], NULL, 7, '35959534-01ee-4a29-a72b-7affe8de57f9') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('薪', 'N2', 'fuel, firewood, kindling', 'Tân', ARRAY['シン'], ARRAY['たきぎ','まき'], 16, '25c57eec-88fa-4e6e-95a2-9ba83b5f4246') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('親', 'N4', 'parent, intimacy, relative, familiarity, dealer (cards)', 'Thân, Thấn', ARRAY['シン'], ARRAY['おや','おや-','した.しい','した.しむ'], 16, 'd260f2a4-eacb-4447-97ac-2ef7518f6af8') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('診', 'N2', 'checkup, seeing, diagnose, examine', 'Chẩn', ARRAY['シン'], ARRAY['み.る'], 12, '7fd47228-ad16-439a-8685-ad9cacdeb95e') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('身', 'N3', 'somebody, person, one''s station in life', 'Thân, Quyên', ARRAY['シン'], ARRAY['み'], 7, 'da0baa70-ecd6-4b65-8dda-37027aaeb4d6') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('辛', 'N3', 'spicy, bitter, hot, acrid', 'Tân', ARRAY['シン'], ARRAY['から.い','つら.い','-づら.い','かのと'], 7, '95613b40-0633-4cf8-b683-0fc2784bb44a') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('進', 'N4', 'advance, proceed, progress, promote', 'Tiến', ARRAY['シン'], ARRAY['すす.む','すす.める'], 11, '371180fe-c78a-477d-b628-86c3e88e03f1') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('針', 'N3', 'needle, pin, staple, stinger', 'Châm', ARRAY['シン'], ARRAY['はり'], 10, 'c3b48b38-6414-47f2-a7ac-d72a85c0e35a') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('震', 'N3', 'quake, shake, tremble, quiver, shiver', 'Chấn', ARRAY['シン'], ARRAY['ふる.う','ふる.える','ふる.わせる','ふる.わす'], 15, '491a9ec1-aebb-486b-9e2d-050c80063a8f') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('人', 'N5', 'person', 'Nhân', ARRAY['ジン','ニン'], ARRAY['ひと','-り','-と'], 2, '78419994-196d-4445-8165-a6029d33a0ff') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('仁', 'N2', 'humanity, virtue, benevolence, charity, man, kernel', 'Nhân', ARRAY['ジン','ニ','ニン'], NULL, 4, '78419994-196d-4445-8165-a6029d33a0ff') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('刃', 'N2', 'blade, sword, edge', 'Nhận', ARRAY['ジン','ニン'], ARRAY['は','やいば','き.る'], 3, 'bc6a1cef-e769-454c-a64f-910a5e1b5d74') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('尋', 'N2', 'inquire, fathom, look for', 'Tầm', ARRAY['ジン'], ARRAY['たず.ねる','ひろ'], 12, '693998e2-9356-4193-bcef-4b2f79e9e857') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('甚', 'N2', 'tremendously, very, great, exceedingly', 'Thậm', ARRAY['ジン'], ARRAY['はなは.だ','はなは.だしい'], 9, 'b582cd8d-e0d8-47f5-bd14-b1bba51e8a93') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('尽', 'N2', 'exhaust, use up, run out of, deplete, befriend, serve', 'Tẫn, Tận, Hết', ARRAY['ジン','サン'], ARRAY['つ.きる','つ.くす','つ.かす','-づ.く','-ず.く','ことごと.く'], 6, 'dbb1b9f0-b6d7-4c0b-989a-7a98ab167f37') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('迅', 'N2', 'swift, fast', 'Tấn', ARRAY['ジン'], NULL, 6, '371180fe-c78a-477d-b628-86c3e88e03f1') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('陣', 'N2', 'camp, battle array, ranks, position, sudden, brief time', 'Trận', ARRAY['ジン'], NULL, 10, 'b85628b0-3f6a-420a-91c7-0cfbd5055459') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('須', 'N2', 'ought, by all means, necessarily', 'Tu', ARRAY['ス','シュ'], ARRAY['すべから.く','すべし','ひげ','まつ','もち.いる','もと.める'], 12, 'be4fe89f-bae1-4238-8aad-4789348c0e13') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('酢', 'N2', 'vinegar, sour, acid, tart', 'Tạc', ARRAY['サク'], ARRAY['す'], 12, '12e487c3-d245-437b-b197-9593f0487352') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('図', 'N4', 'map, drawing, plan, extraordinary, audacious', 'Đồ, Vi', ARRAY['ズ','ト'], ARRAY['え','はか.る'], 7, 'd6dd2a4a-effd-48d8-baaa-60e2d46cfc4d') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('吹', 'N3', 'blow, breathe, puff, emit, smoke', 'Xuy, Xúy', ARRAY['スイ'], ARRAY['ふ.く'], 7, 'a54e08f0-b1f4-49b0-bdcd-1fcfab9f5eb7') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('垂', 'N2', 'droop, suspend, hang, slouch', 'Thùy', ARRAY['スイ'], ARRAY['た.れる','た.らす','た.れ','-た.れ','なんなんと.す'], 8, '2fd61440-db3f-4cd5-8101-9e74019df262') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('帥', 'N2', 'commander, leading troops, governor', 'Suất, Súy', ARRAY['スイ'], NULL, 9, 'c3c77b72-afa6-4b3f-acd2-b9a7f991cf53') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('推', 'N2', 'conjecture, infer, guess, suppose, support, push (for)', 'Thôi', ARRAY['スイ'], ARRAY['お.す'], 11, 'eaca9807-b2da-4d99-8585-13d429ea249d') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('水', 'N5', 'water', 'Thủy', ARRAY['スイ'], ARRAY['みず','みず-'], 4, '10673667-6c56-413d-bbd5-a48794fb7725') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('炊', 'N2', 'cook, boil', 'Xuy, Xúy', ARRAY['スイ'], ARRAY['た.く','-だ.き'], 8, '831cfc6a-79c9-4ebb-a4cc-ba737a36caf7') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('睡', 'N2', 'drowsy, sleep, die', 'Thụy', ARRAY['スイ'], ARRAY['ねむ.る','ねむ.い'], 13, 'eeeb0778-60ee-4882-b7a5-d6e12279fade') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('粋', 'N2', 'chic, style, purity, essence, pith, cream, elite, choice', 'Túy', ARRAY['スイ'], ARRAY['いき'], 10, '8497383a-f56a-48b2-a4bd-8c8673d82955') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('翠', 'N2', 'green, kingfisher', 'Thúy', ARRAY['スイ'], ARRAY['かわせみ','みどり'], 14, '2290d53b-eec2-4251-8bca-1ceb2407f15c') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('衰', 'N2', 'decline, wane, weaken', 'Suy, Súy, Thôi', ARRAY['スイ'], ARRAY['おとろ.える'], 10, '9c5b95cd-6590-4a03-8c61-a68c80da3c8c') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('遂', 'N2', 'consummate, accomplish, attain, commit (suicide)', 'Toại', ARRAY['スイ'], ARRAY['と.げる','つい.に'], 12, '371180fe-c78a-477d-b628-86c3e88e03f1') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('酔', 'N2', 'drunk, feel sick, poisoned, elated, spellbound', 'Túy', ARRAY['スイ'], ARRAY['よ.う','よ.い','よ'], 11, '12e487c3-d245-437b-b197-9593f0487352') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('錘', 'N2', 'weight, plumb bob, sinker, spindle', 'Chuy, Chùy', ARRAY['スイ'], ARRAY['つむ','おもり'], 16, 'c3b48b38-6414-47f2-a7ac-d72a85c0e35a') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('随', 'N2', 'follow, though, notwithstanding, while, during, both, all, obey, submit to, comply, at the mercy of (the waves)', 'Tùy', ARRAY['ズイ'], ARRAY['まにま.に','したが.う'], 12, 'b85628b0-3f6a-420a-91c7-0cfbd5055459') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('瑞', 'N2', 'congratulations', 'Thụy', ARRAY['ズイ','スイ'], ARRAY['みず-','しるし'], 13, '1450b570-89aa-4b1c-9e48-32bc25298929') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('髄', 'N2', 'marrow, pith, essence', 'Tủy', ARRAY['ズイ'], NULL, 19, '9ef4bebb-2563-4c71-80cf-961709c74223') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('崇', 'N2', 'adore, respect, revere, worship', 'Sùng', ARRAY['スウ'], ARRAY['あが.める'], 11, 'a2f58e0e-c558-4282-80ff-1d8088c5f250') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('嵩', 'N2', 'be aggravated, grow worse, grow bulky, swell', 'Tung', ARRAY['スウ','シュウ'], ARRAY['かさ','かさ.む','たか.い'], 13, 'a2f58e0e-c558-4282-80ff-1d8088c5f250') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('数', 'N3', 'number, strength, fate, law, figures', 'Sác, Số, Sổ, Xúc, Sỗ, Sộ, Xọ', ARRAY['スウ','ス','サク','ソク','シュ'], ARRAY['かず','かぞ.える','しばしば','せ.める','わずらわ.しい'], 13, 'b62aa3f5-bcc4-4c24-944d-b02f3fbb5499') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('枢', 'N2', 'hinge, pivot, door, center of things', 'Xu, Khu', ARRAY['スウ','シュ'], ARRAY['とぼそ','からくり'], 8, '80c53d4a-31b5-442f-be48-5d1b64972fae') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('雛', 'N2', 'chick, squab, duckling, doll', 'Sồ', ARRAY['スウ','ス','ジュ'], ARRAY['ひな','ひよこ'], 18, 'e9426c63-0e1d-4399-a59e-ce2e851fa615') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('据', 'N2', 'set, lay a foundation, install, equip, squat down, sit down', 'Cư, Cứ', ARRAY['キョ'], ARRAY['す.える','す.わる'], 11, 'eaca9807-b2da-4d99-8585-13d429ea249d') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('杉', 'N2', 'cedar, cryptomeria', 'Sam', ARRAY['サン'], ARRAY['すぎ'], 7, '80c53d4a-31b5-442f-be48-5d1b64972fae') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('澄', 'N2', 'lucidity, be clear, clear, clarify, settle, strain, look grave', 'Trừng', ARRAY['チョウ'], ARRAY['す.む','す.ます','-す.ます'], 15, '10673667-6c56-413d-bbd5-a48794fb7725') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('寸', 'N2', 'measurement, tenth of a shaku, a little, small', 'Thốn', ARRAY['スン'], NULL, 3, '693998e2-9356-4193-bcef-4b2f79e9e857') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('世', 'N4', 'generation, world, society, public', 'Thế', ARRAY['セイ','セ','ソウ'], ARRAY['よ'], 5, '12f0d122-51f5-4c55-8a67-d3fc53818027') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('瀬', 'N2', 'rapids, current, torrent, shallows, shoal', 'Lại', ARRAY['ライ'], ARRAY['せ'], 19, '10673667-6c56-413d-bbd5-a48794fb7725') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('畝', 'N2', 'furrow, thirty tsubo, ridge, rib', 'Mẫu', ARRAY['ボウ','ホ','モ','ム'], ARRAY['せ','うね'], 10, '43d68113-71ea-45ae-9926-6ea616e69ae2') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('是', 'N2', 'just so, this, right, justice', 'Thị', ARRAY['ゼ','シ'], ARRAY['これ','この','ここ'], 9, 'b8af1855-8d69-4238-bc65-6925c1c993cd') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('制', 'N3', 'system, law, rule', 'Chế', ARRAY['セイ'], NULL, 8, 'bc6a1cef-e769-454c-a64f-910a5e1b5d74') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('勢', 'N3', 'forces, energy, military strength', 'Thế', ARRAY['セイ','ゼイ'], ARRAY['いきお.い','はずみ'], 13, 'd9107ec4-ea5d-4a21-bacd-ffca462b29dd') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('姓', 'N3', 'surname', 'Tính', ARRAY['セイ','ショウ'], NULL, 8, '2b2beef1-465e-418b-9883-672cd0e0a712') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('征', 'N2', 'subjugate, attack the rebellious, collect taxes', 'Chinh', ARRAY['セイ'], NULL, 8, '5a7d3fce-7600-45fd-91a8-2af832381ee4') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('性', 'N3', 'sex, gender, nature', 'Tính', ARRAY['セイ','ショウ'], ARRAY['さが'], 8, '1659d447-8145-42d3-8262-2d05cea9f834') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('成', 'N3', 'turn into, become, get, grow, elapse, reach', 'Thành', ARRAY['セイ','ジョウ'], ARRAY['な.る','な.す','-な.す'], 6, '05e52f9b-ed68-4ba8-8ccd-b22e4b8860b4') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('政', 'N3', 'politics, government', 'Chánh', ARRAY['セイ','ショウ'], ARRAY['まつりごと','まん'], 9, 'b62aa3f5-bcc4-4c24-944d-b02f3fbb5499') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('整', 'N3', 'organize, arranging, tune, tone, meter, key (music)', 'Chỉnh', ARRAY['セイ'], ARRAY['ととの.える','ととの.う'], 16, 'b62aa3f5-bcc4-4c24-944d-b02f3fbb5499') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('星', 'N3', 'star, spot, dot, mark', 'Tinh', ARRAY['セイ','ショウ'], ARRAY['ほし','-ぼし'], 9, 'b8af1855-8d69-4238-bc65-6925c1c993cd') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('晴', 'N3', 'clear up', 'Tình', ARRAY['セイ'], ARRAY['は.れる','は.れ','は.れ-','-ば.れ','は.らす'], 12, 'b8af1855-8d69-4238-bc65-6925c1c993cd') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('正', 'N4', 'correct, justice, righteous, 10**40', 'Chánh, Chính', ARRAY['セイ','ショウ'], ARRAY['ただ.しい','ただ.す','まさ','まさ.に'], 5, '5abe55eb-4f3c-429f-8c1f-dfa8aca4b1f4') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('清', 'N3', 'pure, purify, cleanse, exorcise, Manchu dynasty', 'Thanh', ARRAY['セイ','ショウ','シン'], ARRAY['きよ.い','きよ.まる','きよ.める'], 11, '10673667-6c56-413d-bbd5-a48794fb7725') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('牲', 'N2', 'animal sacrifice, offering', 'Sinh', ARRAY['セイ'], NULL, 9, 'a55bbf5a-1ffc-48ef-909c-6b366c2d8398') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('生', 'N5', 'life, genuine, birth', 'Sanh, Sinh', ARRAY['セイ','ショウ'], ARRAY['い.きる','い.かす','い.ける','う.まれる','うま.れる','う.まれ','うまれ','う.む','お.う','は.える','は.やす','き','なま','なま-','な.る','な.す','む.す','-う'], 5, 'e841c19b-3caf-4d1b-8fdc-6944428d0791') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('盛', 'N2', 'boom, prosper, copulate', 'Thịnh, Thình', ARRAY['セイ','ジョウ'], ARRAY['も.る','さか.る','さか.ん'], 11, '12bd4f5a-a4fb-451b-b25d-418406c683fa') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('精', 'N3', 'refined, ghost, fairy, energy, vitality, semen, excellence, purity, skill', 'Tinh', ARRAY['セイ','ショウ'], ARRAY['しら.げる','くわ.しい'], 14, '8497383a-f56a-48b2-a4bd-8c8673d82955') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('聖', 'N2', 'holy, saint, sage, master, priest', 'Thánh', ARRAY['セイ','ショウ'], ARRAY['ひじり'], 13, '161e8737-630f-4a34-a6b4-6a75a2f52fbc') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('声', 'N4', 'voice', 'Thanh', ARRAY['セイ','ショウ'], ARRAY['こえ','こわ-'], 7, 'd76d5b2c-c675-4484-a875-14a4e0534449') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('製', 'N3', 'made in..., manufacture', 'Chế', ARRAY['セイ'], NULL, 14, '9c5b95cd-6590-4a03-8c61-a68c80da3c8c') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('西', 'N5', 'west, Spain', 'Tây, Tê', ARRAY['セイ','サイ','ス'], ARRAY['にし'], 6, '428b8fa3-e5c4-496c-aeda-768f030a5732') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('誠', 'N2', 'sincerity, admonish, warn, prohibit, truth, fidelity', 'Thành', ARRAY['セイ'], ARRAY['まこと'], 13, '7fd47228-ad16-439a-8685-ad9cacdeb95e') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('誓', 'N2', 'vow, swear, pledge', 'Thệ', ARRAY['セイ'], ARRAY['ちか.う'], 14, '7fd47228-ad16-439a-8685-ad9cacdeb95e') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('請', 'N2', 'solicit, invite, ask', 'Thỉnh, Tính', ARRAY['セイ','シン','ショウ'], ARRAY['こ.う','う.ける'], 15, '7fd47228-ad16-439a-8685-ad9cacdeb95e') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('逝', 'N2', 'departed, die', 'Thệ', ARRAY['セイ'], ARRAY['ゆ.く','い.く'], 10, '371180fe-c78a-477d-b628-86c3e88e03f1') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('青', 'N4', 'blue, green', 'Thanh', ARRAY['セイ','ショウ'], ARRAY['あお','あお-','あお.い'], 8, '3f82998e-54df-4e1b-8468-eb35d0405533') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('静', 'N3', 'quiet', 'Tĩnh, Tịnh', ARRAY['セイ','ジョウ'], ARRAY['しず-','しず.か','しず.まる','しず.める'], 14, '3f82998e-54df-4e1b-8468-eb35d0405533') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('斉', 'N2', 'adjusted, alike, equal, similar variety of', 'Tế, Tề, Tày, Tầy, Tè', ARRAY['セイ','サイ'], ARRAY['そろ.う','ひと.しい','ひと.しく','あたる','はやい'], 8, '0382437a-c430-4ec1-bbc0-ca8deea360c9') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('税', 'N3', 'tax, duty', 'Thoát, Thối, Thuế, Thuê', ARRAY['ゼイ'], NULL, 12, '18d824dd-4b06-48c0-9e40-ff5132c75dc9') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('隻', 'N2', 'vessels, counter for ships, fish, birds, arrows, one of a pair', 'Chích', ARRAY['セキ'], NULL, 10, 'e9426c63-0e1d-4399-a59e-ce2e851fa615') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('席', 'N3', 'seat, mat, occasion, place', 'Tịch', ARRAY['セキ'], ARRAY['むしろ'], 10, 'c3c77b72-afa6-4b3f-acd2-b9a7f991cf53') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('惜', 'N2', 'pity, be sparing of, frugal, stingy, regret', 'Tích', ARRAY['セキ'], ARRAY['お.しい','お.しむ'], 11, '1659d447-8145-42d3-8262-2d05cea9f834') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('斥', 'N2', 'reject, retreat, recede, withdraw, repel, repulse', 'Xích', ARRAY['セキ'], ARRAY['しりぞ.ける'], 5, 'ce2155c8-dac3-4d8d-8eba-ce37c06541f4') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('昔', 'N3', 'once upon a time, antiquity, old times', 'Tích', ARRAY['セキ','シャク'], ARRAY['むかし'], 8, 'b8af1855-8d69-4238-bc65-6925c1c993cd') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('析', 'N2', 'chop, divide, tear, analyze', 'Tích', ARRAY['セキ'], NULL, 8, '80c53d4a-31b5-442f-be48-5d1b64972fae') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('石', 'N3', 'stone', 'Thạch', ARRAY['セキ','シャク','コク'], ARRAY['いし'], 5, 'c3bb7570-e8b9-49cc-bf56-90e74165d503') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('積', 'N3', 'volume, product (x*y), acreage, contents, pile up, stack, load, amass', 'Tích, Tí', ARRAY['セキ'], ARRAY['つ.む','-づ.み','つ.もる','つ.もり'], 16, '18d824dd-4b06-48c0-9e40-ff5132c75dc9') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('籍', 'N2', 'enroll, domiciliary register, membership', 'Tịch, Tạ', ARRAY['セキ'], NULL, 20, 'da702964-289f-443e-995f-0f7c0d2a57f3') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('績', 'N3', 'exploits, achievements, unreeling cocoons', 'Tích', ARRAY['セキ'], NULL, 17, '2d4eb76f-4fae-4d05-855c-2520845188ed') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('責', 'N3', 'blame, condemn, censure', 'Trách, Trái', ARRAY['セキ'], ARRAY['せ.める'], 11, '0cb16105-d4c3-4534-9e4e-0eecbad15787') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('赤', 'N4', 'red', 'Xích, Thích', ARRAY['セキ','シャク'], ARRAY['あか','あか-','あか.い','あか.らむ','あか.らめる'], 7, 'b284da4d-d842-4305-a8aa-c347d8dc91ca') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('跡', 'N2', 'tracks, mark, print, impression', 'Tích', ARRAY['セキ'], ARRAY['あと'], 13, 'ad5f2a38-b774-4a9b-b3ff-2b2cb029cc51') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('碩', 'N2', 'large, great, eminent', 'Thạc', ARRAY['セキ'], ARRAY['おお.きい'], 14, 'c3bb7570-e8b9-49cc-bf56-90e74165d503') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('切', 'N4', 'cut, cutoff, be sharp', 'Thiết, Thế', ARRAY['セツ','サイ'], ARRAY['き.る','-き.る','き.り','-き.り','-ぎ.り','き.れる','-き.れる','き.れ','-き.れ','-ぎ.れ'], 4, 'bc6a1cef-e769-454c-a64f-910a5e1b5d74') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('拙', 'N2', 'bungling, clumsy, unskillful', 'Chuyết', ARRAY['セツ'], ARRAY['つたな.い'], 8, 'eaca9807-b2da-4d99-8585-13d429ea249d') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('接', 'N3', 'touch, contact, adjoin, piece together', 'Tiếp', ARRAY['セツ','ショウ'], ARRAY['つ.ぐ'], 11, 'eaca9807-b2da-4d99-8585-13d429ea249d') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('摂', 'N2', 'vicarious, surrogate, act in addition to, take in, absorb', 'Xếp', ARRAY['セツ','ショウ'], ARRAY['おさ.める','かね.る','と.る'], 13, 'eaca9807-b2da-4d99-8585-13d429ea249d') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('折', 'N3', 'fold, break, fracture, bend, yield, submit', 'Chiết, Đề', ARRAY['セツ','シャク'], ARRAY['お.る','おり','お.り','-お.り','お.れる'], 7, 'eaca9807-b2da-4d99-8585-13d429ea249d') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('設', 'N3', 'establishment, provision, prepare', 'Thiết', ARRAY['セツ'], ARRAY['もう.ける'], 11, '7fd47228-ad16-439a-8685-ad9cacdeb95e') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('窃', 'N2', 'stealth, steal, secret, private, hushed', 'Thiết', ARRAY['セツ'], ARRAY['ぬす.む','ひそ.か'], 9, 'bff21635-eba6-4d8c-9cb9-99e227a4820a') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('節', 'N3', 'node, season, period, occasion, verse, clause, stanza, honor, joint, knuckle, knob, knot, tune, melody', 'Tiết, Tiệt', ARRAY['セツ','セチ'], ARRAY['ふし','-ぶし','のっと'], 13, 'da702964-289f-443e-995f-0f7c0d2a57f3') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('説', 'N4', 'opinion, theory, explanation, rumor', 'Duyệt, Thoát, Thuế, Thuyết, Thót, Thốt', ARRAY['セツ','ゼイ'], ARRAY['と.く'], 14, '7fd47228-ad16-439a-8685-ad9cacdeb95e') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('雪', 'N3', 'snow', 'Tuyết', ARRAY['セツ'], ARRAY['ゆき'], 11, '491a9ec1-aebb-486b-9e2d-050c80063a8f') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('絶', 'N3', 'discontinue, sever, cut off, abstain, interrupt, suppress, be beyond, without match, peerless, unparalleled', 'Tuyệt, Tiệt, Tịt, Toẹt', ARRAY['ゼツ'], ARRAY['た.える','た.やす','た.つ'], 12, '2d4eb76f-4fae-4d05-855c-2520845188ed') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('舌', 'N2', 'tongue, reed, clapper', 'Thiệt', ARRAY['ゼツ'], ARRAY['した'], 6, 'c80e7d8d-c42f-42ce-925f-24c90a2fa988') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('仙', 'N2', 'hermit, wizard, cent', 'Tiên', ARRAY['セン','セント'], NULL, 5, '78419994-196d-4445-8165-a6029d33a0ff') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('先', 'N5', 'before, ahead, previous, future, precedence', 'Tiên, Tiến', ARRAY['セン'], ARRAY['さき','ま.ず'], 6, '88165dcc-9e82-4204-80b3-e041b6649197') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('千', 'N5', 'thousand', 'Thiên', ARRAY['セン'], ARRAY['ち'], 3, 'ac324fde-d736-479e-b9ae-c0f09a7f3091') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('占', 'N3', 'fortune-telling, divining, forecasting, occupy, hold, have, get, take', 'Chiêm, Chiếm', ARRAY['セン'], ARRAY['し.める','うらな.う'], 5, '3386c572-3ced-4944-8533-61d01e96733b') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('宣', 'N2', 'proclaim, say, announce', 'Tuyên', ARRAY['セン'], ARRAY['のたま.う'], 9, '66a403fd-ce7c-4ecc-820d-3f1718e79119') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('専', 'N3', 'specialty, exclusive, mainly, solely', 'Chuyên', ARRAY['セン'], ARRAY['もっぱ.ら'], 9, '693998e2-9356-4193-bcef-4b2f79e9e857') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('川', 'N5', 'stream, river, river or three-stroke river radical (no. 47)', 'Xuyên', ARRAY['セン'], ARRAY['かわ'], 3, 'a9777fba-5783-458e-a497-0fb6a8ddd6b7') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('戦', 'N3', 'war, battle, match', 'Khuyết', ARRAY['セン'], ARRAY['いくさ','たたか.う','おのの.く','そよ.ぐ','わなな.く'], 13, '05e52f9b-ed68-4ba8-8ccd-b22e4b8860b4') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('扇', 'N2', 'fan, folding fan', 'Phiến, Thiên', ARRAY['セン'], ARRAY['おうぎ'], 10, '3df4fb00-e325-4d60-b6e2-dac33518caca') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('栓', 'N2', 'plug, bolt, cork, bung, stopper', 'Xuyên', ARRAY['セン'], NULL, 10, '80c53d4a-31b5-442f-be48-5d1b64972fae') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('泉', 'N3', 'spring, fountain', 'Tuyền, Toàn', ARRAY['セン'], ARRAY['いずみ'], 9, '10673667-6c56-413d-bbd5-a48794fb7725') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('浅', 'N3', 'shallow, superficial, frivolous, wretched, shameful', 'Thiển, Tiên', ARRAY['セン'], ARRAY['あさ.い'], 9, '10673667-6c56-413d-bbd5-a48794fb7725') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('洗', 'N4', 'wash, inquire into, probe', 'Tẩy, Tiển', ARRAY['セン'], ARRAY['あら.う'], 9, '10673667-6c56-413d-bbd5-a48794fb7725') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('染', 'N2', 'dye, color, paint, stain, print', 'Nhiễm', ARRAY['セン'], ARRAY['そ.める','そ.まる','し.みる','し.み'], 9, '80c53d4a-31b5-442f-be48-5d1b64972fae') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('潜', 'N2', 'submerge, conceal, hide, lower (voice), hush', 'Tiềm, Tèm, Tỉm', ARRAY['セン'], ARRAY['ひそ.む','もぐ.る','かく.れる','くぐ.る','ひそ.める'], 15, '10673667-6c56-413d-bbd5-a48794fb7725') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('旋', 'N2', 'rotation, go around', 'Toàn', ARRAY['セン'], ARRAY['め.ぐる','いばり'], 11, '816fcd71-fef2-4808-a4c6-60bc531d2d01') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('線', 'N3', 'line, track', 'Tuyến', ARRAY['セン'], ARRAY['すじ'], 15, '2d4eb76f-4fae-4d05-855c-2520845188ed') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('繊', 'N2', 'slender, fine, thin kimono', 'Tiêm', ARRAY['セン'], NULL, 17, '2d4eb76f-4fae-4d05-855c-2520845188ed') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('船', 'N3', 'ship, boat', 'Thuyền', ARRAY['セン'], ARRAY['ふね','ふな-'], 11, 'c2814223-66bf-4fde-bf2e-3b95fa5d206c') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('薦', 'N2', 'recommend, mat, advise, encourage, offer', 'Tiến', ARRAY['セン'], ARRAY['すす.める'], 16, '25c57eec-88fa-4e6e-95a2-9ba83b5f4246') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('践', 'N2', 'tread, step on, trample, practice, carry through', 'Tiễn', ARRAY['セン'], ARRAY['ふ.む'], 13, 'ad5f2a38-b774-4a9b-b3ff-2b2cb029cc51') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('選', 'N3', 'elect, select, choose, prefer', 'Tuyển, Tuyến', ARRAY['セン'], ARRAY['えら.ぶ','え.る','よ.る'], 15, '371180fe-c78a-477d-b628-86c3e88e03f1') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('遷', 'N2', 'transition, move, change', 'Thiên', ARRAY['セン'], ARRAY['うつ.る','うつ.す','みやこがえ'], 15, '371180fe-c78a-477d-b628-86c3e88e03f1') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('銭', 'N2', 'coin, .01 yen, money', 'Tiền', ARRAY['セン','ゼン'], ARRAY['ぜに','すき'], 14, 'c3b48b38-6414-47f2-a7ac-d72a85c0e35a') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('銑', 'N2', 'pig iron', 'Tiển', ARRAY['セン'], NULL, 14, 'c3b48b38-6414-47f2-a7ac-d72a85c0e35a') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('鮮', 'N2', 'fresh, vivid, clear, brilliant, Korea', 'Tiên, Tiển', ARRAY['セン'], ARRAY['あざ.やか'], 17, '91b15cdf-2754-4848-bc73-b3d4589b39ad') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('前', 'N5', 'in front, before', 'Tiền', ARRAY['ゼン'], ARRAY['まえ','-まえ'], 9, 'bc6a1cef-e769-454c-a64f-910a5e1b5d74') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('善', 'N3', 'virtuous, good, goodness', 'Thiện, Thiến', ARRAY['ゼン'], ARRAY['よ.い','い.い','よ.く','よし.とする'], 12, 'a54e08f0-b1f4-49b0-bdcd-1fcfab9f5eb7') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('漸', 'N2', 'steadily, gradually advancing, finally, barely', 'Tiệm, Tiêm, Tiềm', ARRAY['ゼン'], ARRAY['ようや.く','やや','ようよ.う','すす.む'], 14, '10673667-6c56-413d-bbd5-a48794fb7725') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('然', 'N3', 'sort of thing, so, if so, in that case, well', 'Nhiên', ARRAY['ゼン','ネン'], ARRAY['しか','しか.り','しか.し','さ'], 12, '831cfc6a-79c9-4ebb-a4cc-ba737a36caf7') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('全', 'N3', 'whole, entire, all, complete, fulfill', 'Toàn', ARRAY['ゼン'], ARRAY['まった.く','すべ.て'], 6, 'bb4502f7-01f8-44ba-a883-f7c7040cb25f') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('禅', 'N2', 'Zen, silent meditation', 'Thiền, Thiện, Xèng', ARRAY['ゼン','セン'], ARRAY['しずか','ゆず.る'], 13, 'aa655283-0fb9-4ae0-a339-aa1437f00ad1') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('繕', 'N2', 'darning, repair, mend, trim, tidy up, adjust', 'Thiện', ARRAY['ゼン'], ARRAY['つくろ.う'], 18, '2d4eb76f-4fae-4d05-855c-2520845188ed') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('塑', 'N2', 'model, molding', 'Tố', ARRAY['ソ'], ARRAY['でく'], 13, '2fd61440-db3f-4cd5-8101-9e74019df262') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('措', 'N2', 'set aside, give up, suspend, discontinue, lay aside, except', 'Thố, Trách', ARRAY['ソ'], ARRAY['お.く'], 11, 'eaca9807-b2da-4d99-8585-13d429ea249d') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('疎', 'N2', 'alienate, rough, neglect, shun, sparse, penetrate', 'Sơ', ARRAY['ソ','ショ'], ARRAY['うと.い','うと.む','まば.ら'], 12, '9089f172-af07-4bde-9932-425b9fda9d0d') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('礎', 'N2', 'cornerstone, foundation stone', 'Sở', ARRAY['ソ'], ARRAY['いしずえ'], 18, 'c3bb7570-e8b9-49cc-bf56-90e74165d503') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('祖', 'N3', 'ancestor, pioneer, founder', 'Tổ', ARRAY['ソ'], NULL, 9, 'aa655283-0fb9-4ae0-a339-aa1437f00ad1') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('租', 'N2', 'tariff, crop tax, borrowing', 'Tô', ARRAY['ソ'], NULL, 10, '18d824dd-4b06-48c0-9e40-ff5132c75dc9') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('粗', 'N2', 'coarse, rough, rugged', 'Thô', ARRAY['ソ'], ARRAY['あら.い','あら-'], 11, '8497383a-f56a-48b2-a4bd-8c8673d82955') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('素', 'N2', 'elementary, principle, naked, uncovered', 'Tố', ARRAY['ソ','ス'], ARRAY['もと'], 10, '2d4eb76f-4fae-4d05-855c-2520845188ed') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('組', 'N3', 'association, braid, plait, construct, assemble, unite, cooperate, grapple', 'Tổ', ARRAY['ソ'], ARRAY['く.む','くみ','-ぐみ'], 11, '2d4eb76f-4fae-4d05-855c-2520845188ed') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('訴', 'N2', 'accusation, sue, complain of pain, appeal to', 'Tố', ARRAY['ソ'], ARRAY['うった.える'], 12, '7fd47228-ad16-439a-8685-ad9cacdeb95e') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('阻', 'N2', 'thwart, separate from, prevent, obstruct, deter, impede', 'Trở', ARRAY['ソ'], ARRAY['はば.む'], 8, 'b85628b0-3f6a-420a-91c7-0cfbd5055459') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('僧', 'N2', 'Buddhist priest, monk', 'Tăng', ARRAY['ソウ'], NULL, 13, '78419994-196d-4445-8165-a6029d33a0ff') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('創', 'N2', 'genesis, wound, injury, hurt, start, originate', 'Sang, Sáng', ARRAY['ソウ','ショウ'], ARRAY['つく.る','はじ.める','きず','けず.しける'], 12, 'bc6a1cef-e769-454c-a64f-910a5e1b5d74') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('双', 'N3', 'pair, set, comparison, counter for pairs', 'Song', ARRAY['ソウ'], ARRAY['ふた','たぐい','ならぶ','ふたつ'], 4, '6068ca21-fb74-4144-9b3d-7b93749eccdd') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('倉', 'N2', 'godown, warehouse, storehouse, cellar, treasury', 'Thương, Thảng', ARRAY['ソウ'], ARRAY['くら'], 10, '78419994-196d-4445-8165-a6029d33a0ff') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('喪', 'N2', 'miss, mourning', 'Tang, Táng', ARRAY['ソウ'], ARRAY['も'], 12, 'a54e08f0-b1f4-49b0-bdcd-1fcfab9f5eb7') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('壮', 'N2', 'robust, manhood, prosperity', 'Trang, Tráng', ARRAY['ソウ'], ARRAY['さかん'], 6, 'd76d5b2c-c675-4484-a875-14a4e0534449') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('奏', 'N2', 'play music, speak to a ruler, complete', 'Tấu', ARRAY['ソウ'], ARRAY['かな.でる'], 9, '457c9d33-f2d9-4f61-bca8-910ce7ade194') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('爽', 'N2', 'refreshing, bracing, resonant, sweet, clear', 'Sảng', ARRAY['ソウ'], ARRAY['あき.らか','さわ.やか','たがう'], 11, 'e9b028db-337d-4945-b609-c32f8ea3cde8') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('層', 'N3', 'stratum, social class, layer, story, floor', 'Tằng', ARRAY['ソウ'], NULL, 14, 'dbb1b9f0-b6d7-4c0b-989a-7a98ab167f37') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('惣', 'N2', 'all', 'Tổng', ARRAY['ソウ'], ARRAY['すべ.て'], 12, '1659d447-8145-42d3-8262-2d05cea9f834') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('想', 'N3', 'idea, thought, conception, think', 'Tưởng', ARRAY['ソウ','ソ'], ARRAY['おも.う'], 13, '1659d447-8145-42d3-8262-2d05cea9f834') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('捜', 'N3', 'search, look for, locate', 'Sưu', ARRAY['ソウ','シュ','シュウ'], ARRAY['さが.す'], 10, 'eaca9807-b2da-4d99-8585-13d429ea249d') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('掃', 'N3', 'sweep, brush', 'Tảo', ARRAY['ソウ','シュ'], ARRAY['は.く'], 11, 'eaca9807-b2da-4d99-8585-13d429ea249d') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('挿', 'N2', 'insert, put in, graft, wear (sword)', 'Sáp, Tháp, Khắp, Sấp, Tráp, Xếp', ARRAY['ソウ'], ARRAY['さ.す','はさ.む'], 10, 'eaca9807-b2da-4d99-8585-13d429ea249d') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('操', 'N3', 'maneuver, manipulate, operate, steer, chastity, virginity, fidelity', 'Thao, Tháo', ARRAY['ソウ','サン'], ARRAY['みさお','あやつ.る'], 16, 'eaca9807-b2da-4d99-8585-13d429ea249d') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('早', 'N4', 'early, fast', 'Tảo', ARRAY['ソウ','サッ'], ARRAY['はや.い','はや','はや-','はや.まる','はや.める','さ-'], 6, 'b8af1855-8d69-4238-bc65-6925c1c993cd') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('曹', 'N2', 'office, official, comrade, fellow', 'Tào', ARRAY['ソウ','ゾウ'], NULL, 11, '124d252b-1dfb-4544-8e76-7327ba3e05c3') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('巣', 'N2', 'nest, rookery, hive, cobweb, den', 'Sáo', ARRAY['ソウ'], ARRAY['す','す.くう'], 11, 'a9777fba-5783-458e-a497-0fb6a8ddd6b7') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('槽', 'N2', 'vat, tub, tank', 'Tào', ARRAY['ソウ'], ARRAY['ふね'], 15, '80c53d4a-31b5-442f-be48-5d1b64972fae') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('燥', 'N3', 'parch, dry up', 'Táo', ARRAY['ソウ'], ARRAY['はしゃ.ぐ'], 17, '831cfc6a-79c9-4ebb-a4cc-ba737a36caf7') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('争', 'N3', 'contend, dispute, argue', 'Tranh, Tránh, Chanh, Danh', ARRAY['ソウ'], ARRAY['あらそ.う','いか.でか'], 6, '9df04e71-70fe-4093-bc6b-bd76d3d32310') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('相', 'N3', 'inter-, mutual, together, each other, minister of state, councillor, aspect, phase, physiognomy', 'Tương, Tướng', ARRAY['ソウ','ショウ'], ARRAY['あい-'], 9, 'eeeb0778-60ee-4882-b7a5-d6e12279fade') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('窓', 'N3', 'window, pane', 'Song', ARRAY['ソウ','ス'], ARRAY['まど','てんまど','けむだし'], 11, 'bff21635-eba6-4d8c-9cb9-99e227a4820a') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('総', 'N3', 'general, whole, all, full, total', 'Tổng', ARRAY['ソウ'], ARRAY['す.べて','すべ.て','ふさ'], 14, '2d4eb76f-4fae-4d05-855c-2520845188ed') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('綜', 'N2', 'rule, synthesize', 'Tống, Tông', ARRAY['ソウ'], ARRAY['おさ.める','す.べる'], 14, '2d4eb76f-4fae-4d05-855c-2520845188ed') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('聡', 'N2', 'wise, fast learner', 'Thông', ARRAY['ソウ'], ARRAY['さと.い','みみざと.い'], 14, '161e8737-630f-4a34-a6b4-6a75a2f52fbc') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('草', 'N3', 'grass, weeds, herbs, pasture, write, draft', 'Thảo', ARRAY['ソウ'], ARRAY['くさ','くさ-','-ぐさ'], 9, '25c57eec-88fa-4e6e-95a2-9ba83b5f4246') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('荘', 'N2', 'villa, inn, cottage, feudal manor, solemn, dignified', 'Trang', ARRAY['ソウ','ショウ','チャン'], ARRAY['ほうき','おごそ.か'], 9, '25c57eec-88fa-4e6e-95a2-9ba83b5f4246') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('葬', 'N2', 'interment, bury, shelve', 'Táng', ARRAY['ソウ'], ARRAY['ほうむ.る'], 12, '25c57eec-88fa-4e6e-95a2-9ba83b5f4246') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('蒼', 'N2', 'blue, pale', 'Thương, Thưởng', ARRAY['ソウ'], ARRAY['あお.い'], 13, '25c57eec-88fa-4e6e-95a2-9ba83b5f4246') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('藻', 'N2', 'seaweed, duckweed', 'Tảo', ARRAY['ソウ'], ARRAY['も'], 19, '25c57eec-88fa-4e6e-95a2-9ba83b5f4246') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('装', 'N3', 'attire, dress, pretend, disguise, profess', 'Trang', ARRAY['ソウ','ショウ'], ARRAY['よそお.う','よそお.い'], 12, '9c5b95cd-6590-4a03-8c61-a68c80da3c8c') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('走', 'N4', 'run', 'Tẩu', ARRAY['ソウ'], ARRAY['はし.る'], 7, '432fb72b-e9d0-4c51-981a-ebec3d1c1488') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('送', 'N4', 'escort, send', 'Tống', ARRAY['ソウ'], ARRAY['おく.る'], 9, '371180fe-c78a-477d-b628-86c3e88e03f1') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('遭', 'N2', 'encounter, meet, party, association, interview, join', 'Tao', ARRAY['ソウ'], ARRAY['あ.う','あ.わせる'], 14, '371180fe-c78a-477d-b628-86c3e88e03f1') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('霜', 'N2', 'frost', 'Sương', ARRAY['ソウ'], ARRAY['しも'], 17, '491a9ec1-aebb-486b-9e2d-050c80063a8f') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('騒', 'N2', 'boisterous, make noise, clamor, disturb, excite', 'Tao', ARRAY['ソウ'], ARRAY['さわ.ぐ','うれい','さわ.がしい'], 18, 'd7bb7ac5-d329-47fc-981a-3b2bc480c688') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('像', 'N3', 'statue, picture, image, figure, portrait', 'Tượng', ARRAY['ゾウ'], NULL, 14, '78419994-196d-4445-8165-a6029d33a0ff') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('増', 'N3', 'increase, add, augment, gain, promote', 'Tăng', ARRAY['ゾウ'], ARRAY['ま.す','ま.し','ふ.える','ふ.やす'], 14, '2fd61440-db3f-4cd5-8101-9e74019df262') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('憎', 'N3', 'hate, detest', 'Tăng', ARRAY['ゾウ'], ARRAY['にく.む','にく.い','にく.らしい','にく.しみ'], 14, '1659d447-8145-42d3-8262-2d05cea9f834') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('臓', 'N3', 'entrails, viscera, bowels', 'Tạng', ARRAY['ゾウ'], ARRAY['はらわた'], 19, '71cc2465-f238-4f52-b9e3-39f8f95caaba') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('蔵', 'N3', 'storehouse, hide, own, have, possess', 'Tàng, Tạng', ARRAY['ゾウ','ソウ'], ARRAY['くら','おさ.める','かく.れる'], 15, '25c57eec-88fa-4e6e-95a2-9ba83b5f4246') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('贈', 'N3', 'presents, send, give to, award to, confer on, presenting something', 'Tặng', ARRAY['ゾウ','ソウ'], ARRAY['おく.る'], 18, '0cb16105-d4c3-4534-9e4e-0eecbad15787') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('造', 'N3', 'create, make, structure, physique', 'Tạo, Tháo', ARRAY['ゾウ'], ARRAY['つく.る','つく.り','-づく.り'], 10, '371180fe-c78a-477d-b628-86c3e88e03f1') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('促', 'N2', 'stimulate, urge, press, demand, incite', 'Xúc', ARRAY['ソク'], ARRAY['うなが.す'], 9, '78419994-196d-4445-8165-a6029d33a0ff') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('側', 'N3', 'side, lean, oppose, regret', 'Trắc', ARRAY['ソク'], ARRAY['かわ','がわ','そば'], 11, '78419994-196d-4445-8165-a6029d33a0ff') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('則', 'N3', 'rule, law, follow, based on, model after', 'Tắc', ARRAY['ソク'], ARRAY['のっと.る','のり','すなわち'], 9, 'bc6a1cef-e769-454c-a64f-910a5e1b5d74') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('即', 'N2', 'instant, namely, as is, conform, agree, adapt', 'Tức', ARRAY['ソク'], ARRAY['つ.く','つ.ける','すなわ.ち'], 7, 'd88fdf4e-6084-471d-ac31-64ddac58a407') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('息', 'N3', 'breath, respiration, son, interest (on money), rest, coming to an end', 'Tức', ARRAY['ソク'], ARRAY['いき'], 10, '1659d447-8145-42d3-8262-2d05cea9f834') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('束', 'N3', 'bundle, sheaf, ream, tie in bundles, govern, manage, control', 'Thúc, Thú', ARRAY['ソク'], ARRAY['たば','たば.ねる','つか','つか.ねる'], 7, '80c53d4a-31b5-442f-be48-5d1b64972fae') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('測', 'N3', 'fathom, plan, scheme, measure', 'Trắc', ARRAY['ソク'], ARRAY['はか.る'], 12, '10673667-6c56-413d-bbd5-a48794fb7725') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('足', 'N5', 'leg, foot, be sufficient, counter for pairs of footwear', 'Túc', ARRAY['ソク'], ARRAY['あし','た.りる','た.る','た.す'], 7, 'ad5f2a38-b774-4a9b-b3ff-2b2cb029cc51') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('速', 'N3', 'quick, fast', 'Tốc', ARRAY['ソク'], ARRAY['はや.い','はや-','はや.める','すみ.やか'], 10, '371180fe-c78a-477d-b628-86c3e88e03f1') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('俗', 'N2', 'vulgar, customs, manners, worldliness, mundane things', 'Tục', ARRAY['ゾク'], NULL, 9, '78419994-196d-4445-8165-a6029d33a0ff') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('属', 'N2', 'belong, genus, subordinate official, affiliated', 'Chú, Chúc, Thục, Thuộc', ARRAY['ゾク','ショク'], ARRAY['さかん','つく','やから'], 12, 'dbb1b9f0-b6d7-4c0b-989a-7a98ab167f37') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('賊', 'N2', 'burglar, rebel, traitor, robber', 'Tặc', ARRAY['ゾク'], NULL, 13, '0cb16105-d4c3-4534-9e4e-0eecbad15787') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('族', 'N4', 'tribe, family', 'Tộc', ARRAY['ゾク'], NULL, 11, '816fcd71-fef2-4808-a4c6-60bc531d2d01') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('続', 'N3', 'continue, series, sequel', 'Tục', ARRAY['ゾク','ショク','コウ','キョウ'], ARRAY['つづ.く','つづ.ける','つぐ.ない'], 13, '2d4eb76f-4fae-4d05-855c-2520845188ed') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('卒', 'N3', 'graduate, soldier, private, die', 'Tốt, Tuất, Thốt', ARRAY['ソツ','シュツ'], ARRAY['そっ.する','お.える','お.わる','ついに','にわか'], 8, 'ac324fde-d736-479e-b9ae-c0f09a7f3091') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('存', 'N3', 'exist, suppose, be aware of, believe, feel', 'Tồn', ARRAY['ソン','ゾン'], ARRAY['ながら.える','あ.る','たも.つ','と.う'], 6, '7c3ff4e1-b8e9-4c25-ba10-0fbf8198a71d') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('孫', 'N3', 'grandchild, descendants', 'Tôn, Tốn', ARRAY['ソン'], ARRAY['まご'], 10, '7c3ff4e1-b8e9-4c25-ba10-0fbf8198a71d') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('尊', 'N3', 'revered, valuable, precious, noble, exalted', 'Tôn', ARRAY['ソン'], ARRAY['たっと.い','とうと.い','たっと.ぶ','とうと.ぶ'], 12, '693998e2-9356-4193-bcef-4b2f79e9e857') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('損', 'N3', 'damage, loss, disadvantage, hurt, injure', 'Tổn', ARRAY['ソン'], ARRAY['そこ.なう','そこな.う','-そこ.なう','そこ.ねる','-そこ.ねる'], 13, 'eaca9807-b2da-4d99-8585-13d429ea249d') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('村', 'N4', 'village, town', 'Thôn', ARRAY['ソン'], ARRAY['むら'], 7, '80c53d4a-31b5-442f-be48-5d1b64972fae') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('他', 'N3', 'other, another, the others', 'Tha', ARRAY['タ'], ARRAY['ほか'], 5, '78419994-196d-4445-8165-a6029d33a0ff') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('多', 'N5', 'many, frequent, much', 'Đa', ARRAY['タ'], ARRAY['おお.い','まさ.に','まさ.る'], 6, '61ef9463-b171-47ec-b077-20f2dcd774fc') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('太', 'N4', 'plump, thick, big around', 'Thái', ARRAY['タイ','タ'], ARRAY['ふと.い','ふと.る'], 4, '457c9d33-f2d9-4f61-bca8-910ce7ade194') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('汰', 'N2', 'washing, sieving, filtering, weeding out, luxury', 'Thái, Thải', ARRAY['タ','タイ'], ARRAY['おご.る','にご.る','よな.げる'], 7, '10673667-6c56-413d-bbd5-a48794fb7725') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('堕', 'N2', 'degenerate, descend to, lapse into', 'Đọa, Đoạ, Huy', ARRAY['ダ'], ARRAY['お.ちる','くず.す','くず.れる'], 12, '2fd61440-db3f-4cd5-8101-9e74019df262') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('妥', 'N2', 'gentle, peace, satisfactory, appropriate', 'Thỏa', ARRAY['ダ'], NULL, 7, '2b2beef1-465e-418b-9883-672cd0e0a712') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('惰', 'N2', 'lazy, laziness', 'Nọa', ARRAY['ダ'], NULL, 12, '1659d447-8145-42d3-8262-2d05cea9f834') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('打', 'N3', 'strike, hit, knock, pound, dozen', 'Đả', ARRAY['ダ','ダース'], ARRAY['う.つ','う.ち-','ぶ.つ'], 5, 'eaca9807-b2da-4d99-8585-13d429ea249d') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('駄', 'N2', 'burdensome, pack horse, horse load, send by horse, trivial, worthless', 'Đà', ARRAY['ダ','タ'], NULL, 14, 'd7bb7ac5-d329-47fc-981a-3b2bc480c688') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('体', 'N4', 'body, substance, object, reality, counter for images', 'Thể', ARRAY['タイ','テイ'], ARRAY['からだ','かたち'], 7, '78419994-196d-4445-8165-a6029d33a0ff') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('対', 'N3', 'vis-a-vis, opposite, even, equal, versus, anti-, compare', 'Đối', ARRAY['タイ','ツイ'], ARRAY['あいて','こた.える','そろ.い','つれあ.い','なら.ぶ','むか.う'], 7, '693998e2-9356-4193-bcef-4b2f79e9e857') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('耐', 'N2', '-proof, enduring', 'Nại', ARRAY['タイ'], ARRAY['た.える'], 9, '7bc7c293-4449-4486-86d1-c8dc8e285e69') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('帯', 'N3', 'sash, belt, obi, zone, region', 'Đái, Đới, Đai', ARRAY['タイ'], ARRAY['お.びる','おび'], 10, 'c3c77b72-afa6-4b3f-acd2-b9a7f991cf53') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('待', 'N4', 'wait, depend on', 'Đãi', ARRAY['タイ'], ARRAY['ま.つ','-ま.ち'], 9, '5a7d3fce-7600-45fd-91a8-2af832381ee4') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('怠', 'N2', 'neglect, laziness', 'Đãi', ARRAY['タイ'], ARRAY['おこた.る','なま.ける'], 9, '1659d447-8145-42d3-8262-2d05cea9f834') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('態', 'N2', 'attitude, condition, figure, appearance, voice (of verbs)', 'Thái', ARRAY['タイ'], ARRAY['わざ.と'], 14, '1659d447-8145-42d3-8262-2d05cea9f834') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('替', 'N3', 'exchange, spare, substitute, per-', 'Thế', ARRAY['タイ'], ARRAY['か.える','か.え-','か.わる'], 12, '124d252b-1dfb-4544-8e76-7327ba3e05c3') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('泰', 'N2', 'peaceful, calm, peace, easy, Thailand, extreme, excessive, great', 'Thái', ARRAY['タイ'], NULL, 10, '10673667-6c56-413d-bbd5-a48794fb7725') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('滞', 'N2', 'stagnate, be delayed, overdue, arrears', 'Trệ', ARRAY['タイ','テイ'], ARRAY['とどこお.る'], 13, '10673667-6c56-413d-bbd5-a48794fb7725') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('胎', 'N2', 'womb, uterus', 'Thai', ARRAY['タイ'], NULL, 9, '71cc2465-f238-4f52-b9e3-39f8f95caaba') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('袋', 'N3', 'sack, bag, pouch', 'Đại', ARRAY['タイ','ダイ'], ARRAY['ふくろ'], 11, '9c5b95cd-6590-4a03-8c61-a68c80da3c8c') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('貸', 'N4', 'lend', 'Thải, Thắc', ARRAY['タイ'], ARRAY['か.す','か.し-','かし-'], 12, '0cb16105-d4c3-4534-9e4e-0eecbad15787') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('退', 'N3', 'retreat, withdraw, retire, resign, repel, expel, reject', 'Thối, Thoái', ARRAY['タイ'], ARRAY['しりぞ.く','しりぞ.ける','ひ.く','の.く','の.ける','ど.く'], 9, '371180fe-c78a-477d-b628-86c3e88e03f1') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('逮', 'N2', 'apprehend, chase', 'Đãi, Đệ', ARRAY['タイ'], NULL, 11, '371180fe-c78a-477d-b628-86c3e88e03f1') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('隊', 'N2', 'regiment, party, company, squad', 'Đội', ARRAY['タイ'], NULL, 12, 'b85628b0-3f6a-420a-91c7-0cfbd5055459') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('黛', 'N2', 'blackened eyebrows', 'Đại', ARRAY['タイ'], ARRAY['まゆずみ'], 16, '59a02dd4-c1d1-4447-8c1a-a3f367d22dc3') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('鯛', 'N2', 'sea bream, red snapper', 'Điêu', ARRAY['チョウ'], ARRAY['たい'], 19, '91b15cdf-2754-4848-bc73-b3d4589b39ad') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('代', 'N4', 'substitute, change, convert, replace, period, age, counter for decades of ages, eras, etc., generation, charge, rate, fee', 'Đại', ARRAY['ダイ','タイ'], ARRAY['か.わる','かわ.る','かわ.り','か.わり','-がわ.り','-が.わり','か.える','よ','しろ'], 5, '78419994-196d-4445-8165-a6029d33a0ff') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('台', 'N4', 'pedestal, a stand, counter for machines and vehicles', 'Thai, Đài, Di', ARRAY['ダイ','タイ'], ARRAY['うてな','われ','つかさ'], 5, 'a54e08f0-b1f4-49b0-bdcd-1fcfab9f5eb7') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('大', 'N5', 'large, big', 'Đại, Thái', ARRAY['ダイ','タイ'], ARRAY['おお-','おお.きい','-おお.いに'], 3, '457c9d33-f2d9-4f61-bca8-910ce7ade194') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('第', 'N3', 'No., residence', 'Đệ', ARRAY['ダイ','テイ'], NULL, 11, 'da702964-289f-443e-995f-0f7c0d2a57f3') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('題', 'N4', 'topic, subject', 'Đề', ARRAY['ダイ'], NULL, 18, 'be4fe89f-bae1-4238-8aad-4789348c0e13') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('鷹', 'N2', 'hawk', 'Ưng', ARRAY['ヨウ','オウ'], ARRAY['たか'], 24, 'a5d543cc-57c8-4627-8531-64c511b7bc11') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('滝', 'N2', 'waterfall, rapids, cascade', 'Long, Lùng, Rông, Rồng, Sông, Suông', ARRAY['ロウ','ソウ'], ARRAY['たき'], 13, '10673667-6c56-413d-bbd5-a48794fb7725') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('卓', 'N2', 'eminent, table, desk, high', 'Trác', ARRAY['タク'], NULL, 8, 'ac324fde-d736-479e-b9ae-c0f09a7f3091') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('啄', 'N2', 'peck, pick up', 'Trác', ARRAY['タク','ツク','トク'], ARRAY['ついば.む','つつ.く'], 10, 'a54e08f0-b1f4-49b0-bdcd-1fcfab9f5eb7') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('宅', 'N3', 'home, house, residence, our house, my husband', 'Trạch', ARRAY['タク'], NULL, 6, '66a403fd-ce7c-4ecc-820d-3f1718e79119') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('択', 'N2', 'choose, select, elect, prefer', 'Mân, Thước, Xách', ARRAY['タク'], ARRAY['えら.ぶ'], 7, 'eaca9807-b2da-4d99-8585-13d429ea249d') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('拓', 'N2', 'clear (the land), open, break up (land)', 'Thác, Tháp', ARRAY['タク'], ARRAY['ひら.く'], 8, 'eaca9807-b2da-4d99-8585-13d429ea249d') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('沢', 'N2', 'swamp, marsh, brilliance, grace', 'Trạch', ARRAY['タク'], ARRAY['さわ','うるお.い','うるお.す','つや'], 7, '10673667-6c56-413d-bbd5-a48794fb7725') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('濯', 'N3', 'laundry, wash, pour on, rinse', 'Trạc', ARRAY['タク'], ARRAY['すす.ぐ','ゆす.ぐ'], 17, '10673667-6c56-413d-bbd5-a48794fb7725') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('琢', 'N2', 'polish', 'Trác', ARRAY['タク'], ARRAY['みが.く'], 11, '1450b570-89aa-4b1c-9e48-32bc25298929') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('託', 'N2', 'consign, requesting, entrusting with, pretend, hint', 'Thác', ARRAY['タク'], ARRAY['かこつ.ける','かこ.つ','かこ.つける'], 10, '7fd47228-ad16-439a-8685-ad9cacdeb95e') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('濁', 'N2', 'voiced, uncleanness, wrong, nigori, impurity', 'Trọc, Trạc', ARRAY['ダク','ジョク'], ARRAY['にご.る','にご.す'], 16, '10673667-6c56-413d-bbd5-a48794fb7725') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('諾', 'N2', 'consent, assent, agreement', 'Nặc', ARRAY['ダク'], NULL, 15, '7fd47228-ad16-439a-8685-ad9cacdeb95e') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('只', 'N2', 'only, free, in addition', 'Chỉ', ARRAY['シ'], ARRAY['ただ'], 5, 'a54e08f0-b1f4-49b0-bdcd-1fcfab9f5eb7') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('但', 'N2', 'however, but', 'Đãn', ARRAY['タン'], ARRAY['ただ.し'], 7, '78419994-196d-4445-8165-a6029d33a0ff') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('達', 'N3', 'accomplished, reach, arrive, attain', 'Đạt', ARRAY['タツ','ダ'], ARRAY['-たち'], 12, '371180fe-c78a-477d-b628-86c3e88e03f1') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('辰', 'N2', 'sign of the dragon, 7-9AM, fifth sign of Chinese zodiac, shin dragon radical (no. 161)', 'Thần, Thìn', ARRAY['シン','ジン'], ARRAY['たつ'], 7, '528b0862-6776-4502-84b1-8ab3e22a7507') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('奪', 'N2', 'rob, take by force, snatch away, dispossess, plunder, usurp', 'Đoạt', ARRAY['ダツ'], ARRAY['うば.う'], 14, '457c9d33-f2d9-4f61-bca8-910ce7ade194') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('脱', 'N2', 'undress, removing, escape from, get rid of, be left out, take off', 'Đoái, Thoát, Thoắt, Thoạt, Xoát', ARRAY['ダツ'], ARRAY['ぬ.ぐ','ぬ.げる'], 11, '71cc2465-f238-4f52-b9e3-39f8f95caaba') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('巽', 'N2', 'southeast', 'Tốn', ARRAY['ソン'], ARRAY['たつみ'], 12, 'afc445ef-54dd-45a9-86b5-d01fbec09f75') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('棚', 'N2', 'shelf, ledge, rack, mount, mantle, trellis', 'Bằng', ARRAY['ホウ'], ARRAY['たな','-だな'], 12, '80c53d4a-31b5-442f-be48-5d1b64972fae') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('谷', 'N3', 'valley', 'Cốc, Lộc, Dục', ARRAY['コク'], ARRAY['たに','きわ.まる'], 7, 'b77aa843-d9cc-4130-abcd-d44d9625cfb5') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('丹', 'N2', 'rust-colored, red, red lead, pills, sincerity', 'Đan', ARRAY['タン'], ARRAY['に'], 4, '535f1b45-76eb-4e2f-9bc7-16a2ef38515c') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('単', 'N3', 'simple, one, single, merely', 'Đan, Đạn, Đơn, Thiền', ARRAY['タン'], ARRAY['ひとえ'], 9, 'ac324fde-d736-479e-b9ae-c0f09a7f3091') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('嘆', 'N2', 'sigh, lament, moan, grieve, sigh of admiration', 'Thán', ARRAY['タン'], ARRAY['なげ.く','なげ.かわしい'], 13, 'a54e08f0-b1f4-49b0-bdcd-1fcfab9f5eb7') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('担', 'N3', 'shouldering, carry, raise, bear', 'Đam, Đảm, Đãn, Đản, Đẵm, Đán, Đắn, Đẵn, Dằng, Đét, Đởm, Dứt, Đứt, Tạ', ARRAY['タン'], ARRAY['かつ.ぐ','にな.う'], 8, 'eaca9807-b2da-4d99-8585-13d429ea249d') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('探', 'N3', 'grope, search, look for', 'Tham, Thám', ARRAY['タン'], ARRAY['さぐ.る','さが.す'], 11, 'eaca9807-b2da-4d99-8585-13d429ea249d') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('旦', 'N2', 'daybreak, dawn, morning', 'Đán', ARRAY['タン','ダン'], ARRAY['あき.らか','あきら','ただし','あさ','あした'], 5, 'b8af1855-8d69-4238-bc65-6925c1c993cd') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('淡', 'N2', 'thin, faint, pale, fleeting', 'Đạm', ARRAY['タン'], ARRAY['あわ.い'], 11, '10673667-6c56-413d-bbd5-a48794fb7725') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('炭', 'N3', 'charcoal, coal', 'Thán', ARRAY['タン'], ARRAY['すみ'], 9, '831cfc6a-79c9-4ebb-a4cc-ba737a36caf7') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('短', 'N4', 'short, brevity, fault, defect, weak point', 'Đoản', ARRAY['タン'], ARRAY['みじか.い'], 12, 'b7deea42-61dd-4e35-a44c-25dd634fd02a') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('端', 'N2', 'edge, origin, end, point, border, verge, cape', 'Đoan', ARRAY['タン'], ARRAY['はし','は','はた','-ばた','はな'], 14, '9cf1d21c-3259-43e2-9a76-3e9d37cefc02') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('胆', 'N2', 'gall bladder, courage, pluck, nerve', 'Đảm', ARRAY['タン'], ARRAY['きも'], 9, '71cc2465-f238-4f52-b9e3-39f8f95caaba') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('誕', 'N2', 'nativity, be born, declension, lie, be arbitrary', 'Đản', ARRAY['タン'], NULL, 15, '7fd47228-ad16-439a-8685-ad9cacdeb95e') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('鍛', 'N2', 'forge, discipline, train', 'Đoán', ARRAY['タン'], ARRAY['きた.える'], 17, 'c3b48b38-6414-47f2-a7ac-d72a85c0e35a') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('団', 'N3', 'group, association', 'Đoàn', ARRAY['ダン','トン'], ARRAY['かたまり','まる.い'], 6, 'd6dd2a4a-effd-48d8-baaa-60e2d46cfc4d') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('壇', 'N2', 'podium, stage, rostrum, terrace', 'Đàn', ARRAY['ダン','タン'], NULL, 16, '2fd61440-db3f-4cd5-8101-9e74019df262') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('弾', 'N2', 'bullet, twang, flip, snap', 'Đàn, Đạn', ARRAY['ダン','タン'], ARRAY['ひ.く','-ひ.き','はず.む','たま','はじ.く','はじ.ける','ただ.す','はじ.きゆみ'], 12, 'ad6d3726-634b-40d9-bc5a-538b879c95d5') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('断', 'N3', 'severance, decline, refuse, apologize, warn, dismiss, prohibit, decision, judgement, cutting', 'Đoán, Đoạn, Đón', ARRAY['ダン'], ARRAY['た.つ','ことわ.る','さだ.める'], 11, 'ce2155c8-dac3-4d8d-8eba-ce37c06541f4') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('暖', 'N3', 'warmth', 'Noãn', ARRAY['ダン','ノン'], ARRAY['あたた.か','あたた.かい','あたた.まる','あたた.める'], 13, 'b8af1855-8d69-4238-bc65-6925c1c993cd') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('檀', 'N2', 'cedar, sandalwood, spindle tree', 'Đàn', ARRAY['ダン','タン'], ARRAY['まゆみ'], 17, '80c53d4a-31b5-442f-be48-5d1b64972fae') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('段', 'N3', 'grade, steps, stairs', 'Đoạn', ARRAY['ダン','タン'], NULL, 9, '6d0baa7b-8a58-4bf8-915f-3a6f6c134440') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('男', 'N5', 'male', 'Nam', ARRAY['ダン','ナン'], ARRAY['おとこ','お'], 7, '43d68113-71ea-45ae-9926-6ea616e69ae2') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('談', 'N3', 'discuss, talk', 'Đàm', ARRAY['ダン'], NULL, 15, '7fd47228-ad16-439a-8685-ad9cacdeb95e') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('値', 'N3', 'price, cost, value', 'Trị', ARRAY['チ'], ARRAY['ね','あたい'], 10, '78419994-196d-4445-8165-a6029d33a0ff') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('知', 'N4', 'know, wisdom', 'Tri', ARRAY['チ'], ARRAY['し.る','し.らせる'], 8, 'b7deea42-61dd-4e35-a44c-25dd634fd02a') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('地', 'N4', 'ground, earth', 'Địa', ARRAY['チ','ジ'], NULL, 6, '2fd61440-db3f-4cd5-8101-9e74019df262') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('恥', 'N3', 'shame, dishonor', 'Sỉ', ARRAY['チ'], ARRAY['は.じる','はじ','は.じらう','は.ずかしい'], 10, '1659d447-8145-42d3-8262-2d05cea9f834') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('智', 'N2', 'wisdom, intellect, reason', 'Trí', ARRAY['チ'], NULL, 12, 'b8af1855-8d69-4238-bc65-6925c1c993cd') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('池', 'N4', 'pond, cistern, pool, reservoir', 'Trì', ARRAY['チ'], ARRAY['いけ'], 6, '10673667-6c56-413d-bbd5-a48794fb7725') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('痴', 'N2', 'stupid, foolish', 'Si', ARRAY['チ'], ARRAY['し.れる','おろか'], 13, '5688d6a7-12f3-4090-999b-bee052200ce3') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('稚', 'N2', 'immature, young', 'Trĩ', ARRAY['チ','ジ'], ARRAY['いとけない','おさない','おくて','おでる'], 13, '18d824dd-4b06-48c0-9e40-ff5132c75dc9') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('置', 'N3', 'placement, put, set, deposit, leave behind, keep, employ, pawn', 'Trí', ARRAY['チ'], ARRAY['お.く','-お.き'], 13, '416f2a82-f8af-4fcc-b9e2-5cb48c3ace0e') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('致', 'N2', 'doth, do, send, forward, cause, exert, incur, engage', 'Trí', ARRAY['チ'], ARRAY['いた.す'], 10, 'f5b41e40-d83c-46e0-baf3-885e32e9947a') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('遅', 'N3', 'slow, late, back, later', 'Trì', ARRAY['チ'], ARRAY['おく.れる','おく.らす','おそ.い'], 12, '371180fe-c78a-477d-b628-86c3e88e03f1') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('築', 'N3', 'fabricate, build, construct', 'Trúc', ARRAY['チク'], ARRAY['きず.く'], 16, 'da702964-289f-443e-995f-0f7c0d2a57f3') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('畜', 'N3', 'livestock, domestic fowl and animals', 'Súc, Húc', ARRAY['チク'], NULL, 10, '43d68113-71ea-45ae-9926-6ea616e69ae2') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('竹', 'N3', 'bamboo', 'Trúc', ARRAY['チク'], ARRAY['たけ'], 6, 'da702964-289f-443e-995f-0f7c0d2a57f3') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('蓄', 'N2', 'amass, raise, hoard, store', 'Súc', ARRAY['チク'], ARRAY['たくわ.える'], 13, '25c57eec-88fa-4e6e-95a2-9ba83b5f4246') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('逐', 'N2', 'pursue, drive away, chase, accomplish, attain, commit', 'Trục', ARRAY['チク'], NULL, 10, '371180fe-c78a-477d-b628-86c3e88e03f1') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('秩', 'N2', 'regularity, salary, order', 'Trật', ARRAY['チツ'], NULL, 10, '18d824dd-4b06-48c0-9e40-ff5132c75dc9') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('窒', 'N2', 'plug up, obstruct', 'Trất', ARRAY['チツ'], NULL, 11, 'bff21635-eba6-4d8c-9cb9-99e227a4820a') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('茶', 'N4', 'tea', 'Trà', ARRAY['チャ','サ'], NULL, 9, '25c57eec-88fa-4e6e-95a2-9ba83b5f4246') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('嫡', 'N2', 'legitimate wife, direct descent (non-bastard)', 'Đích', ARRAY['チャク','テキ'], NULL, 14, '2b2beef1-465e-418b-9883-672cd0e0a712') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('着', 'N4', 'don, arrive, wear, counter for suits of clothing', 'Khán', ARRAY['チャク','ジャク'], ARRAY['き.る','き.せる','つ.く','つ.ける'], 12, 'eeeb0778-60ee-4882-b7a5-d6e12279fade') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('中', 'N5', 'in, inside, middle, mean, center', 'Trung, Trúng', ARRAY['チュウ'], ARRAY['なか','うち','あた.る'], 4, '6566466d-a2d4-4e6e-8ff0-b9aa90ae29e3') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('仲', 'N3', 'go-between, relationship', 'Trọng', ARRAY['チュウ'], ARRAY['なか'], 6, '78419994-196d-4445-8165-a6029d33a0ff') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('宙', 'N3', 'mid-air, air, space, sky, memorization, interval of time', 'Trụ', ARRAY['チュウ'], NULL, 8, '66a403fd-ce7c-4ecc-820d-3f1718e79119') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('忠', 'N2', 'loyalty, fidelity, faithfulness', 'Trung', ARRAY['チュウ'], NULL, 8, '1659d447-8145-42d3-8262-2d05cea9f834') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('抽', 'N2', 'pluck, pull, extract, excel', 'Trừu', ARRAY['チュウ'], ARRAY['ひき-'], 8, 'eaca9807-b2da-4d99-8585-13d429ea249d') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('昼', 'N4', 'daytime, noon', 'Trú', ARRAY['チュウ'], ARRAY['ひる'], 9, 'b8af1855-8d69-4238-bc65-6925c1c993cd') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('柱', 'N3', 'pillar, post, cylinder, support', 'Trụ, Trú', ARRAY['チュウ'], ARRAY['はしら'], 9, '80c53d4a-31b5-442f-be48-5d1b64972fae') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('注', 'N4', 'pour, irrigate, shed (tears), flow into, concentrate on, notes, comment, annotate', 'Chú', ARRAY['チュウ'], ARRAY['そそ.ぐ','さ.す','つ.ぐ'], 8, '10673667-6c56-413d-bbd5-a48794fb7725') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('虫', 'N3', 'insect, bug, temper', 'Trùng', ARRAY['チュウ','キ'], ARRAY['むし'], 6, '2b1d8e20-f306-465c-b245-cb2dd48f3615') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('衷', 'N2', 'inmost, heart, mind, inside', 'Trung, Trúng', ARRAY['チュウ'], NULL, 9, '9c5b95cd-6590-4a03-8c61-a68c80da3c8c') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('鋳', 'N2', 'casting, mint', 'Chú, Cục', ARRAY['チュウ','イ','シュ','シュウ'], ARRAY['い.る'], 15, 'c3b48b38-6414-47f2-a7ac-d72a85c0e35a') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('駐', 'N3', 'stop-over, reside in, resident', 'Trú', ARRAY['チュウ'], NULL, 15, 'd7bb7ac5-d329-47fc-981a-3b2bc480c688') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('猪', 'N2', 'boar', 'Trư', ARRAY['チョ'], ARRAY['い','いのしし'], 11, '060e9144-2828-4302-b284-f6ac8ea6ae51') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('著', 'N3', 'renowned, publish, write, remarkable, phenomenal, put on, don, wear, arrival, finish (race), counter for suits of clothing, literary work', 'Trứ', ARRAY['チョ','チャク'], ARRAY['あらわ.す','いちじる.しい'], 11, '25c57eec-88fa-4e6e-95a2-9ba83b5f4246') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('貯', 'N3', 'savings, store, lay in, keep, wear mustache', 'Trữ', ARRAY['チョ'], ARRAY['た.める','たくわ.える'], 12, '0cb16105-d4c3-4534-9e4e-0eecbad15787') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('丁', 'N2', 'street, ward, town, counter for guns, tools, leaves or cakes of something, even number, 4th calendar sign', 'Đinh, Chênh', ARRAY['チョウ','テイ','チン','トウ','チ'], ARRAY['ひのと'], 2, '12f0d122-51f5-4c55-8a67-d3fc53818027') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('兆', 'N3', 'portent, 10**12, trillion, sign, omen, symptoms', 'Triệu', ARRAY['チョウ'], ARRAY['きざ.す','きざ.し'], 6, '88165dcc-9e82-4204-80b3-e041b6649197') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('帳', 'N2', 'notebook, account book, album, curtain, veil, net, tent', 'Trướng', ARRAY['チョウ'], ARRAY['とばり'], 11, 'c3c77b72-afa6-4b3f-acd2-b9a7f991cf53') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('庁', 'N3', 'government office', 'Sảnh, Thinh', ARRAY['チョウ','テイ'], ARRAY['やくしょ'], 5, '2417a6bf-65df-4c8a-a8d0-fba42aeb96ed') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('弔', 'N2', 'condolences, mourning, funeral', 'Điếu, Đích', ARRAY['チョウ'], ARRAY['とむら.う','とぶら.う'], 4, 'ad6d3726-634b-40d9-bc5a-538b879c95d5') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('張', 'N3', 'counter for bows & stringed instruments, stretch, spread, put up (tent)', 'Trương, Trướng', ARRAY['チョウ'], ARRAY['は.る','-は.り','-ば.り'], 11, 'ad6d3726-634b-40d9-bc5a-538b879c95d5') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('彫', 'N2', 'carve, engrave, chisel', 'Điêu', ARRAY['チョウ'], ARRAY['ほ.る','-ぼ.り'], 11, 'a141edd3-78dd-46cc-b260-1b2cfc79e5ed') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('徴', 'N2', 'indications, sign, omen, symptom, collect, seek, refer to, question', 'Chủy, Chuỷ, Trưng, Trừng, Chưng', ARRAY['チョウ','チ'], ARRAY['しるし'], 14, '5a7d3fce-7600-45fd-91a8-2af832381ee4') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('懲', 'N2', 'penal, chastise, punish, discipline', 'Trừng', ARRAY['チョウ'], ARRAY['こ.りる','こ.らす','こ.らしめる'], 18, '1659d447-8145-42d3-8262-2d05cea9f834') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('挑', 'N2', 'challenge, contend for, make love to', 'Thiêu, Thiểu, Thao', ARRAY['チョウ'], ARRAY['いど.む'], 9, 'eaca9807-b2da-4d99-8585-13d429ea249d') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('暢', 'N2', 'stretch', 'Sướng', ARRAY['チョウ'], ARRAY['のび.る'], 14, 'b8af1855-8d69-4238-bc65-6925c1c993cd') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('朝', 'N4', 'morning, dynasty, regime, epoch, period, (North) Korea', 'Triêu, Triều', ARRAY['チョウ'], ARRAY['あさ'], 12, 'a55eee17-b099-4cb3-810a-0a4c9dbc7ea9') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('潮', 'N2', 'tide, salt water, opportunity', 'Triều', ARRAY['チョウ'], ARRAY['しお','うしお'], 15, '10673667-6c56-413d-bbd5-a48794fb7725') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('町', 'N4', 'town, village, block, street', 'Đinh', ARRAY['チョウ'], ARRAY['まち'], 7, '43d68113-71ea-45ae-9926-6ea616e69ae2') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('眺', 'N2', 'stare, watch, look at, see, scrutinize', 'Thiếu', ARRAY['チョウ'], ARRAY['なが.める'], 11, 'eeeb0778-60ee-4882-b7a5-d6e12279fade') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('聴', 'N2', 'listen, headstrong, naughty, careful inquiry', 'Thính', ARRAY['チョウ','テイ'], ARRAY['き.く','ゆる.す'], 17, '161e8737-630f-4a34-a6b4-6a75a2f52fbc') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('脹', 'N2', 'dilate, distend, bulge, fill out, swell', 'Trướng', ARRAY['チョウ'], ARRAY['は.れる','ふく.らむ','ふく.れる'], 12, '71cc2465-f238-4f52-b9e3-39f8f95caaba') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('腸', 'N2', 'intestines, guts, bowels, viscera', 'Tràng, Trường', ARRAY['チョウ'], ARRAY['はらわた','わた'], 13, '71cc2465-f238-4f52-b9e3-39f8f95caaba') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('蝶', 'N2', 'butterfly', 'Điệp', ARRAY['チョウ'], NULL, 15, '2b1d8e20-f306-465c-b245-cb2dd48f3615') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('調', 'N3', 'tune, tone, meter, key (music), writing style, prepare, exorcise, investigate, harmonize, mediate', 'Điều, Điệu', ARRAY['チョウ'], ARRAY['しら.べる','しら.べ','ととの.う','ととの.える'], 15, '7fd47228-ad16-439a-8685-ad9cacdeb95e') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('超', 'N3', 'transcend, super-, ultra-', 'Siêu', ARRAY['チョウ'], ARRAY['こ.える','こ.す'], 12, '432fb72b-e9d0-4c51-981a-ebec3d1c1488') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('跳', 'N2', 'hop, leap up, spring, jerk, prance, buck, splash, sputter, snap', 'Khiêu', ARRAY['チョウ'], ARRAY['は.ねる','と.ぶ','-と.び'], 13, 'ad5f2a38-b774-4a9b-b3ff-2b2cb029cc51') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('長', 'N5', 'long, leader, superior, senior', 'Trường, Trưởng, Trướng', ARRAY['チョウ'], ARRAY['なが.い','おさ'], 8, '4994183f-612b-4a22-9353-8396d31b0379') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('頂', 'N3', 'place on the head, receive, top of head, top, summit, peak', 'Đính', ARRAY['チョウ'], ARRAY['いただ.く','いただき'], 11, 'be4fe89f-bae1-4238-8aad-4789348c0e13') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('鳥', 'N4', 'bird, chicken', 'Điểu', ARRAY['チョウ'], ARRAY['とり'], 11, 'a5d543cc-57c8-4627-8531-64c511b7bc11') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('勅', 'N2', 'imperial order', 'Sắc', ARRAY['チョク'], ARRAY['いまし.める','みことのり'], 9, 'd9107ec4-ea5d-4a21-bacd-ffca462b29dd') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('直', 'N3', 'straightaway, honesty, frankness, fix, repair', 'Trực', ARRAY['チョク','ジキ','ジカ'], ARRAY['ただ.ちに','なお.す','-なお.す','なお.る','なお.き','す.ぐ'], 8, 'eeeb0778-60ee-4882-b7a5-d6e12279fade') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('朕', 'N2', 'majestic plural, imperial we', 'Trẫm', ARRAY['チン'], NULL, 10, 'a55eee17-b099-4cb3-810a-0a4c9dbc7ea9') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('沈', 'N3', 'sink, be submerged, subside, be depressed, aloes', 'Trầm, Thẩm, Trấm', ARRAY['チン','ジン'], ARRAY['しず.む','しず.める'], 7, '10673667-6c56-413d-bbd5-a48794fb7725') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('珍', 'N3', 'rare, curious, strange', 'Trân', ARRAY['チン'], ARRAY['めずら.しい','たから'], 9, '1450b570-89aa-4b1c-9e48-32bc25298929') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('賃', 'N3', 'fare, fee, hire, rent, wages, charge', 'Nhẫm', ARRAY['チン'], NULL, 13, '0cb16105-d4c3-4534-9e4e-0eecbad15787') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('鎮', 'N2', 'tranquilize, ancient peace-preservation centers', 'Trấn, Chắn, Chận, Chớn, Dấn, Giấn, Sán, Sấn, Trớn', ARRAY['チン'], ARRAY['しず.める','しず.まる','おさえ'], 18, 'c3b48b38-6414-47f2-a7ac-d72a85c0e35a') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('陳', 'N2', 'exhibit, state, relate, explain', 'Trần, Trận', ARRAY['チン'], ARRAY['ひ.ねる'], 11, 'b85628b0-3f6a-420a-91c7-0cfbd5055459') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('津', 'N2', 'haven, port, harbor, ferry', 'Tân', ARRAY['シン'], ARRAY['つ'], 9, '10673667-6c56-413d-bbd5-a48794fb7725') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('墜', 'N2', 'crash, fall (down)', 'Trụy', ARRAY['ツイ'], ARRAY['お.ちる','お.つ'], 15, '2fd61440-db3f-4cd5-8101-9e74019df262') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('椎', 'N2', 'chinquapin, mallet, spine', 'Chuy', ARRAY['ツイ','スイ'], ARRAY['つち','う.つ'], 12, '80c53d4a-31b5-442f-be48-5d1b64972fae') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('追', 'N3', 'chase, drive away, follow, pursue, meanwhile', 'Truy, Đôi', ARRAY['ツイ'], ARRAY['お.う'], 9, '371180fe-c78a-477d-b628-86c3e88e03f1') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('痛', 'N3', 'pain, hurt, damage, bruise', 'Thống', ARRAY['ツウ'], ARRAY['いた.い','いた.む','いた.ましい','いた.める'], 12, '5688d6a7-12f3-4090-999b-bee052200ce3') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('通', 'N4', 'traffic, pass through, avenue, commute, counter for letters, notes, documents, etc.', 'Thông', ARRAY['ツウ','ツ'], ARRAY['とお.る','とお.り','-とお.り','-どお.り','とお.す','とお.し','-どお.し','かよ.う'], 10, '371180fe-c78a-477d-b628-86c3e88e03f1') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('塚', 'N2', 'hillock, mound', 'Trủng', ARRAY['チョウ'], ARRAY['つか','-づか'], 12, '2fd61440-db3f-4cd5-8101-9e74019df262') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('槻', 'N2', 'Zelkova tree', 'Qui, Quy', ARRAY['キ'], ARRAY['つき'], 15, '80c53d4a-31b5-442f-be48-5d1b64972fae') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('漬', 'N2', 'pickling, soak, moisten, steep', 'Tí', ARRAY['シ'], ARRAY['つ.ける','つ.かる','-づ.け','-づけ'], 14, '10673667-6c56-413d-bbd5-a48794fb7725') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('蔦', 'N2', 'vine, ivy', 'Điểu', ARRAY['チョウ'], ARRAY['つた'], 14, '25c57eec-88fa-4e6e-95a2-9ba83b5f4246') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('椿', 'N2', 'camellia', 'Xuân, Thung', ARRAY['チン','チュン'], ARRAY['つばき'], 13, '80c53d4a-31b5-442f-be48-5d1b64972fae') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('坪', 'N2', 'two-mat area, approx. thirty-six sq ft', 'Bình', ARRAY['ヘイ'], ARRAY['つぼ'], 8, '2fd61440-db3f-4cd5-8101-9e74019df262') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('紬', 'N2', 'pongee (a knotted silk cloth)', 'Trừu', ARRAY['チュウ'], ARRAY['つむぎ','つむ.ぐ'], 11, '2d4eb76f-4fae-4d05-855c-2520845188ed') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('釣', 'N2', 'angling, fish, catch, allure, ensnare', 'Điếu', ARRAY['チョウ'], ARRAY['つ.る','つ.り','つ.り-'], 11, 'c3b48b38-6414-47f2-a7ac-d72a85c0e35a') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('鶴', 'N2', 'crane, stork', 'Hạc', ARRAY['カク'], ARRAY['つる'], 21, 'a5d543cc-57c8-4627-8531-64c511b7bc11') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('亭', 'N2', 'pavilion, restaurant, mansion, arbor, cottage, vaudeville, music hall, stage name', 'Đình', ARRAY['テイ','チン'], NULL, 9, '78591721-155a-4c67-999d-a331bb59ebb5') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('低', 'N4', 'lower, short, humble', 'Đê', ARRAY['テイ'], ARRAY['ひく.い','ひく.める','ひく.まる'], 7, '78419994-196d-4445-8165-a6029d33a0ff') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('停', 'N3', 'halt, stopping', 'Đình', ARRAY['テイ'], ARRAY['と.める','と.まる'], 11, '78419994-196d-4445-8165-a6029d33a0ff') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('偵', 'N2', 'spy', 'Trinh', ARRAY['テイ'], NULL, 11, '78419994-196d-4445-8165-a6029d33a0ff') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('貞', 'N2', 'upright, chastity, constancy, righteousness', 'Trinh', ARRAY['テイ','ジョウ'], ARRAY['ただし.い','さだ'], 9, '0cb16105-d4c3-4534-9e4e-0eecbad15787') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('呈', 'N2', 'display, offer, present, send, exhibit', 'Trình', ARRAY['テイ'], NULL, 7, 'a54e08f0-b1f4-49b0-bdcd-1fcfab9f5eb7') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('堤', 'N2', 'dike, bank, embankment', 'Chỉ', ARRAY['テイ'], ARRAY['つつみ'], 12, '2fd61440-db3f-4cd5-8101-9e74019df262') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('定', 'N3', 'determine, fix, establish, decide', 'Định, Đính', ARRAY['テイ','ジョウ'], ARRAY['さだ.める','さだ.まる','さだ.か'], 8, '66a403fd-ce7c-4ecc-820d-3f1718e79119') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('帝', 'N2', 'sovereign, the emperor, god, creator', 'Đế', ARRAY['テイ'], ARRAY['みかど'], 9, 'c3c77b72-afa6-4b3f-acd2-b9a7f991cf53') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('底', 'N3', 'bottom, sole, depth, bottom price, base, kind, sort', 'Để', ARRAY['テイ'], ARRAY['そこ'], 8, '2417a6bf-65df-4c8a-a8d0-fba42aeb96ed') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('庭', 'N3', 'courtyard, garden, yard', 'Đình, Thính', ARRAY['テイ'], ARRAY['にわ'], 10, '2417a6bf-65df-4c8a-a8d0-fba42aeb96ed') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('廷', 'N2', 'courts, imperial court, government office', 'Đình', ARRAY['テイ'], NULL, 7, 'dc9cdeb1-8d32-4023-808d-c8f2f3d9f9f2') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('弟', 'N4', 'younger brother, faithful service to elders', 'Đệ, Đễ', ARRAY['テイ','ダイ','デ'], ARRAY['おとうと'], 7, 'ad6d3726-634b-40d9-bc5a-538b879c95d5') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('悌', 'N2', 'serving our elders', 'Đễ', ARRAY['テイ','ダイ'], NULL, 10, '1659d447-8145-42d3-8262-2d05cea9f834') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('抵', 'N2', 'resist, reach, touch', 'Để, Chỉ', ARRAY['テイ'], NULL, 8, 'eaca9807-b2da-4d99-8585-13d429ea249d') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('提', 'N2', 'propose, take along, carry in hand', 'Đề, Thì, Để', ARRAY['テイ','チョウ','ダイ'], ARRAY['さ.げる'], 12, 'eaca9807-b2da-4d99-8585-13d429ea249d') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('汀', 'N2', 'water''s edge, shore, bank', 'Đinh', ARRAY['テイ'], ARRAY['みぎわ','なぎさ'], 5, '10673667-6c56-413d-bbd5-a48794fb7725') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('禎', 'N2', 'happiness, blessed, good fortune, auspicious', 'Trinh', ARRAY['テイ'], ARRAY['さいわ.い'], 13, 'aa655283-0fb9-4ae0-a339-aa1437f00ad1') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('程', 'N3', 'extent, degree, law, formula, distance, limits, amount', 'Trình', ARRAY['テイ'], ARRAY['ほど','-ほど'], 12, '18d824dd-4b06-48c0-9e40-ff5132c75dc9') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('締', 'N2', 'tighten, tie, shut, lock, fasten', 'Đề', ARRAY['テイ'], ARRAY['し.まる','し.まり','し.める','-し.め','-じ.め'], 15, '2d4eb76f-4fae-4d05-855c-2520845188ed') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('艇', 'N2', 'rowboat, small boat', 'Đĩnh', ARRAY['テイ'], NULL, 13, 'c2814223-66bf-4fde-bf2e-3b95fa5d206c') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('訂', 'N2', 'revise, correct, decide', 'Đính', ARRAY['テイ'], ARRAY['ただ.す'], 9, '7fd47228-ad16-439a-8685-ad9cacdeb95e') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('逓', 'N2', 'relay, in turn, sending', 'Đệ', ARRAY['テイ'], ARRAY['かわ.る','たがいに'], 10, '371180fe-c78a-477d-b628-86c3e88e03f1') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('邸', 'N2', 'residence, mansion', 'Để', ARRAY['テイ'], ARRAY['やしき'], 8, '57b67155-4755-4cbd-8c34-1edf3d4cb815') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('泥', 'N3', 'mud, mire, adhere to, be attached to', 'Nê, Nệ, Nễ', ARRAY['デイ','ナイ','デ','ニ'], ARRAY['どろ','なず.む'], 8, '10673667-6c56-413d-bbd5-a48794fb7725') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('摘', 'N2', 'pinch, pick, pluck, trim, clip, summarize', 'Trích', ARRAY['テキ'], ARRAY['つ.む'], 14, 'eaca9807-b2da-4d99-8585-13d429ea249d') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('敵', 'N2', 'enemy, foe, opponent', 'Địch', ARRAY['テキ'], ARRAY['かたき','あだ','かな.う'], 15, 'b62aa3f5-bcc4-4c24-944d-b02f3fbb5499') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('滴', 'N3', 'drip, drop', 'Tích, Trích', ARRAY['テキ'], ARRAY['しずく','したた.る'], 14, '10673667-6c56-413d-bbd5-a48794fb7725') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('的', 'N3', 'bull''s eye, mark, target, object, adjective ending', 'Đích, Để', ARRAY['テキ'], ARRAY['まと'], 8, '3b90f7ed-6228-403f-94bc-50105d4ad47e') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('笛', 'N2', 'flute, clarinet, pipe, whistle, bagpipe, piccolo', 'Địch', ARRAY['テキ'], ARRAY['ふえ'], 11, 'da702964-289f-443e-995f-0f7c0d2a57f3') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('適', 'N3', 'suitable, occasional, rare, qualified, capable', 'Thích, Đích', ARRAY['テキ'], ARRAY['かな.う'], 14, '371180fe-c78a-477d-b628-86c3e88e03f1') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('哲', 'N2', 'philosophy, clear', 'Triết', ARRAY['テツ'], ARRAY['さとい','あきらか'], 10, 'a54e08f0-b1f4-49b0-bdcd-1fcfab9f5eb7') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('徹', 'N2', 'penetrate, clear, pierce, strike home, sit up (all night)', 'Triệt', ARRAY['テツ'], NULL, 15, '5a7d3fce-7600-45fd-91a8-2af832381ee4') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('撤', 'N2', 'remove, withdraw, disarm, dismantle, reject, exclude', 'Triệt', ARRAY['テツ'], NULL, 15, 'eaca9807-b2da-4d99-8585-13d429ea249d') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('迭', 'N2', 'transfer, alternation', 'Điệt', ARRAY['テツ'], NULL, 8, '371180fe-c78a-477d-b628-86c3e88e03f1') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('鉄', 'N3', 'iron', 'Thiết', ARRAY['テツ'], ARRAY['くろがね'], 13, 'c3b48b38-6414-47f2-a7ac-d72a85c0e35a') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('典', 'N2', 'code, ceremony, law, rule', 'Điển', ARRAY['テン','デン'], ARRAY['ふみ','のり'], 8, '33938fa7-49b8-4856-a98e-5aff308f56f2') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('天', 'N5', 'heavens, sky, imperial', 'Thiên', ARRAY['テン'], ARRAY['あまつ','あめ','あま-'], 4, '457c9d33-f2d9-4f61-bca8-910ce7ade194') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('展', 'N3', 'unfold, expand', 'Triển', ARRAY['テン'], NULL, 10, 'dbb1b9f0-b6d7-4c0b-989a-7a98ab167f37') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('店', 'N5', 'store, shop', 'Điếm', ARRAY['テン'], ARRAY['みせ','たな'], 8, '2417a6bf-65df-4c8a-a8d0-fba42aeb96ed') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('添', 'N2', 'annexed, accompany, marry, suit, meet, satisfy, attach, append, garnish, imitate', 'Thiêm', ARRAY['テン'], ARRAY['そ.える','そ.う'], 11, '10673667-6c56-413d-bbd5-a48794fb7725') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('転', 'N4', 'revolve, turn around, change', 'Chuyển', ARRAY['テン'], ARRAY['ころ.がる','ころ.げる','ころ.がす','ころ.ぶ','まろ.ぶ','うたた','うつ.る','くる.めく'], 11, '869f4859-e3d9-4a6a-8839-d1bf7a715a34') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('点', 'N3', 'spot, point, mark, speck, decimal point', 'Điểm', ARRAY['テン'], ARRAY['つ.ける','つ.く','た.てる','さ.す','とぼ.す','とも.す','ぼち'], 9, '831cfc6a-79c9-4ebb-a4cc-ba737a36caf7') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('伝', 'N3', 'transmit, go along, walk along, follow, report, communicate, legend, tradition', 'Vân', ARRAY['デン','テン'], ARRAY['つた.わる','つた.える','つた.う','つだ.う','-づた.い','つて'], 6, '78419994-196d-4445-8165-a6029d33a0ff') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('殿', 'N3', 'Mr., hall, mansion, palace, temple, lord', 'Điện, Điến', ARRAY['デン','テン'], ARRAY['との','-どの'], 13, '6d0baa7b-8a58-4bf8-915f-3a6f6c134440') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('田', 'N4', 'rice field, rice paddy', 'Điền', ARRAY['デン'], ARRAY['た'], 5, '43d68113-71ea-45ae-9926-6ea616e69ae2') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('電', 'N5', 'electricity', 'Điện', ARRAY['デン'], NULL, 13, '491a9ec1-aebb-486b-9e2d-050c80063a8f') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('吐', 'N2', 'spit, vomit, belch, confess, tell (lies)', 'Thổ', ARRAY['ト'], ARRAY['は.く','つ.く'], 6, 'a54e08f0-b1f4-49b0-bdcd-1fcfab9f5eb7') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('塗', 'N3', 'paint, plaster, daub, smear, coating', 'Đồ, Trà', ARRAY['ト'], ARRAY['ぬ.る','ぬ.り','まみ.れる'], 13, '2fd61440-db3f-4cd5-8101-9e74019df262') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('徒', 'N3', 'on foot, junior, emptiness, vanity, futility, uselessness, ephemeral thing, gang, set, party, people', 'Đồ', ARRAY['ト'], ARRAY['いたずら','あだ'], 10, '5a7d3fce-7600-45fd-91a8-2af832381ee4') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('斗', 'N2', 'Big Dipper, ten sho (vol), sake dipper, dots and cross radical (no. 68)', 'Đẩu', ARRAY['ト','トウ'], NULL, 4, '63f0a5d8-da20-49a8-a73c-8c31621b9c3c') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('杜', 'N2', 'woods, grove', 'Đỗ', ARRAY['ト','トウ','ズ'], ARRAY['もり','ふさ.ぐ','やまなし'], 7, '80c53d4a-31b5-442f-be48-5d1b64972fae') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('渡', 'N3', 'transit, ford, ferry, cross, import, deliver, diameter, migrate', 'Độ', ARRAY['ト'], ARRAY['わた.る','-わた.る','わた.す'], 12, '10673667-6c56-413d-bbd5-a48794fb7725') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('登', 'N3', 'ascend, climb up', 'Đăng', ARRAY['トウ','ト','ドウ','ショウ','チョウ'], ARRAY['のぼ.る','あ.がる'], 12, 'bdcaccd3-873c-4e44-a53f-d4b5c80e5011') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('途', 'N3', 'route, way, road', 'Đồ', ARRAY['ト'], ARRAY['みち'], 10, '371180fe-c78a-477d-b628-86c3e88e03f1') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('都', 'N4', 'metropolis, capital, all, everything', 'Đô', ARRAY['ト','ツ'], ARRAY['みやこ'], 11, '57b67155-4755-4cbd-8c34-1edf3d4cb815') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('努', 'N3', 'toil, diligent, as much as possible', 'Nỗ', ARRAY['ド'], ARRAY['つと.める'], 7, 'd9107ec4-ea5d-4a21-bacd-ffca462b29dd') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('度', 'N4', 'degrees, occurrence, time, counter for occurrences, consider, attitude', 'Độ, Đạc', ARRAY['ド','ト','タク'], ARRAY['たび','-た.い'], 9, '2417a6bf-65df-4c8a-a8d0-fba42aeb96ed') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('土', 'N5', 'soil, earth, ground, Turkey', 'Thổ, Độ, Đỗ', ARRAY['ド','ト'], ARRAY['つち'], 3, '2fd61440-db3f-4cd5-8101-9e74019df262') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('奴', 'N2', 'guy, slave, manservant, fellow', 'Nô', ARRAY['ド'], ARRAY['やつ','やっこ'], 5, '2b2beef1-465e-418b-9883-672cd0e0a712') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('怒', 'N3', 'angry, be offended', 'Nộ', ARRAY['ド','ヌ'], ARRAY['いか.る','おこ.る'], 9, '1659d447-8145-42d3-8262-2d05cea9f834') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('倒', 'N3', 'overthrow, fall, collapse, drop, break down', 'Đảo', ARRAY['トウ'], ARRAY['たお.れる','-だお.れ','たお.す','さかさま','さかさ','さかしま'], 10, '78419994-196d-4445-8165-a6029d33a0ff') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('党', 'N3', 'party, faction, clique', 'Đảng', ARRAY['トウ'], ARRAY['なかま','むら'], 10, '88165dcc-9e82-4204-80b3-e041b6649197') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('冬', 'N4', 'winter', 'Đông', ARRAY['トウ'], ARRAY['ふゆ'], 5, '23a10182-2ed1-47fd-a83e-9381dcd8dfad') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('凍', 'N3', 'frozen, congeal, refrigerate', 'Đống', ARRAY['トウ'], ARRAY['こお.る','こご.える','こご.る','い.てる','し.みる'], 10, '23a10182-2ed1-47fd-a83e-9381dcd8dfad') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('刀', 'N2', 'sword, saber, knife', 'Đao', ARRAY['トウ'], ARRAY['かたな','そり'], 2, 'bc6a1cef-e769-454c-a64f-910a5e1b5d74') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('唐', 'N2', 'T''ang, China, foreign', 'Đường', ARRAY['トウ'], ARRAY['から'], 10, 'a54e08f0-b1f4-49b0-bdcd-1fcfab9f5eb7') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('塔', 'N3', 'pagoda, tower, steeple', 'Tháp', ARRAY['トウ'], NULL, 12, '2fd61440-db3f-4cd5-8101-9e74019df262') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('島', 'N3', 'island', 'Đảo', ARRAY['トウ'], ARRAY['しま'], 10, 'a2f58e0e-c558-4282-80ff-1d8088c5f250') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('悼', 'N2', 'lament, grieve over', 'Điệu', ARRAY['トウ'], ARRAY['いた.む'], 11, '1659d447-8145-42d3-8262-2d05cea9f834') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('投', 'N3', 'throw, discard, abandon, launch into, join, invest in, hurl, give up, sell at a loss', 'Đầu', ARRAY['トウ'], ARRAY['な.げる','-な.げ'], 7, 'eaca9807-b2da-4d99-8585-13d429ea249d') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('搭', 'N2', 'board, load (a vehicle), ride', 'Đáp', ARRAY['トウ'], NULL, 12, 'eaca9807-b2da-4d99-8585-13d429ea249d') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('東', 'N5', 'east', 'Đông', ARRAY['トウ'], ARRAY['ひがし'], 8, '80c53d4a-31b5-442f-be48-5d1b64972fae') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('桃', 'N2', 'peach', 'Đào', ARRAY['トウ'], ARRAY['もも'], 10, '80c53d4a-31b5-442f-be48-5d1b64972fae') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('棟', 'N2', 'ridgepole, ridge', 'Đống', ARRAY['トウ'], ARRAY['むね','むな-'], 12, '80c53d4a-31b5-442f-be48-5d1b64972fae') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('盗', 'N3', 'steal, rob, pilfer', 'Bàn, Đạo', ARRAY['トウ'], ARRAY['ぬす.む','ぬす.み'], 11, '12bd4f5a-a4fb-451b-b25d-418406c683fa') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('湯', 'N3', 'hot water, bath, hot spring', 'Thang, Sương, Thãng', ARRAY['トウ'], ARRAY['ゆ'], 12, '10673667-6c56-413d-bbd5-a48794fb7725') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('灯', 'N3', 'lamp, a light, light, counter for lights', 'Đăng', ARRAY['トウ'], ARRAY['ひ','ほ-','ともしび','とも.す','あかり'], 6, '831cfc6a-79c9-4ebb-a4cc-ba737a36caf7') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('当', 'N3', 'hit, right, appropriate, himself', 'Đang, Đáng, Đương', ARRAY['トウ'], ARRAY['あ.たる','あ.たり','あ.てる','あ.て','まさ.に','まさ.にべし'], 6, '55d766ca-79d1-49ec-8d89-b7e147788b38') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('痘', 'N2', 'pox, smallpox', 'Đậu', ARRAY['トウ'], NULL, 12, '5688d6a7-12f3-4090-999b-bee052200ce3') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('等', 'N3', 'etc., and so forth, class (first), quality, equal, similar', 'Đẳng', ARRAY['トウ'], ARRAY['ひと.しい','など','-ら'], 12, 'da702964-289f-443e-995f-0f7c0d2a57f3') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('答', 'N4', 'solution, answer', 'Đáp', ARRAY['トウ'], ARRAY['こた.える','こた.え'], 12, 'da702964-289f-443e-995f-0f7c0d2a57f3') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('筒', 'N3', 'cylinder, pipe, tube, gun barrel, sleeve', 'Đồng', ARRAY['トウ'], ARRAY['つつ'], 12, 'da702964-289f-443e-995f-0f7c0d2a57f3') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('糖', 'N2', 'sugar', 'Đường', ARRAY['トウ'], NULL, 16, '8497383a-f56a-48b2-a4bd-8c8673d82955') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('統', 'N2', 'overall, relationship, ruling, governing', 'Thống', ARRAY['トウ'], ARRAY['す.べる'], 12, '2d4eb76f-4fae-4d05-855c-2520845188ed') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('到', 'N3', 'arrival, proceed, reach, attain, result in', 'Đáo', ARRAY['トウ'], ARRAY['いた.る'], 8, 'bc6a1cef-e769-454c-a64f-910a5e1b5d74') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('藤', 'N2', 'wisteria', 'Đằng', ARRAY['トウ','ドウ'], ARRAY['ふじ'], 18, '25c57eec-88fa-4e6e-95a2-9ba83b5f4246') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('討', 'N2', 'chastise, attack, defeat, destroy, conquer', 'Thảo', ARRAY['トウ'], ARRAY['う.つ'], 10, '7fd47228-ad16-439a-8685-ad9cacdeb95e') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('謄', 'N2', 'mimeograph, copy', 'Đằng', ARRAY['トウ'], NULL, 17, '7fd47228-ad16-439a-8685-ad9cacdeb95e') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('豆', 'N2', 'beans, pea, midget', 'Đậu, Dấu', ARRAY['トウ','ズ'], ARRAY['まめ','まめ-'], 7, '154eaf84-5859-4d98-a4d3-d45def8b24ac') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('踏', 'N2', 'step, trample, carry through, appraise, evade payment', 'Đạp', ARRAY['トウ'], ARRAY['ふ.む','ふ.まえる'], 15, 'ad5f2a38-b774-4a9b-b3ff-2b2cb029cc51') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('逃', 'N3', 'escape, flee, shirk, evade, set free', 'Đào', ARRAY['トウ'], ARRAY['に.げる','に.がす','のが.す','のが.れる'], 9, '371180fe-c78a-477d-b628-86c3e88e03f1') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('透', 'N2', 'transparent, permeate, filter, penetrate', 'Thấu', ARRAY['トウ'], ARRAY['す.く','す.かす','す.ける','とう.る','とう.す'], 10, '371180fe-c78a-477d-b628-86c3e88e03f1') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('陶', 'N2', 'pottery, porcelain', 'Đào, Giao', ARRAY['トウ'], ARRAY['すえ'], 11, 'b85628b0-3f6a-420a-91c7-0cfbd5055459') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('頭', 'N4', 'head, counter for large animals', 'Đầu', ARRAY['トウ','ズ','ト'], ARRAY['あたま','かしら','-がしら','かぶり'], 16, 'be4fe89f-bae1-4238-8aad-4789348c0e13') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('騰', 'N2', 'leaping up, jumping up, rising, advancing, going', 'Đằng', ARRAY['トウ'], ARRAY['あが.る','のぼ.る'], 20, 'd7bb7ac5-d329-47fc-981a-3b2bc480c688') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('闘', 'N2', 'fight, war', 'Đấu', ARRAY['トウ'], ARRAY['たたか.う','あらそ.う'], 18, 'fc1908d4-7e1d-4e55-b1df-72e159f91868') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('働', 'N4', 'work, (kokuji)', 'Động', ARRAY['ドウ'], ARRAY['はたら.く'], 13, '78419994-196d-4445-8165-a6029d33a0ff') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('動', 'N4', 'move, motion, change, confusion, shift, shake', 'Động', ARRAY['ドウ'], ARRAY['うご.く','うご.かす'], 11, 'd9107ec4-ea5d-4a21-bacd-ffca462b29dd') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('同', 'N4', 'same, agree, equal', 'Đồng', ARRAY['ドウ'], ARRAY['おな.じ'], 6, 'a54e08f0-b1f4-49b0-bdcd-1fcfab9f5eb7') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('堂', 'N4', 'public chamber, hall', 'Đường', ARRAY['ドウ'], NULL, 11, '2fd61440-db3f-4cd5-8101-9e74019df262') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('導', 'N3', 'guidance, leading, conduct, usher', 'Đạo', ARRAY['ドウ'], ARRAY['みちび.く'], 15, '693998e2-9356-4193-bcef-4b2f79e9e857') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('憧', 'N2', 'yearn after, long for, aspire to, admire, adore', 'Sung, Tráng', ARRAY['ショウ','トウ','ドウ'], ARRAY['あこが.れる'], 15, '1659d447-8145-42d3-8262-2d05cea9f834') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('洞', 'N2', 'den, cave, excavation', 'Đỗng', ARRAY['ドウ'], ARRAY['ほら'], 9, '10673667-6c56-413d-bbd5-a48794fb7725') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('瞳', 'N2', 'pupil (of eye)', 'Đồng', ARRAY['ドウ','トウ'], ARRAY['ひとみ'], 17, 'eeeb0778-60ee-4882-b7a5-d6e12279fade') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('童', 'N3', 'juvenile, child', 'Đồng', ARRAY['ドウ'], ARRAY['わらべ'], 12, '9cf1d21c-3259-43e2-9a76-3e9d37cefc02') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('胴', 'N2', 'trunk, torso, hull (ship), hub of wheel', 'Đỗng', ARRAY['ドウ'], NULL, 10, '71cc2465-f238-4f52-b9e3-39f8f95caaba') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('道', 'N5', 'road-way, street, district, journey, course, moral, teachings', 'Đạo, Đáo', ARRAY['ドウ','トウ'], ARRAY['みち','いう'], 12, '371180fe-c78a-477d-b628-86c3e88e03f1') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('銅', 'N3', 'copper', 'Đồng', ARRAY['ドウ'], ARRAY['あかがね'], 14, 'c3b48b38-6414-47f2-a7ac-d72a85c0e35a') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('峠', 'N2', 'mountain peak, mountain pass, climax, crest, (kokuji)', 'Đèo', NULL, ARRAY['とうげ'], 9, 'a2f58e0e-c558-4282-80ff-1d8088c5f250') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('匿', 'N2', 'hide, shelter, shield', 'Nặc', ARRAY['トク'], ARRAY['かくま.う'], 10, '3c076357-dc93-48ad-96f1-aef3d8dd938d') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('得', 'N3', 'gain, get, find, earn, acquire, can, may, able to, profit, advantage, benefit', 'Đắc', ARRAY['トク'], ARRAY['え.る','う.る'], 11, '5a7d3fce-7600-45fd-91a8-2af832381ee4') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('徳', 'N2', 'benevolence, virtue, goodness, commanding respect', 'Đức', ARRAY['トク'], NULL, 14, '5a7d3fce-7600-45fd-91a8-2af832381ee4') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('特', 'N4', 'special', 'Đặc', ARRAY['トク'], NULL, 10, 'a55bbf5a-1ffc-48ef-909c-6b366c2d8398') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('督', 'N2', 'coach, command, urge, lead, supervise', 'Đốc', ARRAY['トク'], NULL, 13, 'eeeb0778-60ee-4882-b7a5-d6e12279fade') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('篤', 'N2', 'fervent, kind, cordial, serious, deliberate', 'Đốc', ARRAY['トク'], ARRAY['あつ.い'], 16, 'da702964-289f-443e-995f-0f7c0d2a57f3') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('毒', 'N3', 'poison, virus, venom, germ, harm, injury, spite', 'Độc, Đốc', ARRAY['ドク'], NULL, 8, '27cdde1c-51a8-495f-ba1c-643efa2b39ff') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('独', 'N3', 'single, alone, spontaneously, Germany', 'Độc', ARRAY['ドク','トク'], ARRAY['ひと.り'], 9, '060e9144-2828-4302-b284-f6ac8ea6ae51') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('読', 'N5', 'read', 'Đậu, Độc', ARRAY['ドク','トク','トウ'], ARRAY['よ.む','-よ.み'], 14, '7fd47228-ad16-439a-8685-ad9cacdeb95e') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('凸', 'N2', 'convex, beetle brow, uneven', 'Đột', ARRAY['トツ'], ARRAY['でこ'], 5, '2c241828-d32e-4d79-8fba-50c0b6fe9ab4') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('突', 'N3', 'stab, protruding, thrust, pierce, prick, collision, sudden', 'Đột', ARRAY['トツ','カ'], ARRAY['つ.く'], 8, 'bff21635-eba6-4d8c-9cb9-99e227a4820a') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('届', 'N3', 'deliver, reach, arrive, report, notify, forward', 'Giới', ARRAY['カイ'], ARRAY['とど.ける','-とど.け','とど.く'], 8, 'dbb1b9f0-b6d7-4c0b-989a-7a98ab167f37') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('寅', 'N2', 'sign of the tiger, 3-5AM, third sign of Chinese zodiac', 'Dần', ARRAY['イン'], ARRAY['とら'], 11, '66a403fd-ce7c-4ecc-820d-3f1718e79119') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('酉', 'N2', 'west, bird, sign of the bird, 5-7PM, tenth sign of Chinese zodiac, sake radical (no. 164)', 'Dậu', ARRAY['ユウ'], ARRAY['とり'], 7, '12e487c3-d245-437b-b197-9593f0487352') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('屯', 'N2', 'barracks, police station, camp, ton', 'Truân, Đồn', ARRAY['トン'], ARRAY['たむろ'], 4, 'bce70a43-1b99-44d2-9f27-c134e9c20997') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('惇', 'N2', 'sincere, kind, considerate', 'Đôn', ARRAY['シュン','ジュン','トン'], ARRAY['あつ.い'], 11, '1659d447-8145-42d3-8262-2d05cea9f834') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('敦', 'N2', 'industry, kindliness', 'Đôn, Đôi, Đối, Độn', ARRAY['トン','タイ','ダン','チョウ'], ARRAY['あつ.い'], 12, 'b62aa3f5-bcc4-4c24-944d-b02f3fbb5499') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('豚', 'N2', 'pork, pig', 'Đồn, Độn', ARRAY['トン'], ARRAY['ぶた'], 11, '4cb349f0-c2d2-4a1a-805b-18c202dcc4e2') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('曇', 'N3', 'cloudy weather, cloud up', 'Đàm', ARRAY['ドン'], ARRAY['くも.る'], 16, 'b8af1855-8d69-4238-bc65-6925c1c993cd') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('鈍', 'N3', 'dull, slow, foolish, blunt', 'Độn', ARRAY['ドン'], ARRAY['にぶ.い','にぶ.る','にぶ-','なま.る','なまく.ら'], 12, 'c3b48b38-6414-47f2-a7ac-d72a85c0e35a') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('奈', 'N2', 'Nara, what?', 'Nại', ARRAY['ナ','ナイ','ダイ'], ARRAY['いかん','からなし'], 8, '457c9d33-f2d9-4f61-bca8-910ce7ade194') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('那', 'N2', 'what?', 'Na, Nả', ARRAY['ナ','ダ'], ARRAY['なに','なんぞ','いかん'], 7, '57b67155-4755-4cbd-8c34-1edf3d4cb815') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('内', 'N3', 'inside, within, between, among, house, home', 'Nạp, Nội, Nói, Nòi, Nồi, Nỗi, Nụi', ARRAY['ナイ','ダイ'], ARRAY['うち'], 4, '606b6268-d8c0-4e50-98b6-aebb5465850d') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('凪', 'N2', 'lull, calm, (kokuji)', 'Dĩ', NULL, ARRAY['なぎ','な.ぐ'], 6, '57745b80-a744-46c1-af52-58f66dcad3c1') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('捺', 'N2', 'press, print, affix a seal, stamp', 'Nại', ARRAY['ナツ','ダツ'], ARRAY['さ.す','お.す'], 11, 'eaca9807-b2da-4d99-8585-13d429ea249d') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('縄', 'N2', 'straw rope, cord', 'Mẫn, Thằng', ARRAY['ジョウ'], ARRAY['なわ','ただ.す'], 15, '2d4eb76f-4fae-4d05-855c-2520845188ed') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('南', 'N5', 'south', 'Nam', ARRAY['ナン','ナ'], ARRAY['みなみ'], 9, 'ac324fde-d736-479e-b9ae-c0f09a7f3091') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('楠', 'N2', 'camphor tree', 'Nam', ARRAY['ナン','ダン','ゼン','ネン'], ARRAY['くす','くすのき'], 13, '80c53d4a-31b5-442f-be48-5d1b64972fae') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('軟', 'N3', 'soft', 'Nhuyễn', ARRAY['ナン'], ARRAY['やわ.らか','やわ.らかい'], 11, '869f4859-e3d9-4a6a-8839-d1bf7a715a34') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('難', 'N3', 'difficult, impossible, trouble, accident, defect', 'Nan, Nạn', ARRAY['ナン'], ARRAY['かた.い','-がた.い','むずか.しい','むづか.しい','むつか.しい','-にく.い'], 18, 'e9426c63-0e1d-4399-a59e-ce2e851fa615') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('二', 'N5', 'two, two radical (no. 7)', 'Nhị', ARRAY['ニ','ジ'], ARRAY['ふた','ふた.つ','ふたたび'], 2, '7a559b3e-4eea-47ee-a353-8deec41a7cd7') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('尼', 'N2', 'nun', 'Ni, Nệ, Nặc, Nật', ARRAY['ニ'], ARRAY['あま'], 5, 'dbb1b9f0-b6d7-4c0b-989a-7a98ab167f37') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('弐', 'N2', 'II, two, second', 'Thí', ARRAY['ニ','ジ'], ARRAY['ふた.つ','そえ'], 6, 'aa69d825-e96b-4b21-90b0-e7e4c8d8bf83') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('肉', 'N4', 'meat', 'Nhục, Nhụ, Nậu', ARRAY['ニク'], ARRAY['しし'], 6, '71cc2465-f238-4f52-b9e3-39f8f95caaba') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('虹', 'N2', 'rainbow', 'Hồng', ARRAY['コウ'], ARRAY['にじ'], 9, '2b1d8e20-f306-465c-b245-cb2dd48f3615') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('日', 'N5', 'day, sun, Japan, counter for days', 'Nhật', ARRAY['ニチ','ジツ'], ARRAY['ひ','-び','-か'], 4, 'b8af1855-8d69-4238-bc65-6925c1c993cd') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('乳', 'N3', 'milk, breasts', 'Nhũ', ARRAY['ニュウ'], ARRAY['ちち','ち'], 8, '4721cf9b-ec7a-4029-8f61-3f80cc4d64fb') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('入', 'N5', 'enter, insert', 'Nhập', ARRAY['ニュウ','ジュ'], ARRAY['い.る','-い.る','-い.り','い.れる','-い.れ','はい.る'], 2, 'bb4502f7-01f8-44ba-a883-f7c7040cb25f') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('如', 'N2', 'likeness, like, such as, as if, better, best, equal', 'Như', ARRAY['ジョ','ニョ'], ARRAY['ごと.し'], 6, '2b2beef1-465e-418b-9883-672cd0e0a712') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('尿', 'N2', 'urine', 'Niệu', ARRAY['ニョウ'], ARRAY['ゆばり','いばり','しと'], 7, 'dbb1b9f0-b6d7-4c0b-989a-7a98ab167f37') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('任', 'N3', 'responsibility, duty, term, entrust to, appoint', 'Nhâm, Nhậm', ARRAY['ニン'], ARRAY['まか.せる','まか.す'], 6, '78419994-196d-4445-8165-a6029d33a0ff') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('妊', 'N2', 'pregnancy', 'Nhâm', ARRAY['ニン','ジン'], ARRAY['はら.む','みごも.る'], 7, '2b2beef1-465e-418b-9883-672cd0e0a712') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('忍', 'N2', 'endure, bear, put up with, conceal, secrete, spy, sneak', 'Nhẫn', ARRAY['ニン'], ARRAY['しの.ぶ','しの.ばせる'], 7, '1659d447-8145-42d3-8262-2d05cea9f834') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('認', 'N3', 'acknowledge, witness, discern, recognize, appreciate, believe', 'Nhận', ARRAY['ニン'], ARRAY['みと.める','したた.める'], 14, '7fd47228-ad16-439a-8685-ad9cacdeb95e') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('寧', 'N2', 'rather, preferably, peaceful, quiet, tranquility', 'Ninh', ARRAY['ネイ'], ARRAY['むし.ろ'], 14, '66a403fd-ce7c-4ecc-820d-3f1718e79119') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('猫', 'N3', 'cat', 'Miêu', ARRAY['ビョウ'], ARRAY['ねこ'], 11, '060e9144-2828-4302-b284-f6ac8ea6ae51') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('熱', 'N3', 'heat, temperature, fever, mania, passion', 'Nhiệt', ARRAY['ネツ'], ARRAY['あつ.い'], 15, '831cfc6a-79c9-4ebb-a4cc-ba737a36caf7') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('年', 'N5', 'year, counter for years', 'Niên', ARRAY['ネン'], ARRAY['とし'], 6, '8abb0e5e-778e-44fc-b6a7-9581999b661c') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('念', 'N3', 'wish, sense, idea, thought, feeling, desire, attention', 'Niệm', ARRAY['ネン'], NULL, 8, '1659d447-8145-42d3-8262-2d05cea9f834') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('燃', 'N3', 'burn, blaze, glow', 'Nhiên', ARRAY['ネン'], ARRAY['も.える','も.やす','も.す'], 16, '831cfc6a-79c9-4ebb-a4cc-ba737a36caf7') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('粘', 'N2', 'sticky, glutinous, greasy, persevere', 'Niêm', ARRAY['ネン'], ARRAY['ねば.る'], 11, '8497383a-f56a-48b2-a4bd-8c8673d82955') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('乃', 'N2', 'from, possessive particle, whereupon, accordingly', 'Nãi, Ái', ARRAY['ナイ','ダイ','ノ','アイ'], ARRAY['の','すなわ.ち','なんじ'], 2, '34034105-e6f4-4bfd-b23a-7f4cb3d93010') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('之', 'N2', 'of, this', 'Chi', ARRAY['シ'], ARRAY['の','これ','ゆく','この'], 3, '34034105-e6f4-4bfd-b23a-7f4cb3d93010') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('悩', 'N3', 'trouble, worry, in pain, distress, illness', 'Não', ARRAY['ノウ'], ARRAY['なや.む','なや.ます','なや.ましい','なやみ'], 10, '1659d447-8145-42d3-8262-2d05cea9f834') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('濃', 'N3', 'concentrated, thick, dark, undiluted', 'Nùng', ARRAY['ノウ'], ARRAY['こ.い'], 16, '10673667-6c56-413d-bbd5-a48794fb7725') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('納', 'N2', 'settlement, obtain, reap, pay, supply, store', 'Nạp', ARRAY['ノウ','ナッ','ナ','ナン','トウ'], ARRAY['おさ.める','-おさ.める','おさ.まる'], 10, '2d4eb76f-4fae-4d05-855c-2520845188ed') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('能', 'N3', 'ability, talent, skill, capacity', 'Năng, Nai, Nại', ARRAY['ノウ'], ARRAY['よ.く','あた.う'], 10, '71cc2465-f238-4f52-b9e3-39f8f95caaba') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('脳', 'N3', 'brain, memory', 'Não', ARRAY['ノウ','ドウ'], ARRAY['のうずる'], 11, '71cc2465-f238-4f52-b9e3-39f8f95caaba') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('農', 'N3', 'agriculture, farmers', 'Nông', ARRAY['ノウ'], NULL, 13, '528b0862-6776-4502-84b1-8ab3e22a7507') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('巴', 'N2', 'comma-design', 'Ba', ARRAY['ハ'], ARRAY['ともえ','うずまき'], 4, 'afc445ef-54dd-45a9-86b5-d01fbec09f75') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('把', 'N2', 'grasp, faggot, bunch, counter for bundles', 'Bả', ARRAY['ハ','ワ'], NULL, 7, 'eaca9807-b2da-4d99-8585-13d429ea249d') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('覇', 'N2', 'hegemony, supremacy, leadership, champion', 'Bá, Phách', ARRAY['ハ','ハク'], ARRAY['はたがしら'], 19, '428b8fa3-e5c4-496c-aeda-768f030a5732') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('波', 'N3', 'waves, billows, Poland', 'Ba', ARRAY['ハ'], ARRAY['なみ'], 8, '10673667-6c56-413d-bbd5-a48794fb7725') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('派', 'N2', 'faction, group, party, clique, sect, school', 'Phái', ARRAY['ハ'], NULL, 9, '10673667-6c56-413d-bbd5-a48794fb7725') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('破', 'N3', 'rend, rip, tear, break, destroy, defeat, frustrate', 'Phá', ARRAY['ハ'], ARRAY['やぶ.る','やぶ.れる','わ.れる'], 10, 'c3bb7570-e8b9-49cc-bf56-90e74165d503') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('婆', 'N2', 'old woman, grandma, wet nurse', 'Bà', ARRAY['バ'], ARRAY['ばば','ばあ'], 11, '2b2beef1-465e-418b-9883-672cd0e0a712') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('馬', 'N3', 'horse', 'Mã', ARRAY['バ'], ARRAY['うま','うま-','ま'], 10, 'd7bb7ac5-d329-47fc-981a-3b2bc480c688') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('俳', 'N2', 'haiku, actor', 'Bài', ARRAY['ハイ'], NULL, 10, '78419994-196d-4445-8165-a6029d33a0ff') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('廃', 'N2', 'abolish, obsolete, cessation, discarding, abandon', 'Phế', ARRAY['ハイ'], ARRAY['すた.れる','すた.る'], 12, '2417a6bf-65df-4c8a-a8d0-fba42aeb96ed') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('拝', 'N3', 'worship, adore, pray to', 'Bài', ARRAY['ハイ'], ARRAY['おが.む','おろが.む'], 8, 'eaca9807-b2da-4d99-8585-13d429ea249d') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('排', 'N2', 'repudiate, exclude, expel, reject, line up, arrange', 'Bài', ARRAY['ハイ'], NULL, 11, 'eaca9807-b2da-4d99-8585-13d429ea249d') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('敗', 'N3', 'failure, defeat, reversal', 'Bại', ARRAY['ハイ'], ARRAY['やぶ.れる'], 11, 'b62aa3f5-bcc4-4c24-944d-b02f3fbb5499') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('杯', 'N3', 'counter for cupfuls, wine glass, glass, toast', 'Bôi', ARRAY['ハイ'], ARRAY['さかずき'], 8, '80c53d4a-31b5-442f-be48-5d1b64972fae') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('背', 'N3', 'stature, height, back, behind, disobey, defy, go back on, rebel', 'Bối, Bội', ARRAY['ハイ'], ARRAY['せ','せい','そむ.く','そむ.ける'], 9, '71cc2465-f238-4f52-b9e3-39f8f95caaba') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('肺', 'N2', 'lungs', 'Phế', ARRAY['ハイ'], NULL, 9, '71cc2465-f238-4f52-b9e3-39f8f95caaba') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('輩', 'N2', 'comrade, fellow, people, companions', 'Bối', ARRAY['ハイ'], ARRAY['-ばら','やから','やかい','ともがら'], 15, '869f4859-e3d9-4a6a-8839-d1bf7a715a34') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('配', 'N3', 'distribute, spouse, exile, rationing', 'Phối', ARRAY['ハイ'], ARRAY['くば.る'], 10, '12e487c3-d245-437b-b197-9593f0487352') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('倍', 'N3', 'double, twice, times, fold', 'Bội', ARRAY['バイ'], NULL, 10, '78419994-196d-4445-8165-a6029d33a0ff') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('培', 'N2', 'cultivate, foster', 'Bồi, Bậu', ARRAY['バイ'], ARRAY['つちか.う'], 11, '2fd61440-db3f-4cd5-8101-9e74019df262') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('媒', 'N2', 'mediator, go-between', 'Môi', ARRAY['バイ'], ARRAY['なこうど'], 12, '2b2beef1-465e-418b-9883-672cd0e0a712') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('梅', 'N2', 'plum', 'Mai', ARRAY['バイ'], ARRAY['うめ'], 10, '80c53d4a-31b5-442f-be48-5d1b64972fae') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('買', 'N5', 'buy', 'Mãi', ARRAY['バイ'], ARRAY['か.う'], 12, '0cb16105-d4c3-4534-9e4e-0eecbad15787') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('売', 'N4', 'sell', 'Mại, Xác, Xạc', ARRAY['バイ'], ARRAY['う.る','う.れる'], 7, 'd76d5b2c-c675-4484-a875-14a4e0534449') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('賠', 'N2', 'compensation, indemnify', 'Bồi', ARRAY['バイ'], NULL, 15, '0cb16105-d4c3-4534-9e4e-0eecbad15787') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('陪', 'N2', 'obeisance, follow, accompany, attend on', 'Bồi', ARRAY['バイ'], NULL, 11, 'b85628b0-3f6a-420a-91c7-0cfbd5055459') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('萩', 'N2', 'bush clover', 'Thu, Tho, Thưu', ARRAY['シュウ'], ARRAY['はぎ'], 12, '25c57eec-88fa-4e6e-95a2-9ba83b5f4246') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('伯', 'N2', 'chief, count, earl, uncle, Brazil', 'Bá', ARRAY['ハク'], NULL, 7, '78419994-196d-4445-8165-a6029d33a0ff') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('博', 'N2', 'Dr., command, esteem, win acclaim, Ph.D., exposition, fair', 'Bác', ARRAY['ハク','バク'], NULL, 12, 'ac324fde-d736-479e-b9ae-c0f09a7f3091') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('拍', 'N2', 'clap, beat (music)', 'Phách', ARRAY['ハク','ヒョウ'], NULL, 8, 'eaca9807-b2da-4d99-8585-13d429ea249d') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('泊', 'N3', 'overnight stay, put up at, ride at anchor', 'Bạc, Phách', ARRAY['ハク'], ARRAY['と.まる','と.める'], 8, '10673667-6c56-413d-bbd5-a48794fb7725') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('白', 'N5', 'white', 'Bạch', ARRAY['ハク','ビャク'], ARRAY['しろ','しら-','しろ.い'], 5, '3b90f7ed-6228-403f-94bc-50105d4ad47e') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('舶', 'N2', 'liner, ship', 'Bạc', ARRAY['ハク'], NULL, 11, 'c2814223-66bf-4fde-bf2e-3b95fa5d206c') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('薄', 'N3', 'dilute, thin, weak (tea), pampas grass', 'Bạc, Bác', ARRAY['ハク'], ARRAY['うす.い','うす-','-うす','うす.める','うす.まる','うす.らぐ','うす.ら-','うす.れる','すすき'], 16, '25c57eec-88fa-4e6e-95a2-9ba83b5f4246') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('迫', 'N2', 'urge, force, imminent, spur on', 'Bách', ARRAY['ハク'], ARRAY['せま.る'], 8, '371180fe-c78a-477d-b628-86c3e88e03f1') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('漠', 'N2', 'vague, obscure, desert, wide', 'Mạc', ARRAY['バク'], NULL, 13, '10673667-6c56-413d-bbd5-a48794fb7725') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('爆', 'N3', 'bomb, burst open, pop, split', 'Bạo, Bạc, Bộc', ARRAY['バク'], ARRAY['は.ぜる'], 19, '831cfc6a-79c9-4ebb-a4cc-ba737a36caf7') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('縛', 'N2', 'truss, arrest, bind, tie, restrain', 'Phược, Phọc', ARRAY['バク'], ARRAY['しば.る'], 16, '2d4eb76f-4fae-4d05-855c-2520845188ed') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('麦', 'N3', 'barley, wheat', 'Mạch', ARRAY['バク'], ARRAY['むぎ'], 7, '9a9dd9a5-37b3-4252-8fe7-92b89986e76a') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('箱', 'N3', 'box, chest, case, bin, railway car', 'Tương, Sương', ARRAY['ソウ'], ARRAY['はこ'], 15, 'da702964-289f-443e-995f-0f7c0d2a57f3') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('肇', 'N2', 'beginning', 'Triệu', ARRAY['チョウ','ジョウ','トウ'], ARRAY['はじ.める','はじめ'], 14, 'c15eccb6-77a9-4354-bac1-44b86e755d05') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('肌', 'N3', 'texture, skin, body, grain', 'Cơ', ARRAY['キ'], ARRAY['はだ'], 6, '71cc2465-f238-4f52-b9e3-39f8f95caaba') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('畑', 'N3', 'farm, field, garden, one''s specialty, (kokuji)', 'Đèn', NULL, ARRAY['はた','はたけ','-ばたけ'], 9, '43d68113-71ea-45ae-9926-6ea616e69ae2') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('八', 'N5', 'eight, eight radical (no. 12)', 'Bát', ARRAY['ハチ','ハツ'], ARRAY['や','や.つ','やっ.つ','よう'], 2, '33938fa7-49b8-4856-a98e-5aff308f56f2') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('鉢', 'N2', 'bowl, rice tub, pot, crown', 'Bát', ARRAY['ハチ','ハツ'], NULL, 13, 'c3b48b38-6414-47f2-a7ac-d72a85c0e35a') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('発', 'N4', 'departure, discharge, publish, emit, start from, disclose, counter for gunshots', 'Bát, Phát', ARRAY['ハツ','ホツ'], ARRAY['た.つ','あば.く','おこ.る','つか.わす','はな.つ'], 9, 'bdcaccd3-873c-4e44-a53f-d4b5c80e5011') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('髪', 'N3', 'hair of the head', 'Phát', ARRAY['ハツ'], ARRAY['かみ'], 14, 'db40eac9-2dd3-41b4-afda-6fed55e5e1ac') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('伐', 'N2', 'fell, strike, attack, punish', 'Phạt', ARRAY['バツ','ハツ','カ','ボチ'], ARRAY['き.る','そむ.く','う.つ'], 6, '78419994-196d-4445-8165-a6029d33a0ff') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('罰', 'N2', 'penalty, punishment', 'Phạt', ARRAY['バツ','バチ','ハツ'], ARRAY['ばっ.する'], 14, '416f2a82-f8af-4fcc-b9e2-5cb48c3ace0e') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('抜', 'N3', 'slip out, extract, pull out, pilfer, quote, remove, omit', 'Bạt', ARRAY['バツ','ハツ','ハイ'], ARRAY['ぬ.く','-ぬ.く','ぬ.き','ぬ.ける','ぬ.かす','ぬ.かる'], 7, 'eaca9807-b2da-4d99-8585-13d429ea249d') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('閥', 'N2', 'clique, lineage, pedigree, faction, clan', 'Phiệt', ARRAY['バツ'], NULL, 14, 'fc1908d4-7e1d-4e55-b1df-72e159f91868') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('鳩', 'N2', 'pigeon, dove', 'Cưu', ARRAY['キュウ','ク'], ARRAY['はと','あつ.める'], 13, 'a5d543cc-57c8-4627-8531-64c511b7bc11') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('隼', 'N2', 'falcon', 'Chuẩn', ARRAY['シュン','ジュン'], ARRAY['はやぶさ'], 10, 'e9426c63-0e1d-4399-a59e-ce2e851fa615') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('伴', 'N2', 'consort, accompany, bring with, companion', 'Bạn', ARRAY['ハン','バン'], ARRAY['ともな.う'], 7, '78419994-196d-4445-8165-a6029d33a0ff') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('判', 'N3', 'judgement, judgment, signature, stamp, seal', 'Phán', ARRAY['ハン','バン'], ARRAY['わか.る'], 7, 'bc6a1cef-e769-454c-a64f-910a5e1b5d74') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('半', 'N5', 'half, middle, odd number, semi-, part-', 'Bán', ARRAY['ハン'], ARRAY['なか.ば'], 5, 'ac324fde-d736-479e-b9ae-c0f09a7f3091') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('反', 'N3', 'anti-', 'Phản, Phiên', ARRAY['ハン','ホン','タン','ホ'], ARRAY['そ.る','そ.らす','かえ.す','かえ.る','-かえ.る'], 4, '6068ca21-fb74-4144-9b3d-7b93749eccdd') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('帆', 'N2', 'sail', 'Phàm, Phâm', ARRAY['ハン'], ARRAY['ほ'], 6, 'c3c77b72-afa6-4b3f-acd2-b9a7f991cf53') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('搬', 'N2', 'conveyor, carry, transport', 'Bàn, Ban', ARRAY['ハン'], NULL, 13, 'eaca9807-b2da-4d99-8585-13d429ea249d') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('板', 'N3', 'plank, board, plate, stage', 'Bản', ARRAY['ハン','バン'], ARRAY['いた'], 8, '80c53d4a-31b5-442f-be48-5d1b64972fae') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('版', 'N3', 'printing block, printing plate, edition, impression, label', 'Bản', ARRAY['ハン'], NULL, 8, '7b70f299-6f1c-4d45-8150-8f299bad657a') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('犯', 'N3', 'crime, sin, offense', 'Phạm', ARRAY['ハン','ボン'], ARRAY['おか.す'], 5, '060e9144-2828-4302-b284-f6ac8ea6ae51') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('班', 'N2', 'squad, corps, unit, group', 'Ban', ARRAY['ハン'], NULL, 10, '1450b570-89aa-4b1c-9e48-32bc25298929') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('畔', 'N2', 'paddy ridge, levee', 'Bạn', ARRAY['ハン'], ARRAY['あぜ','くろ','ほとり'], 10, '43d68113-71ea-45ae-9926-6ea616e69ae2') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('繁', 'N2', 'luxuriant, thick, overgrown, frequency, complexity, trouble', 'Phồn, Bàn', ARRAY['ハン'], ARRAY['しげ.る','しげ.く'], 16, '2d4eb76f-4fae-4d05-855c-2520845188ed') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('般', 'N3', 'carrier, carry, all, general, sort, kind', 'Bàn, Ban, Bát', ARRAY['ハン'], NULL, 10, 'c2814223-66bf-4fde-bf2e-3b95fa5d206c') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('藩', 'N2', 'clan, enclosure', 'Phiên, Phan', ARRAY['ハン'], NULL, 18, '25c57eec-88fa-4e6e-95a2-9ba83b5f4246') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('販', 'N3', 'marketing, sell, trade', 'Phiến, Phán', ARRAY['ハン'], NULL, 11, '0cb16105-d4c3-4534-9e4e-0eecbad15787') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('範', 'N2', 'pattern, example, model', 'Phạm', ARRAY['ハン'], NULL, 15, 'da702964-289f-443e-995f-0f7c0d2a57f3') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('煩', 'N2', 'anxiety, trouble, worry, pain, ill, annoy, nuisance, irksome', 'Phiền', ARRAY['ハン','ボン'], ARRAY['わずら.う','わずら.わす','うるさ.がる','うるさ.い'], 13, '831cfc6a-79c9-4ebb-a4cc-ba737a36caf7') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('頒', 'N2', 'distribute, disseminate, partition, understand', 'Ban, Phân', ARRAY['ハン'], ARRAY['わ.かつ','わ.ける'], 13, 'be4fe89f-bae1-4238-8aad-4789348c0e13') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('飯', 'N4', 'meal, boiled rice', 'Phạn, Phãn', ARRAY['ハン'], ARRAY['めし'], 12, '575f81b8-d9ab-421e-ac61-7d25cf8751da') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('晩', 'N3', 'nightfall, night', 'Hào, Mạn, Man', ARRAY['バン'], NULL, 12, 'b8af1855-8d69-4238-bc65-6925c1c993cd') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('番', 'N3', 'turn, number in a series', 'Phiên, Phan, Ba, Bà', ARRAY['バン'], ARRAY['つが.い'], 12, '43d68113-71ea-45ae-9926-6ea616e69ae2') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('盤', 'N2', 'tray, shallow bowl, platter, tub, board, phonograph record', 'Bàn', ARRAY['バン'], NULL, 15, '12bd4f5a-a4fb-451b-b25d-418406c683fa') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('蛮', 'N2', 'barbarian', 'Man', ARRAY['バン'], ARRAY['えびす'], 12, '2b1d8e20-f306-465c-b245-cb2dd48f3615') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('卑', 'N2', 'lowly, base, vile, vulgar, despise', 'Ti', ARRAY['ヒ'], ARRAY['いや.しい','いや.しむ','いや.しめる'], 9, 'ac324fde-d736-479e-b9ae-c0f09a7f3091') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('否', 'N3', 'negate, no, noes, refuse, decline, deny', 'Phủ, Bĩ', ARRAY['ヒ'], ARRAY['いな','いや'], 7, 'a54e08f0-b1f4-49b0-bdcd-1fcfab9f5eb7') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('妃', 'N2', 'queen, princess', 'Phi', ARRAY['ヒ'], ARRAY['きさき'], 6, '2b2beef1-465e-418b-9883-672cd0e0a712') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('彼', 'N3', 'he, that, the', 'Bỉ', ARRAY['ヒ'], ARRAY['かれ','かの','か.の'], 8, '5a7d3fce-7600-45fd-91a8-2af832381ee4') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('悲', 'N3', 'grieve, sad, deplore, regret', 'Bi', ARRAY['ヒ'], ARRAY['かな.しい','かな.しむ'], 12, '1659d447-8145-42d3-8262-2d05cea9f834') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('扉', 'N2', 'front door, title page, front page', 'Phi', ARRAY['ヒ'], ARRAY['とびら'], 12, '3df4fb00-e325-4d60-b6e2-dac33518caca') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('批', 'N3', 'criticism, strike', 'Phê', ARRAY['ヒ'], NULL, 7, 'eaca9807-b2da-4d99-8585-13d429ea249d') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('披', 'N2', 'expose, open', 'Phi, Bia', ARRAY['ヒ'], NULL, 8, 'eaca9807-b2da-4d99-8585-13d429ea249d') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('斐', 'N2', 'beautiful, patterned', 'Phỉ', ARRAY['ヒ','イ'], NULL, 12, '0382437a-c430-4ec1-bbc0-ca8deea360c9') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('比', 'N3', 'compare, race, ratio, Philippines', 'Bỉ, Bí, Bì, Tỉ', ARRAY['ヒ'], ARRAY['くら.べる'], 4, '2c4516d1-65af-40c7-b484-068415bad9a2') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('泌', 'N2', 'ooze, flow, soak in, penetrate, secrete', 'Bí', ARRAY['ヒツ','ヒ'], NULL, 8, '10673667-6c56-413d-bbd5-a48794fb7725') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('疲', 'N3', 'exhausted, tire, weary', 'Bì', ARRAY['ヒ'], ARRAY['つか.れる','-づか.れ','つか.らす'], 10, '5688d6a7-12f3-4090-999b-bee052200ce3') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('皮', 'N3', 'pelt, skin, hide, leather, skin radical (no. 107)', 'Bì', ARRAY['ヒ'], ARRAY['かわ'], 5, '5754b1ef-39b2-4c14-9af3-57d89f37fbc9') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('碑', 'N2', 'tombstone, monument', 'Bi', ARRAY['ヒ'], ARRAY['いしぶみ'], 14, 'c3bb7570-e8b9-49cc-bf56-90e74165d503') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('秘', 'N2', 'secret, conceal', 'Bí', ARRAY['ヒ'], ARRAY['ひ.める','ひそ.か','かく.す'], 10, '18d824dd-4b06-48c0-9e40-ff5132c75dc9') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('緋', 'N2', 'scarlet, cardinal', 'Phi', ARRAY['ヒ'], ARRAY['あけ','あか'], 14, '2d4eb76f-4fae-4d05-855c-2520845188ed') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('罷', 'N2', 'quit, stop, leave, withdraw, go', 'Bãi, Bì', ARRAY['ヒ'], ARRAY['まか.り-','や.める'], 15, '416f2a82-f8af-4fcc-b9e2-5cb48c3ace0e') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('肥', 'N2', 'fertilizer, get fat, fertile, manure, pamper', 'Phì', ARRAY['ヒ'], ARRAY['こ.える','こえ','こ.やす','こ.やし','ふと.る'], 8, '71cc2465-f238-4f52-b9e3-39f8f95caaba') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('被', 'N3', 'incur, cover, veil, brood over, shelter, wear, put on, be exposed (film), receiving', 'Bị, Bí', ARRAY['ヒ'], ARRAY['こうむ.る','おお.う','かぶ.る','かぶ.せる'], 10, '9c5b95cd-6590-4a03-8c61-a68c80da3c8c') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('費', 'N3', 'expense, cost, spend, consume, waste', 'Phí, Bỉ', ARRAY['ヒ'], ARRAY['つい.やす','つい.える'], 12, '0cb16105-d4c3-4534-9e4e-0eecbad15787') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('避', 'N2', 'evade, avoid, avert, ward off, shirk, shun', 'Tị', ARRAY['ヒ'], ARRAY['さ.ける','よ.ける'], 16, '371180fe-c78a-477d-b628-86c3e88e03f1') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('非', 'N3', 'un-, mistake, negative, injustice, non-', 'Phi', ARRAY['ヒ'], ARRAY['あら.ず'], 8, '9a69812e-ffe9-473c-82f3-49627bed2623') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('飛', 'N3', 'fly, skip (pages), scatter', 'Phi', ARRAY['ヒ'], ARRAY['と.ぶ','と.ばす','-と.ばす'], 9, '77338e59-8b0f-4bfd-9451-7b2c7b82a317') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('備', 'N3', 'equip, provision, preparation', 'Bị', ARRAY['ビ'], ARRAY['そな.える','そな.わる','つぶさ.に'], 12, '78419994-196d-4445-8165-a6029d33a0ff') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('尾', 'N2', 'tail, end, counter for fish, lower slope of mountain', 'Vĩ', ARRAY['ビ'], ARRAY['お'], 7, 'dbb1b9f0-b6d7-4c0b-989a-7a98ab167f37') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('微', 'N2', 'delicate, minuteness, insignificance', 'Vi', ARRAY['ビ'], ARRAY['かす.か'], 13, '5a7d3fce-7600-45fd-91a8-2af832381ee4') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('眉', 'N2', 'eyebrow', 'My, Mi', ARRAY['ビ','ミ'], ARRAY['まゆ'], 9, 'eeeb0778-60ee-4882-b7a5-d6e12279fade') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('美', 'N3', 'beauty, beautiful', 'Mỹ', ARRAY['ビ','ミ'], ARRAY['うつく.しい'], 9, 'e438596e-f3e0-4bb3-9396-bcebdb382fd7') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('鼻', 'N3', 'nose, snout', 'Tị', ARRAY['ビ'], ARRAY['はな'], 14, 'a817e9ed-a5f3-4217-82a4-b4a6a5adce48') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('柊', 'N2', 'holly', 'Chung, Chông, Dông', ARRAY['シュ','シュウ'], ARRAY['ひいらぎ'], 9, '80c53d4a-31b5-442f-be48-5d1b64972fae') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('匹', 'N3', 'equal, head, counter for small animals, roll of cloth', 'Thất', ARRAY['ヒツ'], ARRAY['ひき'], 4, '3c076357-dc93-48ad-96f1-aef3d8dd938d') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('彦', 'N2', 'lad, boy (ancient)', 'Ngạn, Ngán, Ngàn', ARRAY['ゲン'], ARRAY['ひこ'], 9, 'a141edd3-78dd-46cc-b260-1b2cfc79e5ed') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('必', 'N3', 'invariably, certain, inevitable', 'Tất', ARRAY['ヒツ'], ARRAY['かなら.ず'], 5, '1659d447-8145-42d3-8262-2d05cea9f834') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('筆', 'N3', 'writing brush, writing, painting brush, handwriting', 'Bút', ARRAY['ヒツ'], ARRAY['ふで'], 12, 'da702964-289f-443e-995f-0f7c0d2a57f3') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('姫', 'N2', 'princess', 'Chẩn', ARRAY['キ'], ARRAY['ひめ','ひめ-'], 10, '2b2beef1-465e-418b-9883-672cd0e0a712') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('媛', 'N2', 'beautiful woman, princess', 'Viện, Viên', ARRAY['エン'], ARRAY['ひめ'], 12, '2b2beef1-465e-418b-9883-672cd0e0a712') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('百', 'N5', 'hundred', 'Bách, Bá, Mạch', ARRAY['ヒャク','ビャク'], ARRAY['もも'], 6, '3b90f7ed-6228-403f-94bc-50105d4ad47e') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('俵', 'N2', 'bag, bale, sack, counter for bags', 'Biểu', ARRAY['ヒョウ'], ARRAY['たわら'], 10, '78419994-196d-4445-8165-a6029d33a0ff') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('彪', 'N2', 'spotted, mottled, patterned, small tiger', 'Bưu', ARRAY['ヒョウ','ヒュウ'], ARRAY['あや'], 11, 'a141edd3-78dd-46cc-b260-1b2cfc79e5ed') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('標', 'N3', 'signpost, seal, mark, stamp, imprint, symbol, emblem, trademark, evidence, souvenir, target', 'Tiêu, Phiêu', ARRAY['ヒョウ'], ARRAY['しるべ','しるし'], 15, '80c53d4a-31b5-442f-be48-5d1b64972fae') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('氷', 'N3', 'icicle, ice, hail, freeze, congeal', 'Băng', ARRAY['ヒョウ'], ARRAY['こおり','ひ','こお.る'], 5, '10673667-6c56-413d-bbd5-a48794fb7725') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('漂', 'N2', 'drift, float (on liquid)', 'Phiêu, Phiếu', ARRAY['ヒョウ'], ARRAY['ただよ.う'], 14, '10673667-6c56-413d-bbd5-a48794fb7725') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('票', 'N2', 'ballot, label, ticket, sign', 'Phiếu, Tiêu, Phiêu', ARRAY['ヒョウ'], NULL, 11, 'aa655283-0fb9-4ae0-a339-aa1437f00ad1') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('表', 'N3', 'surface, table, chart, diagram', 'Biểu', ARRAY['ヒョウ'], ARRAY['おもて','-おもて','あらわ.す','あらわ.れる','あら.わす'], 8, '9c5b95cd-6590-4a03-8c61-a68c80da3c8c') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('評', 'N3', 'evaluate, criticism, comment', 'Bình', ARRAY['ヒョウ'], NULL, 12, '7fd47228-ad16-439a-8685-ad9cacdeb95e') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('描', 'N2', 'sketch, compose, write, draw, paint', 'Miêu', ARRAY['ビョウ'], ARRAY['えが.く','か.く'], 11, 'eaca9807-b2da-4d99-8585-13d429ea249d') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('病', 'N4', 'ill, sick', 'Bệnh', ARRAY['ビョウ','ヘイ'], ARRAY['や.む','-や.み','やまい'], 10, '5688d6a7-12f3-4090-999b-bee052200ce3') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('秒', 'N3', 'second (1/60 minute)', 'Miểu', ARRAY['ビョウ'], NULL, 9, '18d824dd-4b06-48c0-9e40-ff5132c75dc9') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('苗', 'N2', 'seedling, sapling, shoot', 'Miêu, Meo, Miều', ARRAY['ビョウ','ミョウ'], ARRAY['なえ','なわ-'], 8, '25c57eec-88fa-4e6e-95a2-9ba83b5f4246') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('品', 'N4', 'goods, refinement, dignity, article, counter for meal courses', 'Phẩm', ARRAY['ヒン','ホン'], ARRAY['しな'], 9, 'a54e08f0-b1f4-49b0-bdcd-1fcfab9f5eb7') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('彬', 'N2', 'refined, gentle', 'Bân', ARRAY['ヒン','フン'], ARRAY['うるわ.しい','あき.らか'], 11, 'a141edd3-78dd-46cc-b260-1b2cfc79e5ed') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('浜', 'N2', 'seacoast, beach, seashore', 'Banh', ARRAY['ヒン'], ARRAY['はま'], 10, '10673667-6c56-413d-bbd5-a48794fb7725') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('貧', 'N3', 'poverty, poor', 'Bần', ARRAY['ヒン','ビン'], ARRAY['まず.しい'], 11, '0cb16105-d4c3-4534-9e4e-0eecbad15787') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('賓', 'N2', 'V.I.P., guest', 'Tân, Thấn', ARRAY['ヒン'], ARRAY['まろうど','したがう'], 15, '0cb16105-d4c3-4534-9e4e-0eecbad15787') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('頻', 'N2', 'repeatedly, recur', 'Tần', ARRAY['ヒン'], ARRAY['しき.りに'], 17, 'be4fe89f-bae1-4238-8aad-4789348c0e13') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('敏', 'N2', 'cleverness, agile, alert', 'Mẫn', ARRAY['ビン'], ARRAY['さとい'], 10, 'b62aa3f5-bcc4-4c24-944d-b02f3fbb5499') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('瓶', 'N2', 'bottle, vial, jar, jug, vat, urn', 'Bình', ARRAY['ビン','ヘイ'], ARRAY['かめ'], 11, '70eda508-adf3-4d94-a9c0-2843f98abd3a') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('不', 'N4', 'negative, non-, bad, ugly, clumsy', 'Bất, Phầu, Phủ, Phi', ARRAY['フ','ブ'], NULL, 4, '12f0d122-51f5-4c55-8a67-d3fc53818027') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('付', 'N3', 'adhere, attach, refer to, append', 'Phó', ARRAY['フ'], ARRAY['つ.ける','-つ.ける','-づ.ける','つ.け','つ.け-','-つ.け','-づ.け','-づけ','つ.く','-づ.く','つ.き','-つ.き','-つき','-づ.き','-づき'], 5, '78419994-196d-4445-8165-a6029d33a0ff') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('夫', 'N3', 'husband, man', 'Phu, Phù', ARRAY['フ','フウ','ブ'], ARRAY['おっと','それ'], 4, '457c9d33-f2d9-4f61-bca8-910ce7ade194') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('婦', 'N3', 'lady, woman, wife, bride', 'Phụ', ARRAY['フ'], ARRAY['よめ'], 11, '2b2beef1-465e-418b-9883-672cd0e0a712') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('富', 'N3', 'wealth, enrich, abundant', 'Phú', ARRAY['フ','フウ'], ARRAY['と.む','とみ'], 12, '66a403fd-ce7c-4ecc-820d-3f1718e79119') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('布', 'N3', 'linen, cloth, spread, distribute', 'Bố', ARRAY['フ','ホ'], ARRAY['ぬの','し.く','きれ'], 5, 'c3c77b72-afa6-4b3f-acd2-b9a7f991cf53') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('府', 'N3', 'borough, urban prefecture, govt office, representative body, storehouse', 'Phủ', ARRAY['フ'], NULL, 8, '2417a6bf-65df-4c8a-a8d0-fba42aeb96ed') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('怖', 'N3', 'dreadful, be frightened, fearful', 'Phố', ARRAY['フ','ホ'], ARRAY['こわ.い','こわ.がる','お.じる','おそ.れる'], 8, '1659d447-8145-42d3-8262-2d05cea9f834') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('扶', 'N2', 'aid, help, assist', 'Phù', ARRAY['フ'], ARRAY['たす.ける'], 7, 'eaca9807-b2da-4d99-8585-13d429ea249d') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('敷', 'N2', 'spread, pave, sit, promulgate', 'Phu', ARRAY['フ'], ARRAY['し.く','-し.き'], 15, 'b62aa3f5-bcc4-4c24-944d-b02f3fbb5499') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('普', 'N3', 'universal, wide(ly), generally, Prussia', 'Phổ', ARRAY['フ'], ARRAY['あまね.く','あまねし'], 12, 'b8af1855-8d69-4238-bc65-6925c1c993cd') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('浮', 'N3', 'floating, float, rise to surface', 'Phù', ARRAY['フ'], ARRAY['う.く','う.かれる','う.かぶ','う.かべる'], 10, '10673667-6c56-413d-bbd5-a48794fb7725') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('父', 'N5', 'father', 'Phụ, Phủ', ARRAY['フ'], ARRAY['ちち'], 4, '9bc15db5-734a-45a6-9031-fc1edfdccb44') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('符', 'N3', 'token, sign, mark, tally, charm', 'Phù', ARRAY['フ'], NULL, 11, 'da702964-289f-443e-995f-0f7c0d2a57f3') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('腐', 'N2', 'rot, decay, sour', 'Hủ', ARRAY['フ'], ARRAY['くさ.る','-くさ.る','くさ.れる','くさ.れ','くさ.らす','くさ.す'], 14, '71cc2465-f238-4f52-b9e3-39f8f95caaba') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('膚', 'N3', 'skin, body, grain, texture, disposition', 'Phu', ARRAY['フ'], ARRAY['はだ'], 15, '71cc2465-f238-4f52-b9e3-39f8f95caaba') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('芙', 'N2', 'lotus, Mt Fuji', 'Phù', ARRAY['フ'], NULL, 7, '25c57eec-88fa-4e6e-95a2-9ba83b5f4246') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('譜', 'N2', 'musical score, music, note, staff, table, genealogy', 'Phổ, Phả', ARRAY['フ'], NULL, 19, '7fd47228-ad16-439a-8685-ad9cacdeb95e') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('負', 'N3', 'defeat, negative, -, minus, bear, owe, assume a responsibility', 'Phụ', ARRAY['フ'], ARRAY['ま.ける','ま.かす','お.う'], 9, '0cb16105-d4c3-4534-9e4e-0eecbad15787') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('賦', 'N2', 'levy, ode, prose, poem, tribute, installment', 'Phú', ARRAY['フ','ブ'], NULL, 15, '0cb16105-d4c3-4534-9e4e-0eecbad15787') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('赴', 'N2', 'proceed, get, become, tend', 'Phó', ARRAY['フ'], ARRAY['おもむ.く'], 9, '432fb72b-e9d0-4c51-981a-ebec3d1c1488') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('附', 'N2', 'affixed, attach, refer to, append', 'Phụ', ARRAY['フ'], ARRAY['つ.ける','つ.く'], 8, 'b85628b0-3f6a-420a-91c7-0cfbd5055459') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('侮', 'N2', 'scorn, despise, make light of, contempt', 'Vũ', ARRAY['ブ'], ARRAY['あなど.る','あなず.る'], 8, '78419994-196d-4445-8165-a6029d33a0ff') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('武', 'N3', 'warrior, military, chivalry, arms', 'Vũ, Võ', ARRAY['ブ','ム'], ARRAY['たけ','たけ.し'], 8, '5abe55eb-4f3c-429f-8c1f-dfa8aca4b1f4') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('舞', 'N3', 'dance, flit, circle, wheel', 'Vũ', ARRAY['ブ'], ARRAY['ま.う','-ま.う','まい'], 15, '0427dee1-ebce-49e9-b12b-b2eb96e10bad') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('部', 'N3', 'section, bureau, dept, class, copy, part, portion, counter for copies of a newspaper or magazine', 'Bộ', ARRAY['ブ'], ARRAY['-べ'], 11, '57b67155-4755-4cbd-8c34-1edf3d4cb815') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('封', 'N3', 'seal, closing', 'Phong', ARRAY['フウ','ホウ'], NULL, 9, '693998e2-9356-4193-bcef-4b2f79e9e857') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('楓', 'N2', 'maple', 'Phong', ARRAY['フウ'], ARRAY['かえで'], 13, '80c53d4a-31b5-442f-be48-5d1b64972fae') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('風', 'N4', 'wind, air, style, manner', 'Phong', ARRAY['フウ','フ'], ARRAY['かぜ','かざ-'], 9, '90fde474-602b-4f54-9f45-65b305fbe745') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('蕗', 'N2', 'butterbur, bog rhubarb', 'Lộ', ARRAY['ロ','ル'], ARRAY['ふき'], 16, '25c57eec-88fa-4e6e-95a2-9ba83b5f4246') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('伏', 'N2', 'prostrated, bend down, bow, cover, lay (pipes)', 'Phục', ARRAY['フク'], ARRAY['ふ.せる','ふ.す'], 6, '78419994-196d-4445-8165-a6029d33a0ff') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('副', 'N3', 'vice-, assistant, aide, duplicate, copy', 'Phó', ARRAY['フク'], NULL, 11, 'bc6a1cef-e769-454c-a64f-910a5e1b5d74') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('復', 'N3', 'restore, return to, revert, resume', 'Phục, Phúc', ARRAY['フク'], ARRAY['また'], 12, '5a7d3fce-7600-45fd-91a8-2af832381ee4') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('幅', 'N3', 'hanging scroll, width', 'Phúc, Bức', ARRAY['フク'], ARRAY['はば'], 12, 'c3c77b72-afa6-4b3f-acd2-b9a7f991cf53') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('服', 'N4', 'clothing, admit, obey, discharge', 'Phục', ARRAY['フク'], NULL, 8, 'a55eee17-b099-4cb3-810a-0a4c9dbc7ea9') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('福', 'N3', 'blessing, fortune, luck, wealth', 'Phúc', ARRAY['フク'], NULL, 13, 'aa655283-0fb9-4ae0-a339-aa1437f00ad1') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('腹', 'N3', 'abdomen, belly, stomach', 'Phúc', ARRAY['フク'], ARRAY['はら'], 13, '71cc2465-f238-4f52-b9e3-39f8f95caaba') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('複', 'N3', 'duplicate, double, compound, multiple', 'Phức', ARRAY['フク'], NULL, 14, '9c5b95cd-6590-4a03-8c61-a68c80da3c8c') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('覆', 'N2', 'capsize, cover, shade, mantle, be ruined', 'Phúc, Phú', ARRAY['フク'], ARRAY['おお.う','くつがえ.す','くつがえ.る'], 18, '428b8fa3-e5c4-496c-aeda-768f030a5732') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('払', 'N3', 'pay, clear out, prune, banish, dispose of', 'Chàng', ARRAY['フツ','ヒツ','ホツ'], ARRAY['はら.う','-はら.い','-ばら.い'], 5, 'eaca9807-b2da-4d99-8585-13d429ea249d') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('沸', 'N3', 'seethe, boil, ferment, uproar, breed', 'Phí, Phất', ARRAY['フツ'], ARRAY['わ.く','わ.かす'], 8, '10673667-6c56-413d-bbd5-a48794fb7725') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('仏', 'N3', 'Buddha, the dead, France', 'Phật', ARRAY['ブツ','フツ'], ARRAY['ほとけ'], 4, '78419994-196d-4445-8165-a6029d33a0ff') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('物', 'N4', 'thing, object, matter', 'Vật', ARRAY['ブツ','モツ'], ARRAY['もの','もの-'], 8, 'a55bbf5a-1ffc-48ef-909c-6b366c2d8398') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('分', 'N5', 'part, minute of time, segment, share, degree, one''s lot, duty, understand, know, rate, 1%, chances, shaku/100', 'Phân, Phận', ARRAY['ブン','フン','ブ'], ARRAY['わ.ける','わ.け','わ.かれる','わ.かる','わ.かつ'], 4, 'bc6a1cef-e769-454c-a64f-910a5e1b5d74') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('噴', 'N2', 'erupt, spout, emit, flush out', 'Phún', ARRAY['フン'], ARRAY['ふ.く'], 15, 'a54e08f0-b1f4-49b0-bdcd-1fcfab9f5eb7') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('墳', 'N2', 'tomb, mound', 'Phần, Phẫn, Bổn', ARRAY['フン'], NULL, 15, '2fd61440-db3f-4cd5-8101-9e74019df262') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('憤', 'N2', 'aroused, resent, be indignant, anger', 'Phẫn, Phấn', ARRAY['フン'], ARRAY['いきどお.る'], 15, '1659d447-8145-42d3-8262-2d05cea9f834') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('奮', 'N2', 'stirred up, be invigorated, flourish', 'Phấn', ARRAY['フン'], ARRAY['ふる.う'], 16, '457c9d33-f2d9-4f61-bca8-910ce7ade194') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('粉', 'N3', 'flour, powder, dust', 'Phấn', ARRAY['フン'], ARRAY['デシメートル','こ','こな'], 10, '8497383a-f56a-48b2-a4bd-8c8673d82955') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('紛', 'N2', 'distract, be mistaken for, go astray, divert', 'Phân', ARRAY['フン'], ARRAY['まぎ.れる','-まぎ.れ','まぎ.らす','まぎ.らわす','まぎ.らわしい'], 10, '2d4eb76f-4fae-4d05-855c-2520845188ed') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('雰', 'N2', 'atmosphere, fog', 'Phân', ARRAY['フン'], NULL, 12, '491a9ec1-aebb-486b-9e2d-050c80063a8f') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('文', 'N4', 'sentence, literature, style, art, decoration, figures, plan, literary radical (no. 67)', 'Văn, Vấn', ARRAY['ブン','モン'], ARRAY['ふみ','あや'], 4, '0382437a-c430-4ec1-bbc0-ca8deea360c9') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('聞', 'N5', 'hear, ask, listen', 'Văn, Vấn, Vặn', ARRAY['ブン','モン'], ARRAY['き.く','き.こえる'], 14, '161e8737-630f-4a34-a6b4-6a75a2f52fbc') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('丙', 'N2', 'third class, 3rd, 3rd calendar sign', 'Bính', ARRAY['ヘイ'], ARRAY['ひのえ'], 5, '12f0d122-51f5-4c55-8a67-d3fc53818027') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('併', 'N2', 'join, get together, unite, collective', 'Bính, Tinh, Tính, Tịnh', ARRAY['ヘイ'], ARRAY['あわ.せる'], 8, '78419994-196d-4445-8165-a6029d33a0ff') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('兵', 'N3', 'soldier, private, troops, army, warfare, strategy, tactics', 'Binh', ARRAY['ヘイ','ヒョウ'], ARRAY['つわもの'], 7, '33938fa7-49b8-4856-a98e-5aff308f56f2') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('塀', 'N2', 'fence, wall, (kokuji)', 'Bình', ARRAY['ヘイ','ベイ'], NULL, 12, '2fd61440-db3f-4cd5-8101-9e74019df262') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('幣', 'N2', 'cash, bad habit, humble prefix, gift, Shinto offerings of cloth, rope, cut paper', 'Tệ', ARRAY['ヘイ'], ARRAY['ぬさ'], 15, 'c3c77b72-afa6-4b3f-acd2-b9a7f991cf53') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('平', 'N3', 'even, flat, peace', 'Bình, Biền', ARRAY['ヘイ','ビョウ','ヒョウ'], ARRAY['たい.ら','たい.らげる','ひら'], 5, '8abb0e5e-778e-44fc-b6a7-9581999b661c') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('弊', 'N2', 'abuse, evil, vice, breakage', 'Tệ, Tế', ARRAY['ヘイ'], NULL, 15, '3d66f497-44c4-445f-8ade-9d6d1d37c6a3') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('柄', 'N2', 'design, pattern, build, nature, character, handle, crank, grip, knob, shaft', 'Bính', ARRAY['ヘイ'], ARRAY['がら','え','つか'], 9, '80c53d4a-31b5-442f-be48-5d1b64972fae') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('並', 'N3', 'row, and, besides, as well as, line up, rank with, rival, equal', 'Tịnh', ARRAY['ヘイ','ホウ'], ARRAY['な.み','なみ','なら.べる','なら.ぶ','なら.びに'], 8, '12f0d122-51f5-4c55-8a67-d3fc53818027') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('閉', 'N3', 'closed, shut', 'Bế', ARRAY['ヘイ'], ARRAY['と.じる','と.ざす','し.める','し.まる','た.てる'], 11, 'fc1908d4-7e1d-4e55-b1df-72e159f91868') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('陛', 'N2', 'highness, steps (of throne)', 'Bệ', ARRAY['ヘイ'], NULL, 10, 'b85628b0-3f6a-420a-91c7-0cfbd5055459') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('米', 'N3', 'rice, USA, metre', 'Mễ', ARRAY['ベイ','マイ','メエトル'], ARRAY['こめ','よね'], 6, '8497383a-f56a-48b2-a4bd-8c8673d82955') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('壁', 'N3', 'wall, lining (stomach), fence', 'Bích', ARRAY['ヘキ'], ARRAY['かべ'], 16, '2fd61440-db3f-4cd5-8101-9e74019df262') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('癖', 'N2', 'mannerism, habit, vice, trait, fault, kink', 'Phích, Tích', ARRAY['ヘキ'], ARRAY['くせ','くせ.に'], 18, '5688d6a7-12f3-4090-999b-bee052200ce3') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('碧', 'N2', 'blue, green', 'Bích', ARRAY['ヘキ','ヒャク'], NULL, 14, 'c3bb7570-e8b9-49cc-bf56-90e74165d503') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('別', 'N4', 'separate, branch off, diverge, fork, another, extra, specially', 'Biệt', ARRAY['ベツ'], ARRAY['わか.れる','わ.ける'], 7, 'bc6a1cef-e769-454c-a64f-910a5e1b5d74') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('偏', 'N2', 'partial, side, left-side radical, inclining, biased', 'Thiên', ARRAY['ヘン'], ARRAY['かたよ.る'], 11, '78419994-196d-4445-8165-a6029d33a0ff') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('変', 'N3', 'unusual, change, strange', 'Biến, Bén, Biếng', ARRAY['ヘン'], ARRAY['か.わる','か.わり','か.える'], 9, 'ec736371-0c18-4606-9d54-12364da330d3') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('片', 'N3', 'one-sided, leaf, sheet, right-side kata radical (no. 91)', 'Phiến', ARRAY['ヘン'], ARRAY['かた-','かた'], 4, '7b70f299-6f1c-4d45-8150-8f299bad657a') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('編', 'N3', 'compilation, knit, plait, braid, twist, editing, completed poem, part of a book', 'Biên', ARRAY['ヘン'], ARRAY['あ.む','-あ.み'], 15, '2d4eb76f-4fae-4d05-855c-2520845188ed') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('辺', 'N3', 'environs, boundary, border, vicinity', 'Biên', ARRAY['ヘン'], ARRAY['あた.り','ほと.り','-べ'], 5, '371180fe-c78a-477d-b628-86c3e88e03f1') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('返', 'N3', 'return, answer, fade, repay', 'Phản', ARRAY['ヘン'], ARRAY['かえ.す','-かえ.す','かえ.る','-かえ.る'], 7, '371180fe-c78a-477d-b628-86c3e88e03f1') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('遍', 'N2', 'everywhere, times, widely, generally', 'Biến', ARRAY['ヘン'], ARRAY['あまね.く'], 12, '371180fe-c78a-477d-b628-86c3e88e03f1') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('便', 'N4', 'convenience, facility, excrement, feces, letter, chance', 'Tiện', ARRAY['ベン','ビン'], ARRAY['たよ.り'], 9, '78419994-196d-4445-8165-a6029d33a0ff') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('勉', 'N4', 'exertion, endeavour, encourage, strive, make effort, diligent', 'Miễn', ARRAY['ベン'], ARRAY['つと.める'], 10, 'd9107ec4-ea5d-4a21-bacd-ffca462b29dd') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('弁', 'N2', 'valve, petal, braid, speech, dialect, discrimination, dispose of, distinguish, conical cap', 'Biện, Biền, Bàn', ARRAY['ベン','ヘン'], ARRAY['かんむり','わきま.える','わ.ける','はなびら','あらそ.う'], 5, '3d66f497-44c4-445f-8ade-9d6d1d37c6a3') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('保', 'N3', 'protect, guarantee, keep, preserve, sustain, support', 'Bảo', ARRAY['ホ','ホウ'], ARRAY['たも.つ'], 9, '78419994-196d-4445-8165-a6029d33a0ff') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('舗', 'N2', 'shop, store, pave', 'Phổ', ARRAY['ホ'], NULL, 15, '78419994-196d-4445-8165-a6029d33a0ff') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('捕', 'N3', 'catch, capture', 'Bộ', ARRAY['ホ'], ARRAY['と.らえる','と.らわれる','と.る','とら.える','とら.われる','つか.まえる','つか.まる'], 10, 'eaca9807-b2da-4d99-8585-13d429ea249d') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('歩', 'N4', 'walk, counter for steps', 'Bộ', ARRAY['ホ','ブ','フ'], ARRAY['ある.く','あゆ.む'], 8, '5abe55eb-4f3c-429f-8c1f-dfa8aca4b1f4') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('甫', 'N2', 'for the first time, not until', 'Phủ', ARRAY['ホ','フ'], ARRAY['はじ.めて'], 7, 'daf0832d-8c88-4a80-be90-aff850623ffc') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('補', 'N3', 'supplement, supply, make good, offset, compensate, assistant, learner', 'Bổ', ARRAY['ホ'], ARRAY['おぎな.う'], 12, '9c5b95cd-6590-4a03-8c61-a68c80da3c8c') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('輔', 'N2', 'help', 'Phụ', ARRAY['ホ','フ'], ARRAY['たす.ける'], 14, '869f4859-e3d9-4a6a-8839-d1bf7a715a34') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('穂', 'N2', 'ear, ear (grain), head, crest (wave)', 'Báng, Tuệ', ARRAY['スイ'], ARRAY['ほ'], 15, '18d824dd-4b06-48c0-9e40-ff5132c75dc9') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('募', 'N3', 'recruit, campaign, gather (contributions), enlist, grow violent', 'Mộ', ARRAY['ボ'], ARRAY['つの.る'], 12, 'd9107ec4-ea5d-4a21-bacd-ffca462b29dd') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('墓', 'N2', 'grave, tomb', 'Mộ', ARRAY['ボ'], ARRAY['はか'], 13, '2fd61440-db3f-4cd5-8101-9e74019df262') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('慕', 'N2', 'pining, yearn for, love dearly, adore', 'Mộ', ARRAY['ボ'], ARRAY['した.う'], 14, '1659d447-8145-42d3-8262-2d05cea9f834') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('暮', 'N3', 'evening, twilight, season''s end, livelihood, make a living, spend time', 'Mộ', ARRAY['ボ'], ARRAY['く.れる','く.らす'], 14, 'b8af1855-8d69-4238-bc65-6925c1c993cd') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('母', 'N5', 'mother', 'Mẫu', ARRAY['ボ'], ARRAY['はは','も'], 5, '27cdde1c-51a8-495f-ba1c-643efa2b39ff') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('簿', 'N2', 'register, record book', 'Bộ, Bạc', ARRAY['ボ'], NULL, 19, 'da702964-289f-443e-995f-0f7c0d2a57f3') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('倣', 'N2', 'emulate, imitate', 'Phỏng', ARRAY['ホウ'], ARRAY['なら.う'], 10, '78419994-196d-4445-8165-a6029d33a0ff') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('俸', 'N2', 'stipend, salary', 'Bổng', ARRAY['ホウ'], NULL, 10, '78419994-196d-4445-8165-a6029d33a0ff') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('包', 'N3', 'wrap, pack up, cover, conceal', 'Bao', ARRAY['ホウ'], ARRAY['つつ.む','くる.む'], 5, '15e2044a-b802-4011-9d93-2da1db623ea2') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('報', 'N3', 'report, news, reward, retribution', 'Báo', ARRAY['ホウ'], ARRAY['むく.いる'], 12, '2fd61440-db3f-4cd5-8101-9e74019df262') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('奉', 'N2', 'observance, offer, present, dedicate', 'Phụng, Bổng', ARRAY['ホウ','ブ'], ARRAY['たてまつ.る','まつ.る','ほう.ずる'], 8, '457c9d33-f2d9-4f61-bca8-910ce7ade194') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('宝', 'N3', 'treasure, wealth, valuables', 'Bảo, Báu, Bửu', ARRAY['ホウ'], ARRAY['たから'], 8, '66a403fd-ce7c-4ecc-820d-3f1718e79119') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('峰', 'N2', 'summit, peak', 'Phong', ARRAY['ホウ'], ARRAY['みね','ね'], 10, 'a2f58e0e-c558-4282-80ff-1d8088c5f250') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('崩', 'N2', 'crumble, die, demolish, level', 'Băng', ARRAY['ホウ'], ARRAY['くず.れる','-くず.れ','くず.す'], 11, 'a2f58e0e-c558-4282-80ff-1d8088c5f250') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('抱', 'N3', 'embrace, hug, hold in arms', 'Bão', ARRAY['ホウ'], ARRAY['だ.く','いだ.く','かか.える'], 8, 'eaca9807-b2da-4d99-8585-13d429ea249d') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('放', 'N3', 'set free, release, fire, shoot, emit, banish, liberate', 'Phóng, Phỏng', ARRAY['ホウ'], ARRAY['はな.す','-っぱな.し','はな.つ','はな.れる','こ.く','ほう.る'], 8, 'b62aa3f5-bcc4-4c24-944d-b02f3fbb5499') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('方', 'N4', 'direction, person, alternative', 'Phương', ARRAY['ホウ'], ARRAY['かた','-かた','-がた'], 4, '816fcd71-fef2-4808-a4c6-60bc531d2d01') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('朋', 'N2', 'companion, friend', 'Bằng', ARRAY['ホウ'], ARRAY['とも'], 8, 'a55eee17-b099-4cb3-810a-0a4c9dbc7ea9') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('法', 'N3', 'method, law, rule, principle, model, system', 'Pháp', ARRAY['ホウ','ハッ','ホッ','フラン'], ARRAY['のり'], 8, '10673667-6c56-413d-bbd5-a48794fb7725') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('泡', 'N2', 'bubbles, foam, suds, froth', 'Phao, Bào', ARRAY['ホウ'], ARRAY['あわ'], 8, '10673667-6c56-413d-bbd5-a48794fb7725') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('砲', 'N2', 'cannon, gun', 'Pháo', ARRAY['ホウ'], NULL, 10, 'c3bb7570-e8b9-49cc-bf56-90e74165d503') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('縫', 'N2', 'sew, stitch, embroider', 'Phùng, Phúng', ARRAY['ホウ'], ARRAY['ぬ.う'], 16, '2d4eb76f-4fae-4d05-855c-2520845188ed') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('胞', 'N2', 'placenta, sac, sheath', 'Bào', ARRAY['ホウ'], NULL, 9, '71cc2465-f238-4f52-b9e3-39f8f95caaba') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('芳', 'N2', 'perfume, balmy, favorable, fragrant', 'Phương', ARRAY['ホウ'], ARRAY['かんば.しい'], 7, '25c57eec-88fa-4e6e-95a2-9ba83b5f4246') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('萌', 'N2', 'show symptoms of, sprout, bud, malt', 'Manh', ARRAY['ホウ'], ARRAY['も.える','きざ.す','めばえ','きざ.し'], 11, '25c57eec-88fa-4e6e-95a2-9ba83b5f4246') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('褒', 'N2', 'praise, extol', 'Bao', ARRAY['ホウ'], ARRAY['ほ.める'], 15, '9c5b95cd-6590-4a03-8c61-a68c80da3c8c') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('訪', 'N3', 'call on, visit, look up, offer sympathy', 'Phóng, Phỏng', ARRAY['ホウ'], ARRAY['おとず.れる','たず.ねる','と.う'], 11, '7fd47228-ad16-439a-8685-ad9cacdeb95e') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('豊', 'N3', 'bountiful, excellent, rich', 'Lễ, Phong', ARRAY['ホウ','ブ'], ARRAY['ゆた.か','とよ'], 13, '154eaf84-5859-4d98-a4d3-d45def8b24ac') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('邦', 'N2', 'home country, country, Japan', 'Bang', ARRAY['ホウ'], ARRAY['くに'], 7, '57b67155-4755-4cbd-8c34-1edf3d4cb815') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('飽', 'N2', 'sated, tired of, bored, satiate', 'Bão', ARRAY['ホウ'], ARRAY['あ.きる','あ.かす','あ.く'], 13, '575f81b8-d9ab-421e-ac61-7d25cf8751da') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('鳳', 'N2', 'male mythical bird', 'Phượng', ARRAY['ホウ','フウ'], NULL, 14, 'a5d543cc-57c8-4627-8531-64c511b7bc11') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('鵬', 'N2', 'phoenix', 'Bằng', ARRAY['ホウ'], ARRAY['おおとり'], 19, 'a5d543cc-57c8-4627-8531-64c511b7bc11') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('乏', 'N2', 'destitution, scarce, limited', 'Phạp', ARRAY['ボウ'], ARRAY['とぼ.しい','とも.しい'], 4, '34034105-e6f4-4bfd-b23a-7f4cb3d93010') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('亡', 'N3', 'deceased, the late, dying, perish', 'Vong, Vô', ARRAY['ボウ','モウ'], ARRAY['な.い','な.き-','ほろ.びる','ほろ.ぶ','ほろ.ぼす'], 3, '78591721-155a-4c67-999d-a331bb59ebb5') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('傍', 'N2', 'bystander, side, besides, while, nearby, third person', 'Bàng, Bạng', ARRAY['ボウ'], ARRAY['かたわ.ら','わき','おか-','はた','そば'], 12, '78419994-196d-4445-8165-a6029d33a0ff') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('剖', 'N2', 'divide', 'Phẩu', ARRAY['ボウ'], NULL, 10, 'bc6a1cef-e769-454c-a64f-910a5e1b5d74') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('坊', 'N3', 'boy, priest''s residence, priest', 'Phường', ARRAY['ボウ','ボッ'], NULL, 7, '2fd61440-db3f-4cd5-8101-9e74019df262') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('妨', 'N2', 'disturb, prevent, hamper, obstruct', 'Phương, Phướng', ARRAY['ボウ'], ARRAY['さまた.げる'], 7, '2b2beef1-465e-418b-9883-672cd0e0a712') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('帽', 'N3', 'cap, headgear', 'Mạo', ARRAY['ボウ','モウ'], ARRAY['ずきん','おお.う'], 12, 'c3c77b72-afa6-4b3f-acd2-b9a7f991cf53') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('忘', 'N3', 'forget', 'Vong', ARRAY['ボウ'], ARRAY['わす.れる'], 7, '1659d447-8145-42d3-8262-2d05cea9f834') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('忙', 'N3', 'busy, occupied, restless', 'Mang', ARRAY['ボウ','モウ'], ARRAY['いそが.しい','せわ.しい','おそ.れる','うれえるさま'], 6, '1659d447-8145-42d3-8262-2d05cea9f834') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('房', 'N2', 'tassel, tuft, fringe, bunch, lock (hair), segment (orange), house, room', 'Phòng, Bàng', ARRAY['ボウ'], ARRAY['ふさ'], 8, '3df4fb00-e325-4d60-b6e2-dac33518caca') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('暴', 'N3', 'outburst, rave, fret, force, violence, cruelty, outrage', 'Bạo, Bộc', ARRAY['ボウ','バク'], ARRAY['あば.く','あば.れる'], 15, 'b8af1855-8d69-4238-bc65-6925c1c993cd') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('望', 'N3', 'ambition, full moon, hope, desire, aspire to, expect', 'Vọng', ARRAY['ボウ','モウ'], ARRAY['のぞ.む','もち'], 11, 'a55eee17-b099-4cb3-810a-0a4c9dbc7ea9') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('某', 'N2', 'so-and-so, one, a certain, that person', 'Mỗ', ARRAY['ボウ'], ARRAY['それがし','なにがし'], 9, '80c53d4a-31b5-442f-be48-5d1b64972fae') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('棒', 'N3', 'rod, stick, cane, pole, club, line', 'Bổng', ARRAY['ボウ'], NULL, 12, '80c53d4a-31b5-442f-be48-5d1b64972fae') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('冒', 'N2', 'risk, face, defy, dare, damage, assume (a name)', 'Mạo, Mặc', ARRAY['ボウ'], ARRAY['おか.す'], 9, '606b6268-d8c0-4e50-98b6-aebb5465850d') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('紡', 'N2', 'spinning', 'Phưởng', ARRAY['ボウ'], ARRAY['つむ.ぐ'], 10, '2d4eb76f-4fae-4d05-855c-2520845188ed') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('肪', 'N2', 'obese, fat', 'Phương', ARRAY['ボウ'], NULL, 8, '71cc2465-f238-4f52-b9e3-39f8f95caaba') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('膨', 'N2', 'swell, get fat, thick', 'Bành', ARRAY['ボウ'], ARRAY['ふく.らむ','ふく.れる'], 16, '71cc2465-f238-4f52-b9e3-39f8f95caaba') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('謀', 'N2', 'conspire, cheat, impose on, plan, devise, scheme, have in mind, deceive', 'Mưu', ARRAY['ボウ','ム'], ARRAY['はか.る','たばか.る','はかりごと'], 16, '7fd47228-ad16-439a-8685-ad9cacdeb95e') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('貿', 'N3', 'trade, exchange', 'Mậu', ARRAY['ボウ'], NULL, 12, '0cb16105-d4c3-4534-9e4e-0eecbad15787') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('防', 'N3', 'ward off, defend, protect, resist', 'Phòng', ARRAY['ボウ'], ARRAY['ふせ.ぐ'], 7, 'b85628b0-3f6a-420a-91c7-0cfbd5055459') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('北', 'N5', 'north', 'Bắc', ARRAY['ホク'], ARRAY['きた'], 5, 'bb9cb1c8-f409-4a7c-9740-15dd051b40b9') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('僕', 'N2', 'me, I (male), servant, manservant', 'Bộc', ARRAY['ボク'], ARRAY['しもべ'], 14, '78419994-196d-4445-8165-a6029d33a0ff') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('墨', 'N2', 'black ink, India ink, ink stick, Mexico', 'Mặc', ARRAY['ボク'], ARRAY['すみ'], 14, '2fd61440-db3f-4cd5-8101-9e74019df262') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('撲', 'N2', 'slap, strike, hit, beat, tell, speak', 'Phác, Bạc', ARRAY['ボク'], NULL, 15, 'eaca9807-b2da-4d99-8585-13d429ea249d') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('朴', 'N2', 'crude, simple, plain, docile', 'Phác', ARRAY['ボク'], ARRAY['ほう','ほお','えのき'], 6, '80c53d4a-31b5-442f-be48-5d1b64972fae') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('牧', 'N2', 'breed, care for, shepherd, feed, pasture', 'Mục', ARRAY['ボク'], ARRAY['まき'], 8, 'a55bbf5a-1ffc-48ef-909c-6b366c2d8398') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('睦', 'N2', 'intimate, friendly, harmonious', 'Mục', ARRAY['ボク','モク'], ARRAY['むつ.まじい','むつ.む','むつ.ぶ'], 13, 'eeeb0778-60ee-4882-b7a5-d6e12279fade') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('没', 'N2', 'drown, sink, hide, fall into, disappear, die', 'Một, Mịt, Mốt', ARRAY['ボツ','モツ'], ARRAY['おぼ.れる','しず.む','ない'], 7, '10673667-6c56-413d-bbd5-a48794fb7725') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('堀', 'N2', 'ditch, moat, canal', 'Quật', ARRAY['クツ'], ARRAY['ほり'], 11, '2fd61440-db3f-4cd5-8101-9e74019df262') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('奔', 'N2', 'run, bustle', 'Bôn', ARRAY['ホン'], ARRAY['はし.る'], 8, '457c9d33-f2d9-4f61-bca8-910ce7ade194') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('本', 'N5', 'book, present, main, origin, true, real, counter for long cylindrical things', 'Bổn, Bản', ARRAY['ホン'], ARRAY['もと'], 5, '80c53d4a-31b5-442f-be48-5d1b64972fae') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('翻', 'N2', 'flip, turn over, wave, flutter, change (mind)', 'Phiên', ARRAY['ホン','ハン'], ARRAY['ひるがえ.る','ひるがえ.す'], 18, '2290d53b-eec2-4251-8bca-1ceb2407f15c') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('凡', 'N2', 'commonplace, ordinary, mediocre', 'Phàm', ARRAY['ボン','ハン'], ARRAY['およ.そ','おうよ.そ','すべ.て'], 3, '57745b80-a744-46c1-af52-58f66dcad3c1') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('盆', 'N2', 'basin, lantern festival, tray', 'Bồn', ARRAY['ボン'], NULL, 9, '12bd4f5a-a4fb-451b-b25d-418406c683fa') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('摩', 'N2', 'chafe, rub, polish, grind, scrape', 'Ma', ARRAY['マ'], ARRAY['ま.する','さす.る','す.る'], 15, 'eaca9807-b2da-4d99-8585-13d429ea249d') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('磨', 'N3', 'grind, polish, scour, improve, brush (teeth)', 'Ma, Má', ARRAY['マ'], ARRAY['みが.く','す.る'], 16, 'c3bb7570-e8b9-49cc-bf56-90e74165d503') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('魔', 'N2', 'witch, demon, evil spirit', 'Ma', ARRAY['マ'], NULL, 21, '768dd18f-b077-4421-bb5c-32535db0cd4b') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('麻', 'N2', 'hemp, flax, numb', 'Ma', ARRAY['マ','マア'], ARRAY['あさ'], 11, '27c1a497-3ce1-4a41-a0ee-c7ebd0f5a560') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('埋', 'N3', 'bury, be filled up, embedded', 'Mai', ARRAY['マイ'], ARRAY['う.める','う.まる','う.もれる','うず.める','うず.まる','い.ける'], 10, '2fd61440-db3f-4cd5-8101-9e74019df262') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('妹', 'N4', 'younger sister', 'Muội', ARRAY['マイ'], ARRAY['いもうと'], 8, '2b2beef1-465e-418b-9883-672cd0e0a712') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('枚', 'N3', 'sheet of..., counter for flat thin objects or sheets', 'Mai', ARRAY['マイ','バイ'], NULL, 8, '80c53d4a-31b5-442f-be48-5d1b64972fae') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('毎', 'N5', 'every', 'Mỗi', ARRAY['マイ'], ARRAY['ごと','-ごと.に'], 6, '27cdde1c-51a8-495f-ba1c-643efa2b39ff') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('槙', 'N2', 'twig, ornamental evergreen', 'Chẩn, Điên', ARRAY['テン','シン'], ARRAY['まき','こずえ'], 14, '80c53d4a-31b5-442f-be48-5d1b64972fae') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('幕', 'N2', 'curtain, bunting, act of play', 'Mạc, Mộ, Mán', ARRAY['マク','バク'], ARRAY['とばり'], 13, 'c3c77b72-afa6-4b3f-acd2-b9a7f991cf53') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('膜', 'N2', 'membrane', 'Mô', ARRAY['マク'], NULL, 14, '71cc2465-f238-4f52-b9e3-39f8f95caaba') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('柾', 'N2', 'straight grain, spindle tree, (kokuji)', 'Cữu, Chanh', NULL, ARRAY['まさ','まさめ','まさき'], 9, '80c53d4a-31b5-442f-be48-5d1b64972fae') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('亦', 'N2', 'also, again', 'Diệc', ARRAY['エキ','ヤク'], ARRAY['また'], 6, '78591721-155a-4c67-999d-a331bb59ebb5') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('又', 'N2', 'or again, furthermore, on the other hand', 'Hựu', ARRAY['ユウ'], ARRAY['また','また-','また.の-'], 2, '6068ca21-fb74-4144-9b3d-7b93749eccdd') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('抹', 'N2', 'rub, paint, erase', 'Mạt', ARRAY['マツ'], NULL, 8, 'eaca9807-b2da-4d99-8585-13d429ea249d') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('末', 'N3', 'end, close, tip, powder, posterity', 'Mạt', ARRAY['マツ','バツ'], ARRAY['すえ','うら','うれ'], 5, '80c53d4a-31b5-442f-be48-5d1b64972fae') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('繭', 'N2', 'cocoon', 'Kiển', ARRAY['ケン'], ARRAY['まゆ','きぬ'], 18, '2d4eb76f-4fae-4d05-855c-2520845188ed') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('麿', 'N2', 'I, you, (kokuji)', 'Ma', NULL, ARRAY['まろ'], 18, '27c1a497-3ce1-4a41-a0ee-c7ebd0f5a560') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('万', 'N5', 'ten thousand, 10,000', 'Vạn, Mặc', ARRAY['マン','バン'], ARRAY['よろず'], 3, '12f0d122-51f5-4c55-8a67-d3fc53818027') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('慢', 'N2', 'ridicule, laziness', 'Mạn', ARRAY['マン'], NULL, 14, '1659d447-8145-42d3-8262-2d05cea9f834') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('満', 'N3', 'full, fullness, enough, satisfy', 'Mãn', ARRAY['マン','バン'], ARRAY['み.ちる','み.つ','み.たす'], 12, '10673667-6c56-413d-bbd5-a48794fb7725') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('漫', 'N2', 'cartoon, involuntarily, unrestrained, in spite of oneself, corrupt', 'Mạn, Man', ARRAY['マン'], ARRAY['みだり.に','そぞ.ろ'], 14, '10673667-6c56-413d-bbd5-a48794fb7725') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('味', 'N4', 'flavor, taste', 'Vị', ARRAY['ミ'], ARRAY['あじ','あじ.わう'], 8, 'a54e08f0-b1f4-49b0-bdcd-1fcfab9f5eb7') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('未', 'N3', 'un-, not yet, hitherto, still, even now, sign of the ram, 1-3PM, eighth sign of Chinese zodiac', 'Vị, Mùi', ARRAY['ミ','ビ'], ARRAY['いま.だ','ま.だ','ひつじ'], 5, '80c53d4a-31b5-442f-be48-5d1b64972fae') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('魅', 'N2', 'fascination, charm, bewitch', 'Mị', ARRAY['ミ'], NULL, 15, '768dd18f-b077-4421-bb5c-32535db0cd4b') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('巳', 'N2', 'sign of the snake or serpent, 9-11AM, sixth sign of Chinese zodiac', 'Tị', ARRAY['シ'], ARRAY['み'], 3, 'afc445ef-54dd-45a9-86b5-d01fbec09f75') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('岬', 'N2', 'headland, cape, spit, promontory', 'Giáp', ARRAY['コウ'], ARRAY['みさき'], 8, 'a2f58e0e-c558-4282-80ff-1d8088c5f250') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('密', 'N2', 'secrecy, density (pop), minuteness, carefulness', 'Mật', ARRAY['ミツ'], ARRAY['ひそ.か'], 11, '66a403fd-ce7c-4ecc-820d-3f1718e79119') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('稔', 'N2', 'harvest, ripen', 'Nhẫm, Nẫm', ARRAY['ネン','ジン','ニン'], ARRAY['みの.る','みのり'], 13, '18d824dd-4b06-48c0-9e40-ff5132c75dc9') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('脈', 'N2', 'vein, pulse, hope', 'Mạch', ARRAY['ミャク'], ARRAY['すじ'], 10, '71cc2465-f238-4f52-b9e3-39f8f95caaba') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('妙', 'N2', 'exquisite, strange, queer, mystery, miracle, excellent, delicate, charming', 'Diệu', ARRAY['ミョウ','ビョウ'], ARRAY['たえ'], 7, '2b2beef1-465e-418b-9883-672cd0e0a712') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('民', 'N4', 'people, nation, subjects', 'Dân', ARRAY['ミン'], ARRAY['たみ'], 5, '6165d24e-8a71-425f-b631-61bbede22729') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('眠', 'N3', 'sleep, die, sleepy', 'Miên', ARRAY['ミン'], ARRAY['ねむ.る','ねむ.い'], 10, 'eeeb0778-60ee-4882-b7a5-d6e12279fade') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('務', 'N3', 'task, duties', 'Vụ', ARRAY['ム'], ARRAY['つと.める'], 11, 'd9107ec4-ea5d-4a21-bacd-ffca462b29dd') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('夢', 'N3', 'dream, vision, illusion', 'Mộng, Mông', ARRAY['ム','ボウ'], ARRAY['ゆめ','ゆめ.みる','くら.い'], 13, '61ef9463-b171-47ec-b077-20f2dcd774fc') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('無', 'N3', 'nothingness, none, ain''t, nothing, nil, not', 'Vô, Mô', ARRAY['ム','ブ'], ARRAY['な.い'], 12, '831cfc6a-79c9-4ebb-a4cc-ba737a36caf7') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('矛', 'N2', 'halberd, arms, festival float', 'Mâu', ARRAY['ム','ボウ'], ARRAY['ほこ'], 5, '2bd57bae-30a0-4075-8c2d-2c5abeee4cfa') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('霧', 'N2', 'fog, mist', 'Vụ', ARRAY['ム','ボウ','ブ'], ARRAY['きり'], 19, '491a9ec1-aebb-486b-9e2d-050c80063a8f') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('椋', 'N2', 'type of deciduous tree, grey starling', 'Lương', ARRAY['リョウ'], ARRAY['むく'], 12, '80c53d4a-31b5-442f-be48-5d1b64972fae') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('婿', 'N2', 'bridegroom, son-in-law', 'Tế, Rể', ARRAY['セイ'], ARRAY['むこ'], 12, '2b2beef1-465e-418b-9883-672cd0e0a712') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('娘', 'N3', 'daughter, girl', 'Nương', ARRAY['ジョウ'], ARRAY['むすめ','こ'], 10, '2b2beef1-465e-418b-9883-672cd0e0a712') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('名', 'N5', 'name, noted, distinguished, reputation', 'Danh', ARRAY['メイ','ミョウ'], ARRAY['な','-な'], 6, 'a54e08f0-b1f4-49b0-bdcd-1fcfab9f5eb7') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('命', 'N3', 'fate, command, decree, destiny, life, appoint', 'Mệnh', ARRAY['メイ','ミョウ'], ARRAY['いのち'], 8, 'a54e08f0-b1f4-49b0-bdcd-1fcfab9f5eb7') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('明', 'N4', 'bright, light', 'Minh', ARRAY['メイ','ミョウ','ミン'], ARRAY['あ.かり','あか.るい','あか.るむ','あか.らむ','あき.らか','あ.ける','-あ.け','あ.く','あ.くる','あ.かす'], 8, 'b8af1855-8d69-4238-bc65-6925c1c993cd') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('盟', 'N2', 'alliance, oath', 'Minh', ARRAY['メイ'], NULL, 13, '12bd4f5a-a4fb-451b-b25d-418406c683fa') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('迷', 'N3', 'astray, be perplexed, in doubt, lost, err, illusion', 'Mê', ARRAY['メイ'], ARRAY['まよ.う'], 9, '371180fe-c78a-477d-b628-86c3e88e03f1') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('銘', 'N2', 'inscription, signature (of artisan)', 'Minh', ARRAY['メイ'], NULL, 14, 'c3b48b38-6414-47f2-a7ac-d72a85c0e35a') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('鳴', 'N3', 'chirp, cry, bark, sound, ring, echo, honk', 'Minh', ARRAY['メイ'], ARRAY['な.く','な.る','な.らす'], 14, 'a5d543cc-57c8-4627-8531-64c511b7bc11') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('滅', 'N2', 'destroy, ruin, overthrow, perish', 'Diệt', ARRAY['メツ'], ARRAY['ほろ.びる','ほろ.ぶ','ほろ.ぼす'], 13, '10673667-6c56-413d-bbd5-a48794fb7725') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('免', 'N2', 'excuse, dismissal', 'Miễn, Vấn', ARRAY['メン'], ARRAY['まぬか.れる','まぬが.れる'], 8, '88165dcc-9e82-4204-80b3-e041b6649197') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('綿', 'N3', 'cotton', 'Miên', ARRAY['メン'], ARRAY['わた'], 14, '2d4eb76f-4fae-4d05-855c-2520845188ed') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('面', 'N3', 'mask, face, features, surface', 'Diện', ARRAY['メン','ベン'], ARRAY['おも','おもて','つら'], 9, '6f0dc78a-43d6-4dbb-8d76-10f63d75639f') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('模', 'N2', 'imitation, copy, mock', 'Mô', ARRAY['モ','ボ'], NULL, 14, '80c53d4a-31b5-442f-be48-5d1b64972fae') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('茂', 'N2', 'overgrown, grow thick, be luxuriant', 'Mậu', ARRAY['モ'], ARRAY['しげ.る'], 8, '25c57eec-88fa-4e6e-95a2-9ba83b5f4246') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('妄', 'N2', 'delusion, unnecessarily, without authority, reckless', 'Vọng', ARRAY['モウ','ボウ'], ARRAY['みだ.りに'], 6, '2b2beef1-465e-418b-9883-672cd0e0a712') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('孟', 'N2', 'chief, beginning', 'Mạnh, Mãng', ARRAY['モウ','ボウ','ミョウ'], ARRAY['かしら'], 8, '7c3ff4e1-b8e9-4c25-ba10-0fbf8198a71d') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('毛', 'N3', 'fur, hair, feather, down', 'Mao, Mô', ARRAY['モウ'], ARRAY['け'], 4, 'b3a272f8-db49-4418-a21f-2bb5442eebf2') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('猛', 'N2', 'fierce, rave, rush, become furious, wildness, strength', 'Mãnh', ARRAY['モウ'], NULL, 11, '060e9144-2828-4302-b284-f6ac8ea6ae51') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('盲', 'N2', 'blind, blind man, ignoramus', 'Manh', ARRAY['モウ'], ARRAY['めくら'], 8, 'eeeb0778-60ee-4882-b7a5-d6e12279fade') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('網', 'N2', 'netting, network', 'Võng', ARRAY['モウ'], ARRAY['あみ'], 14, '2d4eb76f-4fae-4d05-855c-2520845188ed') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('耗', 'N2', 'decrease', 'Háo, Mạo, Mao', ARRAY['モウ','コウ'], NULL, 10, 'bdb2e1ab-be07-4f06-85b2-9de88b38926b') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('木', 'N5', 'tree, wood', 'Mộc', ARRAY['ボク','モク'], ARRAY['き','こ-'], 4, '80c53d4a-31b5-442f-be48-5d1b64972fae') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('黙', 'N2', 'silence, become silent, stop speaking, leave as is', 'Mặc, Mắc', ARRAY['モク','ボク'], ARRAY['だま.る','もだ.す'], 15, '59a02dd4-c1d1-4447-8c1a-a3f367d22dc3') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('目', 'N5', 'eye, class, look, insight, experience, care, favor', 'Mục', ARRAY['モク','ボク'], ARRAY['め','-め','ま-'], 5, 'eeeb0778-60ee-4882-b7a5-d6e12279fade') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('戻', 'N3', 're-, return, revert, resume, restore, go backwards', 'Lệ', ARRAY['レイ'], ARRAY['もど.す','もど.る'], 7, '3df4fb00-e325-4d60-b6e2-dac33518caca') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('問', 'N4', 'question, ask, problem', 'Vấn', ARRAY['モン'], ARRAY['と.う','と.い','とん'], 11, 'a54e08f0-b1f4-49b0-bdcd-1fcfab9f5eb7') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('紋', 'N2', 'family crest, figures', 'Văn', ARRAY['モン'], NULL, 10, '2d4eb76f-4fae-4d05-855c-2520845188ed') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('門', 'N4', 'gate, counter for cannons', 'Môn', ARRAY['モン'], ARRAY['かど','と'], 8, 'fc1908d4-7e1d-4e55-b1df-72e159f91868') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('匁', 'N2', 'monme, 3.75 grams, (kokuji)', 'Chỉ', NULL, ARRAY['もんめ','め'], 4, '15e2044a-b802-4011-9d93-2da1db623ea2') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('也', 'N2', 'to be (classical)', 'Dã', ARRAY['ヤ','エ'], ARRAY['なり','か','また'], 3, '4721cf9b-ec7a-4029-8f61-3f80cc4d64fb') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('冶', 'N2', 'melting, smelting', 'Dã', ARRAY['ヤ'], ARRAY['い.る'], 7, '23a10182-2ed1-47fd-a83e-9381dcd8dfad') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('夜', 'N4', 'night, evening', 'Dạ', ARRAY['ヤ'], ARRAY['よ','よる'], 8, '61ef9463-b171-47ec-b077-20f2dcd774fc') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('耶', 'N2', 'question mark', 'Da', ARRAY['ヤ','ジャ'], ARRAY['か'], 9, '161e8737-630f-4a34-a6b4-6a75a2f52fbc') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('野', 'N4', 'plains, field, rustic, civilian life', 'Dã', ARRAY['ヤ','ショ'], ARRAY['の','の-'], 11, '7b994519-90ea-4c97-8378-fa2add6e92fc') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('弥', 'N2', 'all the more, increasingly', 'Di', ARRAY['ミ','ビ'], ARRAY['や','いや','いよ.いよ','わた.る'], 8, 'ad6d3726-634b-40d9-bc5a-538b879c95d5') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('矢', 'N2', 'dart, arrow', 'Thỉ', ARRAY['シ'], ARRAY['や'], 5, 'b7deea42-61dd-4e35-a44c-25dd634fd02a') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('厄', 'N2', 'unlucky, misfortune, bad luck, disaster', 'Ách, Ngỏa', ARRAY['ヤク'], NULL, 4, '06e286c9-3801-4780-a073-6568f4c0dc2d') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('役', 'N3', 'duty, war, campaign, drafted labor, office, service, role', 'Dịch', ARRAY['ヤク','エキ'], NULL, 7, '5a7d3fce-7600-45fd-91a8-2af832381ee4') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('約', 'N3', 'promise, approximately, shrink', 'Ước', ARRAY['ヤク'], ARRAY['つづ.まる','つづ.める','つづま.やか'], 9, '2d4eb76f-4fae-4d05-855c-2520845188ed') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('薬', 'N4', 'medicine, chemical, enamel, gunpowder, benefit', 'Dược, Ước', ARRAY['ヤク'], ARRAY['くすり'], 16, '25c57eec-88fa-4e6e-95a2-9ba83b5f4246') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('訳', 'N2', 'translate, reason, circumstance, case', 'Dịch', ARRAY['ヤク'], ARRAY['わけ'], 11, '7fd47228-ad16-439a-8685-ad9cacdeb95e') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('躍', 'N2', 'leap, dance, skip', 'Dược', ARRAY['ヤク'], ARRAY['おど.る'], 21, 'ad5f2a38-b774-4a9b-b3ff-2b2cb029cc51') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('靖', 'N2', 'peaceful', 'Tĩnh', ARRAY['セイ','ジョウ'], ARRAY['やす.んじる'], 13, '3f82998e-54df-4e1b-8468-eb35d0405533') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('柳', 'N2', 'willow', 'Liễu', ARRAY['リュウ'], ARRAY['やなぎ'], 9, '80c53d4a-31b5-442f-be48-5d1b64972fae') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('愉', 'N2', 'pleasure, happy, rejoice', 'Du, Thâu', ARRAY['ユ'], ARRAY['たの.しい','たの.しむ'], 12, '1659d447-8145-42d3-8262-2d05cea9f834') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('油', 'N3', 'oil, fat', 'Du', ARRAY['ユ','ユウ'], ARRAY['あぶら'], 8, '10673667-6c56-413d-bbd5-a48794fb7725') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('癒', 'N2', 'healing, cure, quench (thirst), wreak', 'Dũ', ARRAY['ユ'], ARRAY['い.える','いや.す','い.やす'], 18, '5688d6a7-12f3-4090-999b-bee052200ce3') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('諭', 'N2', 'rebuke, admonish, charge, warn, persuade', 'Dụ', ARRAY['ユ'], ARRAY['さと.す'], 16, '7fd47228-ad16-439a-8685-ad9cacdeb95e') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('輸', 'N3', 'transport, send, be inferior', 'Thâu, Thú', ARRAY['ユ','シュ'], NULL, 16, '869f4859-e3d9-4a6a-8839-d1bf7a715a34') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('唯', 'N2', 'solely, only, merely, simply', 'Duy, Dụy', ARRAY['ユイ','イ'], ARRAY['ただ'], 11, 'a54e08f0-b1f4-49b0-bdcd-1fcfab9f5eb7') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('佑', 'N2', 'help, assist', 'Hữu', ARRAY['ユウ','ウ'], ARRAY['たす.ける'], 7, '78419994-196d-4445-8165-a6029d33a0ff') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('優', 'N3', 'tenderness, excel, surpass, actor, superiority, gentleness', 'Ưu', ARRAY['ユウ','ウ'], ARRAY['やさ.しい','すぐ.れる','まさ.る'], 17, '78419994-196d-4445-8165-a6029d33a0ff') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('勇', 'N3', 'courage, cheer up, be in high spirits, bravery, heroism', 'Dũng', ARRAY['ユウ'], ARRAY['いさ.む'], 9, 'd9107ec4-ea5d-4a21-bacd-ffca462b29dd') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('友', 'N5', 'friend', 'Hữu', ARRAY['ユウ'], ARRAY['とも'], 4, '6068ca21-fb74-4144-9b3d-7b93749eccdd') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('宥', 'N2', 'soothe, calm, pacify', 'Hựu', ARRAY['ユウ'], ARRAY['なだ.める','ゆる.す'], 9, '66a403fd-ce7c-4ecc-820d-3f1718e79119') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('幽', 'N2', 'seclude, confine to a room, deep, profound, secluded, faint, dark, tranquil, calm', 'U', ARRAY['ユウ'], ARRAY['ふか.い','かす.か','くら.い','しろ.い'], 9, '855bcd0d-8692-4d72-8952-d16179ecf58f') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('悠', 'N2', 'permanence, distant, long time, leisure', 'Du', ARRAY['ユウ'], NULL, 11, '1659d447-8145-42d3-8262-2d05cea9f834') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('憂', 'N2', 'melancholy, grieve, lament, be anxious, sad, unhappy', 'Ưu', ARRAY['ユウ'], ARRAY['うれ.える','うれ.い','う.い','う.き'], 15, '1659d447-8145-42d3-8262-2d05cea9f834') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('有', 'N4', 'possess, have, exist, happen, occur, approx', 'Hữu, Dựu', ARRAY['ユウ','ウ'], ARRAY['あ.る'], 6, 'a55eee17-b099-4cb3-810a-0a4c9dbc7ea9') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('柚', 'N2', 'citron', 'Dữu, Trục', ARRAY['ユ','ユウ','ジク'], ARRAY['ゆず'], 9, '80c53d4a-31b5-442f-be48-5d1b64972fae') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('湧', 'N2', 'boil, ferment, seethe, uproar, breed', 'Dũng', ARRAY['ユウ','ヨウ','ユ'], ARRAY['わ.く'], 12, '10673667-6c56-413d-bbd5-a48794fb7725') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('猶', 'N2', 'furthermore, still, yet', 'Do, Dứu', ARRAY['ユウ','ユ'], ARRAY['なお'], 12, '060e9144-2828-4302-b284-f6ac8ea6ae51') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('由', 'N3', 'wherefore, a reason', 'Do', ARRAY['ユ','ユウ','ユイ'], ARRAY['よし','よ.る'], 5, '43d68113-71ea-45ae-9926-6ea616e69ae2') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('祐', 'N2', 'help', 'Hữu', ARRAY['ユウ','ウ'], ARRAY['たす.ける'], 9, 'aa655283-0fb9-4ae0-a339-aa1437f00ad1') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('裕', 'N2', 'abundant, rich, fertile', 'Dụ', ARRAY['ユウ'], NULL, 12, '9c5b95cd-6590-4a03-8c61-a68c80da3c8c') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('誘', 'N2', 'entice, lead, tempt, invite, ask, call for, seduce, allure', 'Dụ', ARRAY['ユウ'], ARRAY['さそ.う','いざな.う'], 14, '7fd47228-ad16-439a-8685-ad9cacdeb95e') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('遊', 'N3', 'play', 'Du', ARRAY['ユウ','ユ'], ARRAY['あそ.ぶ','あそ.ばす'], 12, '371180fe-c78a-477d-b628-86c3e88e03f1') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('邑', 'N2', 'village, rural community, right village radical (no. 163)', 'Ấp', ARRAY['ユウ'], ARRAY['むら'], 7, '57b67155-4755-4cbd-8c34-1edf3d4cb815') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('郵', 'N3', 'mail, stagecoach stop', 'Bưu', ARRAY['ユウ'], NULL, 11, '57b67155-4755-4cbd-8c34-1edf3d4cb815') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('雄', 'N2', 'masculine, male, hero, leader, superiority, excellence', 'Hùng', ARRAY['ユウ'], ARRAY['お-','おす','おん'], 12, 'e9426c63-0e1d-4399-a59e-ce2e851fa615') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('融', 'N2', 'dissolve, melt', 'Dung, Dong', ARRAY['ユウ'], ARRAY['と.ける','と.かす'], 16, '2b1d8e20-f306-465c-b245-cb2dd48f3615') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('夕', 'N4', 'evening', 'Tịch', ARRAY['セキ'], ARRAY['ゆう'], 3, '61ef9463-b171-47ec-b077-20f2dcd774fc') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('予', 'N3', 'beforehand, previous, myself, I', 'Dư, Dữ', ARRAY['ヨ','シャ'], ARRAY['あらかじ.め'], 4, '9df04e71-70fe-4093-bc6b-bd76d3d32310') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('余', 'N3', 'too much, myself, surplus, other, remainder', 'Dư', ARRAY['ヨ'], ARRAY['あま.る','あま.り','あま.す','あんま.り'], 7, '78419994-196d-4445-8165-a6029d33a0ff') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('与', 'N3', 'bestow, participate in, give, award, impart, provide, cause, gift, godsend', 'Dữ', ARRAY['ヨ'], ARRAY['あた.える','あずか.る','くみ.する','ともに'], 3, '12f0d122-51f5-4c55-8a67-d3fc53818027') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('誉', 'N2', 'reputation, praise, honor, glory', 'Dự', ARRAY['ヨ'], ARRAY['ほま.れ','ほ.める'], 13, '7fd47228-ad16-439a-8685-ad9cacdeb95e') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('預', 'N3', 'deposit, custody, leave with, entrust to', 'Dự', ARRAY['ヨ'], ARRAY['あず.ける','あず.かる'], 13, 'be4fe89f-bae1-4238-8aad-4789348c0e13') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('幼', 'N3', 'infancy, childhood', 'Ấu', ARRAY['ヨウ'], ARRAY['おさな.い'], 5, '855bcd0d-8692-4d72-8952-d16179ecf58f') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('容', 'N3', 'contain, form, looks', 'Dong', ARRAY['ヨウ'], ARRAY['い.れる'], 10, '66a403fd-ce7c-4ecc-820d-3f1718e79119') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('庸', 'N2', 'commonplace, ordinary, employment', 'Dong', ARRAY['ヨウ'], NULL, 11, '2417a6bf-65df-4c8a-a8d0-fba42aeb96ed') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('揚', 'N2', 'raise, elevate, hoist, praise, extol, fry in deep fat', 'Dương', ARRAY['ヨウ'], ARRAY['あ.げる','-あ.げ','あ.がる'], 12, 'eaca9807-b2da-4d99-8585-13d429ea249d') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('揺', 'N2', 'swing, shake, sway, rock, tremble, vibrate', 'Dao, Đao, Diêu', ARRAY['ヨウ'], ARRAY['ゆ.れる','ゆ.る','ゆ.らぐ','ゆ.るぐ','ゆ.する','ゆ.さぶる','ゆ.すぶる','うご.く'], 12, 'eaca9807-b2da-4d99-8585-13d429ea249d') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('擁', 'N2', 'hug, embrace, possess, protect, lead', 'Ủng, Ung', ARRAY['ヨウ'], NULL, 16, 'eaca9807-b2da-4d99-8585-13d429ea249d') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('曜', 'N4', 'weekday', 'Diệu', ARRAY['ヨウ'], NULL, 18, 'b8af1855-8d69-4238-bc65-6925c1c993cd') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('楊', 'N2', 'willow', 'Dương', ARRAY['ヨウ'], ARRAY['やなぎ'], 13, '80c53d4a-31b5-442f-be48-5d1b64972fae') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('様', 'N3', 'Esq., way, manner, situation, polite suffix', 'Dạng', ARRAY['ヨウ','ショウ'], ARRAY['さま','さん'], 14, '80c53d4a-31b5-442f-be48-5d1b64972fae') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('洋', 'N4', 'ocean, sea, foreign, Western style', 'Dương', ARRAY['ヨウ'], NULL, 9, '10673667-6c56-413d-bbd5-a48794fb7725') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('溶', 'N3', 'melt, dissolve, thaw', 'Dong', ARRAY['ヨウ'], ARRAY['と.ける','と.かす','と.く'], 13, '10673667-6c56-413d-bbd5-a48794fb7725') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('用', 'N4', 'utilize, business, service, use, employ', 'Dụng', ARRAY['ヨウ'], ARRAY['もち.いる'], 5, 'daf0832d-8c88-4a80-be90-aff850623ffc') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('窯', 'N2', 'kiln, oven, furnace', 'Diêu', ARRAY['ヨウ'], ARRAY['かま'], 15, 'bff21635-eba6-4d8c-9cb9-99e227a4820a') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('羊', 'N2', 'sheep', 'Dương', ARRAY['ヨウ'], ARRAY['ひつじ'], 6, 'e438596e-f3e0-4bb3-9396-bcebdb382fd7') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('耀', 'N2', 'shine, sparkle, gleam, twinkle', 'Diệu', ARRAY['ヨウ'], ARRAY['かがや.く','ひかり'], 20, '2290d53b-eec2-4251-8bca-1ceb2407f15c') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('葉', 'N3', 'leaf, plane, lobe, needle, blade, spear, counter for flat things, fragment, piece', 'Diệp', ARRAY['ヨウ'], ARRAY['は'], 12, '25c57eec-88fa-4e6e-95a2-9ba83b5f4246') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('蓉', 'N2', 'lotus', 'Dong', ARRAY['ヨウ'], NULL, 13, '25c57eec-88fa-4e6e-95a2-9ba83b5f4246') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('要', 'N3', 'need, main point, essence, pivot, key to', 'Yếu, Yêu', ARRAY['ヨウ'], ARRAY['い.る','かなめ'], 9, '428b8fa3-e5c4-496c-aeda-768f030a5732') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('謡', 'N2', 'song, sing, ballad, noh chanting', 'Dao', ARRAY['ヨウ'], ARRAY['うた.い','うた.う'], 16, '7fd47228-ad16-439a-8685-ad9cacdeb95e') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('踊', 'N3', 'jump, dance, leap, skip', 'Dũng', ARRAY['ヨウ'], ARRAY['おど.る'], 14, 'ad5f2a38-b774-4a9b-b3ff-2b2cb029cc51') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('遥', 'N2', 'far off, distant, long ago', 'Diêu, Dao', ARRAY['ヨウ'], ARRAY['はる.か'], 12, '371180fe-c78a-477d-b628-86c3e88e03f1') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('陽', 'N3', 'sunshine, yang principle, positive, male, heaven, daytime', 'Dương', ARRAY['ヨウ'], ARRAY['ひ'], 12, 'b85628b0-3f6a-420a-91c7-0cfbd5055459') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('養', 'N2', 'foster, bring up, rear, develop, nurture', 'Dưỡng, Dượng', ARRAY['ヨウ','リョウ'], ARRAY['やしな.う'], 15, '575f81b8-d9ab-421e-ac61-7d25cf8751da') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('抑', 'N2', 'repress, well, now, in the first place, push, shove, press, seal, do in spite of', 'Ức', ARRAY['ヨク'], ARRAY['おさ.える'], 7, 'eaca9807-b2da-4d99-8585-13d429ea249d') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('欲', 'N3', 'longing, covetousness, greed, passion, desire, craving', 'Dục', ARRAY['ヨク'], ARRAY['ほっ.する','ほ.しい'], 11, '96d875ed-5269-427a-b3ca-828933e753fc') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('浴', 'N3', 'bathe, be favored with, bask in', 'Dục', ARRAY['ヨク'], ARRAY['あ.びる','あ.びせる'], 10, '10673667-6c56-413d-bbd5-a48794fb7725') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('翌', 'N3', 'the following, next', 'Dực', ARRAY['ヨク'], NULL, 11, '2290d53b-eec2-4251-8bca-1ceb2407f15c') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('翼', 'N2', 'wing, plane, flank', 'Dực', ARRAY['ヨク'], ARRAY['つばさ'], 17, '2290d53b-eec2-4251-8bca-1ceb2407f15c') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('羅', 'N2', 'gauze, thin silk, Rome, arrange, spread out', 'La', ARRAY['ラ'], ARRAY['うすもの'], 19, '416f2a82-f8af-4fcc-b9e2-5cb48c3ace0e') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('裸', 'N2', 'naked, nude, uncovered, partially clothed', 'Lỏa, Khỏa', ARRAY['ラ'], ARRAY['はだか'], 13, '9c5b95cd-6590-4a03-8c61-a68c80da3c8c') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('来', 'N5', 'come, due, next, cause, become', 'Lai, Lãi, Lay, Lơi, Ray, Rơi', ARRAY['ライ','タイ'], ARRAY['く.る','きた.る','きた.す','き.たす','き.たる','き','こ'], 7, '80c53d4a-31b5-442f-be48-5d1b64972fae') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('頼', 'N3', 'trust, request', 'Lại, Trái', ARRAY['ライ'], ARRAY['たの.む','たの.もしい','たよ.る'], 16, 'be4fe89f-bae1-4238-8aad-4789348c0e13') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('雷', 'N2', 'thunder, lightning bolt', 'Lôi', ARRAY['ライ'], ARRAY['かみなり','いかずち','いかづち'], 13, '491a9ec1-aebb-486b-9e2d-050c80063a8f') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('絡', 'N3', 'entwine, coil around, get caught in', 'Lạc', ARRAY['ラク'], ARRAY['から.む','から.まる'], 12, '2d4eb76f-4fae-4d05-855c-2520845188ed') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('落', 'N3', 'fall, drop, come down, village, hamlet', 'Lạc', ARRAY['ラク'], ARRAY['お.ちる','お.ち','お.とす'], 12, '25c57eec-88fa-4e6e-95a2-9ba83b5f4246') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('酪', 'N2', 'dairy products, whey, broth, fruit juice', 'Lạc', ARRAY['ラク'], NULL, 13, '12e487c3-d245-437b-b197-9593f0487352') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('乱', 'N3', 'riot, war, disorder, disturb', 'Loạn, Làn, Loàn', ARRAY['ラン','ロン'], ARRAY['みだ.れる','みだ.る','みだ.す','みだ','おさ.める','わた.る'], 7, '4721cf9b-ec7a-4029-8f61-3f80cc4d64fb') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('卵', 'N3', 'egg, ovum, spawn, roe', 'Noãn', ARRAY['ラン'], ARRAY['たまご'], 7, 'd88fdf4e-6084-471d-ac31-64ddac58a407') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('嵐', 'N2', 'storm, tempest', 'Lam', ARRAY['ラン'], ARRAY['あらし'], 12, 'a2f58e0e-c558-4282-80ff-1d8088c5f250') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('欄', 'N2', 'column, handrail, blank, space', 'Lan', ARRAY['ラン'], ARRAY['てすり'], 20, '80c53d4a-31b5-442f-be48-5d1b64972fae') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('濫', 'N2', 'excessive, overflow, spread out', 'Lạm, Lãm, Cãm', ARRAY['ラン'], ARRAY['みだ.りに','みだ.りがましい'], 18, '10673667-6c56-413d-bbd5-a48794fb7725') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('藍', 'N2', 'indigo', 'Lam', ARRAY['ラン'], ARRAY['あい'], 18, '25c57eec-88fa-4e6e-95a2-9ba83b5f4246') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('蘭', 'N2', 'orchid, Holland', 'Lan', ARRAY['ラン','ラ'], NULL, 19, '25c57eec-88fa-4e6e-95a2-9ba83b5f4246') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('覧', 'N2', 'perusal, see', 'Lãm', ARRAY['ラン'], ARRAY['み.る'], 17, 'd260f2a4-eacb-4447-97ac-2ef7518f6af8') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('利', 'N3', 'profit, advantage, benefit', 'Lợi', ARRAY['リ'], ARRAY['き.く'], 7, 'bc6a1cef-e769-454c-a64f-910a5e1b5d74') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('吏', 'N2', 'officer, an official', 'Lại', ARRAY['リ'], NULL, 6, 'a54e08f0-b1f4-49b0-bdcd-1fcfab9f5eb7') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('履', 'N2', 'perform, complete, footgear, shoes, boots, put on (the feet)', 'Lý', ARRAY['リ'], ARRAY['は.く'], 15, 'dbb1b9f0-b6d7-4c0b-989a-7a98ab167f37') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('李', 'N2', 'plum', 'Lý', ARRAY['リ'], ARRAY['すもも'], 7, '80c53d4a-31b5-442f-be48-5d1b64972fae') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('梨', 'N2', 'pear tree', 'Lê', ARRAY['リ'], ARRAY['なし'], 11, '80c53d4a-31b5-442f-be48-5d1b64972fae') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('理', 'N4', 'logic, arrangement, reason, justice, truth', 'Lý', ARRAY['リ'], ARRAY['ことわり'], 11, '1450b570-89aa-4b1c-9e48-32bc25298929') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('璃', 'N2', 'glassy, lapis lazuli', 'Ly', ARRAY['リ'], NULL, 15, '1450b570-89aa-4b1c-9e48-32bc25298929') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('痢', 'N2', 'diarrhea', 'Lị', ARRAY['リ'], NULL, 12, '5688d6a7-12f3-4090-999b-bee052200ce3') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('裏', 'N3', 'back, amidst, in, reverse, inside, palm, sole, rear, lining, wrong side', 'Lý', ARRAY['リ'], ARRAY['うら'], 13, '9c5b95cd-6590-4a03-8c61-a68c80da3c8c') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('里', 'N2', 'ri, village, parent''s home, league', 'Lý', ARRAY['リ'], ARRAY['さと'], 7, '7b994519-90ea-4c97-8378-fa2add6e92fc') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('離', 'N2', 'detach, separation, disjoin, digress', 'Ly', ARRAY['リ'], ARRAY['はな.れる','はな.す'], 19, 'e9426c63-0e1d-4399-a59e-ce2e851fa615') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('陸', 'N3', 'land, six', 'Lục', ARRAY['リク','ロク'], ARRAY['おか'], 11, 'b85628b0-3f6a-420a-91c7-0cfbd5055459') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('律', 'N3', 'rhythm, law, regulation, gauge, control', 'Luật', ARRAY['リツ','リチ','レツ'], NULL, 9, '5a7d3fce-7600-45fd-91a8-2af832381ee4') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('率', 'N3', 'ratio, rate, proportion, %, factor, lead, spearhead, command', 'Suất, Súy, Luật, Soát', ARRAY['ソツ','リツ','シュツ'], ARRAY['ひき.いる'], 11, '7bb6208d-6849-43e0-be87-098e7fbc5125') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('立', 'N5', 'stand up, rise, set up, erect', 'Lập', ARRAY['リツ','リュウ','リットル'], ARRAY['た.つ','-た.つ','た.ち-','た.てる','-た.てる','た.て-','たて-','-た.て','-だ.て','-だ.てる'], 5, '9cf1d21c-3259-43e2-9a76-3e9d37cefc02') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('略', 'N3', 'abbreviation, omission, outline, shorten, capture, plunder', 'Lược', ARRAY['リャク'], ARRAY['ほぼ','はぶ.く','おか.す','おさ.める','はかりごと','はか.る'], 11, '43d68113-71ea-45ae-9926-6ea616e69ae2') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('流', 'N3', 'current, a sink, flow, forfeit', 'Lưu', ARRAY['リュウ','ル'], ARRAY['なが.れる','なが.れ','なが.す','-なが.す'], 10, '10673667-6c56-413d-bbd5-a48794fb7725') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('琉', 'N2', 'precious stone, gem, lapis lazuli', 'Lưu', ARRAY['リュウ','ル'], NULL, 11, '1450b570-89aa-4b1c-9e48-32bc25298929') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('留', 'N3', 'detain, fasten, halt, stop', 'Lưu', ARRAY['リュウ','ル'], ARRAY['と.める','と.まる','とど.める','とど.まる','るうぶる'], 10, '43d68113-71ea-45ae-9926-6ea616e69ae2') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('硫', 'N2', 'sulphur', 'Lưu', ARRAY['リュウ'], NULL, 12, 'c3bb7570-e8b9-49cc-bf56-90e74165d503') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('粒', 'N3', 'grains, drop, counter for tiny particles', 'Lạp', ARRAY['リュウ'], ARRAY['つぶ'], 11, '8497383a-f56a-48b2-a4bd-8c8673d82955') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('隆', 'N2', 'hump, high, noble, prosperity', 'Long', ARRAY['リュウ'], NULL, 11, 'b85628b0-3f6a-420a-91c7-0cfbd5055459') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('竜', 'N2', 'dragon, imperial', 'Long, Lung, Luôn', ARRAY['リュウ','リョウ','ロウ'], ARRAY['たつ','いせ'], 10, '9cf1d21c-3259-43e2-9a76-3e9d37cefc02') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('慮', 'N2', 'prudence, thought, concern, consider, deliberate, fear', 'Lự, Lư', ARRAY['リョ'], ARRAY['おもんぱく.る','おもんぱか.る'], 15, '1659d447-8145-42d3-8262-2d05cea9f834') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('旅', 'N4', 'trip, travel', 'Lữ', ARRAY['リョ'], ARRAY['たび'], 10, '816fcd71-fef2-4808-a4c6-60bc531d2d01') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('虜', 'N2', 'captive, barbarian, low epithet for the enemy', 'Lỗ', ARRAY['リョ','ロ'], ARRAY['とりこ','とりく'], 13, '787bb4d8-bce5-4764-8c72-6c3cfb0ee9a7') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('了', 'N3', 'complete, finish', 'Liễu', ARRAY['リョウ'], NULL, 2, '9df04e71-70fe-4093-bc6b-bd76d3d32310') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('亮', 'N2', 'clear, help', 'Lượng', ARRAY['リョウ'], ARRAY['あきらか'], 9, '78591721-155a-4c67-999d-a331bb59ebb5') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('僚', 'N2', 'colleague, official, companion', 'Liêu', ARRAY['リョウ'], NULL, 14, '78419994-196d-4445-8165-a6029d33a0ff') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('両', 'N3', 'both, old Japanese coin, counter for carriages (e.g., in a train), two', 'Lạng', ARRAY['リョウ'], ARRAY['てる','ふたつ'], 6, '12f0d122-51f5-4c55-8a67-d3fc53818027') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('凌', 'N2', 'endure, keep (rain)out, stave off, tide over, defy, slight, surpass', 'Lăng', ARRAY['リョウ'], ARRAY['しの.ぐ'], 10, '23a10182-2ed1-47fd-a83e-9381dcd8dfad') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('寮', 'N2', 'dormitory, hostel, villa, tea pavillion', 'Liêu', ARRAY['リョウ'], NULL, 15, '66a403fd-ce7c-4ecc-820d-3f1718e79119') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('料', 'N4', 'fee, materials', 'Liêu, Liệu', ARRAY['リョウ'], NULL, 10, '63f0a5d8-da20-49a8-a73c-8c31621b9c3c') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('涼', 'N3', 'refreshing, nice and cool', 'Lương, Lượng', ARRAY['リョウ'], ARRAY['すず.しい','すず.む','すず.やか','うす.い','ひや.す','まことに'], 11, '10673667-6c56-413d-bbd5-a48794fb7725') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('猟', 'N2', 'game-hunting, shooting, game, bag', 'Liệp', ARRAY['リョウ'], ARRAY['かり','か.る'], 11, '060e9144-2828-4302-b284-f6ac8ea6ae51') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('療', 'N3', 'heal, cure', 'Liệu', ARRAY['リョウ'], NULL, 17, '5688d6a7-12f3-4090-999b-bee052200ce3') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('瞭', 'N2', 'clear', 'Liệu', ARRAY['リョウ'], ARRAY['あきらか'], 17, 'eeeb0778-60ee-4882-b7a5-d6e12279fade') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('稜', 'N2', 'angle, edge, corner, power, majesty', 'Lăng, Lắng', ARRAY['リョウ','ロウ'], ARRAY['いつ','かど'], 13, '18d824dd-4b06-48c0-9e40-ff5132c75dc9') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('糧', 'N2', 'provisions, food, bread', 'Lương', ARRAY['リョウ','ロウ'], ARRAY['かて'], 18, '8497383a-f56a-48b2-a4bd-8c8673d82955') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('良', 'N3', 'good, pleasing, skilled', 'Lương', ARRAY['リョウ'], ARRAY['よ.い','-よ.い','い.い','-い.い'], 7, '21dc904d-7d52-4809-ab27-ceed4b4bae21') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('諒', 'N2', 'fact, reality, understand, appreciate', 'Lượng', ARRAY['リョウ'], ARRAY['あきら.か','まことに'], 15, '7fd47228-ad16-439a-8685-ad9cacdeb95e') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('遼', 'N2', 'distant', 'Liêu', ARRAY['リョウ'], NULL, 15, '371180fe-c78a-477d-b628-86c3e88e03f1') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('量', 'N3', 'quantity, measure, weight, amount, consider, estimate, surmise', 'Lượng, Lương', ARRAY['リョウ'], ARRAY['はか.る'], 12, '7b994519-90ea-4c97-8378-fa2add6e92fc') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('陵', 'N2', 'mausoleum, imperial tomb, mound, hill', 'Lăng', ARRAY['リョウ'], ARRAY['みささぎ'], 11, 'b85628b0-3f6a-420a-91c7-0cfbd5055459') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('領', 'N3', 'jurisdiction, dominion, territory, fief, reign', 'Lĩnh', ARRAY['リョウ'], ARRAY['えり'], 14, 'be4fe89f-bae1-4238-8aad-4789348c0e13') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('力', 'N4', 'power, strength, strong, strain, bear up, exert', 'Lực', ARRAY['リョク','リキ','リイ'], ARRAY['ちから'], 2, 'd9107ec4-ea5d-4a21-bacd-ffca462b29dd') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('緑', 'N3', 'green', 'Lục', ARRAY['リョク','ロク'], ARRAY['みどり'], 14, '2d4eb76f-4fae-4d05-855c-2520845188ed') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('倫', 'N2', 'ethics, companion', 'Luân', ARRAY['リン'], NULL, 10, '78419994-196d-4445-8165-a6029d33a0ff') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('厘', 'N2', 'rin, 1/10 sen, 1/10 bu', 'Ly', ARRAY['リン'], NULL, 9, '06e286c9-3801-4780-a073-6568f4c0dc2d') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('林', 'N4', 'grove, forest', 'Lâm', ARRAY['リン'], ARRAY['はやし'], 8, '80c53d4a-31b5-442f-be48-5d1b64972fae') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('琳', 'N2', 'jewel, tinkling of jewelry', 'Lâm', ARRAY['リン'], NULL, 12, '1450b570-89aa-4b1c-9e48-32bc25298929') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('臨', 'N2', 'look to, face, meet, confront, attend, call on', 'Lâm, Lấm', ARRAY['リン'], ARRAY['のぞ.む'], 18, '35959534-01ee-4a29-a72b-7affe8de57f9') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('輪', 'N3', 'wheel, ring, circle, link, loop, counter for wheels and flowers', 'Luân', ARRAY['リン'], ARRAY['わ'], 15, '869f4859-e3d9-4a6a-8839-d1bf7a715a34') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('隣', 'N2', 'neighboring', 'Lân, Lăn', ARRAY['リン'], ARRAY['とな.る','となり'], 16, 'b85628b0-3f6a-420a-91c7-0cfbd5055459') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('麟', 'N2', 'Chinese unicorn, genius, giraffe, bright, shining', 'Lân', ARRAY['リン'], NULL, 24, 'deb572ec-2171-40cf-8310-73e2b9929367') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('瑠', 'N2', 'lapis lazuli', 'Lưu', ARRAY['ル','リュウ'], NULL, 14, '1450b570-89aa-4b1c-9e48-32bc25298929') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('塁', 'N2', 'bases, fort, rampart, walls, base(ball)', 'Lỗi', ARRAY['ルイ','ライ','スイ'], ARRAY['とりで'], 12, '2fd61440-db3f-4cd5-8101-9e74019df262') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('涙', 'N3', 'tears, sympathy', 'Lệ', ARRAY['ルイ','レイ'], ARRAY['なみだ'], 10, '10673667-6c56-413d-bbd5-a48794fb7725') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('累', 'N2', 'accumulate, involvement, trouble, tie up, continually', 'Luy, Lũy, Lụy', ARRAY['ルイ'], NULL, 11, '2d4eb76f-4fae-4d05-855c-2520845188ed') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('類', 'N3', 'sort, kind, variety, class, genus', 'Loại', ARRAY['ルイ'], ARRAY['たぐ.い'], 18, 'be4fe89f-bae1-4238-8aad-4789348c0e13') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('令', 'N3', 'orders, laws, command, decree, good', 'Lệnh, Linh', ARRAY['レイ'], NULL, 5, '78419994-196d-4445-8165-a6029d33a0ff') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('伶', 'N2', 'actor', 'Linh', ARRAY['レイ','リョウ'], ARRAY['わざおぎ'], 7, '78419994-196d-4445-8165-a6029d33a0ff') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('例', 'N3', 'example, custom, usage, precedent', 'Lệ', ARRAY['レイ'], ARRAY['たと.える'], 8, '78419994-196d-4445-8165-a6029d33a0ff') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('冷', 'N3', 'cool, cold (beer, person), chill', 'Lãnh', ARRAY['レイ'], ARRAY['つめ.たい','ひ.える','ひ.や','ひ.ややか','ひ.やす','ひ.やかす','さ.める','さ.ます'], 7, '23a10182-2ed1-47fd-a83e-9381dcd8dfad') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('励', 'N2', 'encourage, be diligent, inspire', 'Lệ', ARRAY['レイ'], ARRAY['はげ.む','はげ.ます'], 7, 'd9107ec4-ea5d-4a21-bacd-ffca462b29dd') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('嶺', 'N2', 'peak, summit', 'Lĩnh', ARRAY['レイ','リョウ'], ARRAY['みね'], 17, 'a2f58e0e-c558-4282-80ff-1d8088c5f250') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('怜', 'N2', 'wise', 'Lân, Liên, Linh, Lanh, Lệnh', ARRAY['レイ','レン','リョウ'], ARRAY['あわ.れむ','さと.い'], 8, '1659d447-8145-42d3-8262-2d05cea9f834') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('玲', 'N2', 'sound of jewels', 'Linh', ARRAY['レイ'], NULL, 9, '1450b570-89aa-4b1c-9e48-32bc25298929') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('礼', 'N3', 'salute, bow, ceremony, thanks, remuneration', 'Lễ', ARRAY['レイ','ライ'], NULL, 5, 'aa655283-0fb9-4ae0-a339-aa1437f00ad1') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('鈴', 'N2', 'small bell, buzzer', 'Linh', ARRAY['レイ','リン'], ARRAY['すず'], 13, 'c3b48b38-6414-47f2-a7ac-d72a85c0e35a') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('隷', 'N2', 'slave, servant, prisoner, criminal, follower', 'Lệ', ARRAY['レイ'], ARRAY['したが.う','しもべ'], 16, '302b1955-0926-44c9-9f84-5f6ca2b603d0') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('零', 'N3', 'zero, spill, overflow, nothing, cipher', 'Linh', ARRAY['レイ'], ARRAY['ぜろ','こぼ.す','こぼ.れる'], 13, '491a9ec1-aebb-486b-9e2d-050c80063a8f') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('霊', 'N2', 'spirits, soul', 'Linh', ARRAY['レイ','リョウ'], ARRAY['たま'], 15, '491a9ec1-aebb-486b-9e2d-050c80063a8f') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('麗', 'N2', 'lovely, beautiful, graceful, resplendent', 'Lệ, Ly', ARRAY['レイ'], ARRAY['うるわ.しい','うら.らか'], 19, 'deb572ec-2171-40cf-8310-73e2b9929367') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('齢', 'N3', 'age', 'Linh', ARRAY['レイ'], ARRAY['よわい','とし'], 17, 'ad306b83-29b5-4ef6-ad4f-57e429b3c407') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('暦', 'N2', 'calendar, almanac', 'Lịch', ARRAY['レキ','リャク'], ARRAY['こよみ'], 14, 'b8af1855-8d69-4238-bc65-6925c1c993cd') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('歴', 'N3', 'curriculum, continuation, passage of time', 'Lịch', ARRAY['レキ','レッキ'], NULL, 14, '5abe55eb-4f3c-429f-8c1f-dfa8aca4b1f4') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('列', 'N3', 'file, row, rank, tier, column', 'Liệt', ARRAY['レツ','レ'], NULL, 6, 'bc6a1cef-e769-454c-a64f-910a5e1b5d74') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('劣', 'N2', 'inferiority, be inferior to, be worse', 'Liệt', ARRAY['レツ'], ARRAY['おと.る'], 6, 'd9107ec4-ea5d-4a21-bacd-ffca462b29dd') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('烈', 'N2', 'ardent, violent, vehement, furious, severe, extreme', 'Liệt', ARRAY['レツ'], ARRAY['はげ.しい'], 10, '831cfc6a-79c9-4ebb-a4cc-ba737a36caf7') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('裂', 'N2', 'split, rend, tear', 'Liệt', ARRAY['レツ'], ARRAY['さ.く','さ.ける','-ぎ.れ'], 12, '9c5b95cd-6590-4a03-8c61-a68c80da3c8c') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('廉', 'N2', 'bargain, reason, charge, suspicion, point, account, purity, honest, low price, cheap, rested, contented, peaceful', 'Liêm', ARRAY['レン'], NULL, 13, '2417a6bf-65df-4c8a-a8d0-fba42aeb96ed') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('恋', 'N3', 'romance, in love, yearn for, miss, darling', 'Luyến', ARRAY['レン'], ARRAY['こ.う','こい','こい.しい'], 10, '1659d447-8145-42d3-8262-2d05cea9f834') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('練', 'N3', 'practice, gloss, train, drill, polish, refine', 'Luyện', ARRAY['レン'], ARRAY['ね.る','ね.り'], 14, '2d4eb76f-4fae-4d05-855c-2520845188ed') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('蓮', 'N2', 'lotus', 'Liên', ARRAY['レン'], ARRAY['はす','はちす'], 13, '25c57eec-88fa-4e6e-95a2-9ba83b5f4246') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('連', 'N3', 'take along, lead, join, connect, party, gang, clique', 'Liên', ARRAY['レン'], ARRAY['つら.なる','つら.ねる','つ.れる','-づ.れ'], 10, '371180fe-c78a-477d-b628-86c3e88e03f1') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('錬', 'N2', 'tempering, refine, drill, train, polish', 'Chương, Luyện, Rèn', ARRAY['レン'], ARRAY['ね.る'], 16, 'c3b48b38-6414-47f2-a7ac-d72a85c0e35a') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('呂', 'N2', 'spine, backbone', 'Lữ, Lã', ARRAY['ロ','リョ'], ARRAY['せぼね'], 7, 'a54e08f0-b1f4-49b0-bdcd-1fcfab9f5eb7') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('炉', 'N2', 'hearth, furnace, kiln, reactor', 'Lô, Lò, Lư', ARRAY['ロ'], ARRAY['いろり'], 8, '831cfc6a-79c9-4ebb-a4cc-ba737a36caf7') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('路', 'N3', 'path, route, road, distance', 'Lộ', ARRAY['ロ','ル'], ARRAY['-じ','みち'], 13, 'ad5f2a38-b774-4a9b-b3ff-2b2cb029cc51') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('露', 'N2', 'dew, tears, expose, Russia', 'Lộ', ARRAY['ロ','ロウ'], ARRAY['つゆ'], 21, '491a9ec1-aebb-486b-9e2d-050c80063a8f') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('労', 'N3', 'labor, thank for, reward for, toil, trouble', 'Lao', ARRAY['ロウ'], ARRAY['ろう.する','いたわ.る','いた.ずき','ねぎら','つか.れる','ねぎら.う'], 7, 'd9107ec4-ea5d-4a21-bacd-ffca462b29dd') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('廊', 'N2', 'corridor, hall, tower', 'Lang', ARRAY['ロウ'], NULL, 12, '2417a6bf-65df-4c8a-a8d0-fba42aeb96ed') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('朗', 'N2', 'melodious, clear, bright, serene, cheerful', 'Lãng', ARRAY['ロウ'], ARRAY['ほが.らか','あき.らか'], 10, 'a55eee17-b099-4cb3-810a-0a4c9dbc7ea9') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('楼', 'N2', 'watchtower, lookout, high building', 'Lâu, Lầu', ARRAY['ロウ'], ARRAY['たかどの'], 13, '80c53d4a-31b5-442f-be48-5d1b64972fae') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('浪', 'N2', 'wandering, waves, billows, reckless, unrestrained', 'Lãng, Lang', ARRAY['ロウ'], NULL, 10, '10673667-6c56-413d-bbd5-a48794fb7725') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('漏', 'N2', 'leak, escape, time', 'Lậu', ARRAY['ロウ'], ARRAY['も.る','も.れる','も.らす'], 14, '10673667-6c56-413d-bbd5-a48794fb7725') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('老', 'N3', 'old man, old age, grow old', 'Lão', ARRAY['ロウ'], ARRAY['お.いる','ふ.ける'], 6, '13550029-946b-4860-8d32-2e58ac036637') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('郎', 'N2', 'son, counter for sons', 'Lang, Lảng, Loang, Loen, Loẻn, Sang', ARRAY['ロウ','リョウ'], ARRAY['おとこ'], 9, '57b67155-4755-4cbd-8c34-1edf3d4cb815') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('六', 'N5', 'six', 'Lục', ARRAY['ロク','リク'], ARRAY['む','む.つ','むっ.つ','むい'], 4, '33938fa7-49b8-4856-a98e-5aff308f56f2') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('禄', 'N2', 'fief, allowance, pension, grant, happiness', 'Lộc', ARRAY['ロク'], ARRAY['さいわ.い','ふち'], 12, 'aa655283-0fb9-4ae0-a339-aa1437f00ad1') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('録', 'N3', 'record', 'Lục', ARRAY['ロク'], ARRAY['しる.す','と.る'], 16, 'c3b48b38-6414-47f2-a7ac-d72a85c0e35a') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('論', 'N3', 'argument, discourse', 'Luận, Luân', ARRAY['ロン'], ARRAY['あげつら.う'], 15, '7fd47228-ad16-439a-8685-ad9cacdeb95e') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('倭', 'N2', 'Yamato, ancient Japan', 'Uy, Oa, Nụy', ARRAY['ワ','イ'], ARRAY['やまと','したが.う'], 10, '78419994-196d-4445-8165-a6029d33a0ff') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('和', 'N3', 'harmony, Japanese style, peace, soften, Japan', 'Hòa, Họa', ARRAY['ワ','オ','カ'], ARRAY['やわ.らぐ','やわ.らげる','なご.む','なご.やか','あ.える'], 8, 'a54e08f0-b1f4-49b0-bdcd-1fcfab9f5eb7') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('話', 'N5', 'tale, talk', 'Thoại', ARRAY['ワ'], ARRAY['はな.す','はなし'], 13, '7fd47228-ad16-439a-8685-ad9cacdeb95e') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('賄', 'N2', 'bribe, board, supply, finance', 'Hối', ARRAY['ワイ'], ARRAY['まかな.う'], 13, '0cb16105-d4c3-4534-9e4e-0eecbad15787') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('惑', 'N2', 'beguile, delusion, perplexity', 'Hoặc', ARRAY['ワク'], ARRAY['まど.う'], 12, '1659d447-8145-42d3-8262-2d05cea9f834') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('枠', 'N2', 'frame, framework, spindle, spool, bounding-box, (kokuji)', 'Khung', NULL, ARRAY['わく'], 8, '80c53d4a-31b5-442f-be48-5d1b64972fae') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('亘', 'N2', 'span, range, extend over', 'Tuyên, Hoàn', ARRAY['コウ','カン','セン'], ARRAY['わた.る','もと.める'], 6, '7a559b3e-4eea-47ee-a353-8deec41a7cd7') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('湾', 'N3', 'gulf, bay, inlet', 'Loan', ARRAY['ワン'], ARRAY['いりえ'], 12, '10673667-6c56-413d-bbd5-a48794fb7725') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('腕', 'N3', 'arm, ability, talent', 'Oản', ARRAY['ワン'], ARRAY['うで'], 12, '71cc2465-f238-4f52-b9e3-39f8f95caaba') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('侑', 'N2', 'urge to eat', 'Hựu', ARRAY['ユウ','ウ'], ARRAY['すす.める','たす.ける'], 8, '78419994-196d-4445-8165-a6029d33a0ff') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('勁', 'N2', 'strong', 'Kính', ARRAY['ケイ'], ARRAY['つよ.い'], 9, 'd9107ec4-ea5d-4a21-bacd-ffca462b29dd') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('奎', 'N2', 'star, god of literature', 'Khuê', ARRAY['ケイ','キ'], NULL, 9, '457c9d33-f2d9-4f61-bca8-910ce7ade194') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('崚', 'N2', 'mountains towering in a row', 'Lăng', ARRAY['リョウ'], NULL, 11, 'a2f58e0e-c558-4282-80ff-1d8088c5f250') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('彗', 'N2', 'comet, broom', 'Tuệ', ARRAY['スイ','エ','ケイ','セイ'], ARRAY['ほうき'], 11, '55d766ca-79d1-49ec-8d89-b7e147788b38') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('昴', 'N2', 'the Pleiades', 'Mão', ARRAY['コウ','ボウ'], ARRAY['すばる'], 9, 'b8af1855-8d69-4238-bc65-6925c1c993cd') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('晏', 'N2', 'late, quiet, sets (sun)', 'Yến', ARRAY['アン'], ARRAY['おそ.い'], 10, 'b8af1855-8d69-4238-bc65-6925c1c993cd') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('晨', 'N2', 'morning, early', 'Thần', ARRAY['シン'], ARRAY['あした','とき','あさ'], 11, 'b8af1855-8d69-4238-bc65-6925c1c993cd') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('晟', 'N2', 'clear', 'Thịnh, Thạnh', ARRAY['セイ','ジョウ'], ARRAY['あきらか'], 10, 'b8af1855-8d69-4238-bc65-6925c1c993cd') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('暉', 'N2', 'shine, light', 'Huy', ARRAY['キ'], ARRAY['かが.やく'], 13, 'b8af1855-8d69-4238-bc65-6925c1c993cd') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('栞', 'N2', 'bookmark, guidebook', 'San', ARRAY['カン'], ARRAY['しおり'], 10, '80c53d4a-31b5-442f-be48-5d1b64972fae') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('椰', 'N2', 'coconut tree', 'Gia', ARRAY['ヤ'], ARRAY['やし'], 13, '80c53d4a-31b5-442f-be48-5d1b64972fae') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('毬', 'N2', 'burr, ball', 'Cầu', ARRAY['キュウ'], ARRAY['いが','まり'], 11, 'b3a272f8-db49-4418-a21f-2bb5442eebf2') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('洸', 'N2', 'sparkling water', 'Hoảng, Quang, Thoáng', ARRAY['コウ'], NULL, 9, '10673667-6c56-413d-bbd5-a48794fb7725') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('洵', 'N2', 'alike, truth', 'Tuân', ARRAY['ジュン','シュン'], ARRAY['の.ぶ','まこと.に'], 9, '10673667-6c56-413d-bbd5-a48794fb7725') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('滉', 'N2', 'deep and broad (water)', 'Hoáng, Hoảng', ARRAY['コウ'], ARRAY['ひろ.い'], 13, '10673667-6c56-413d-bbd5-a48794fb7725') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('漱', 'N2', 'gargle, rinse mouth', 'Sấu, Thấu', ARRAY['ソウ','シュウ','ス'], ARRAY['くちすす.ぐ','くちそそ.ぐ','うがい','すす.ぐ'], 14, '10673667-6c56-413d-bbd5-a48794fb7725') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('澪', 'N2', 'water route, shipping channel', 'Linh', ARRAY['レイ'], ARRAY['みお'], 16, '10673667-6c56-413d-bbd5-a48794fb7725') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('燎', 'N2', 'burn, bonfire', 'Liệu', ARRAY['リョウ'], ARRAY['かがりび'], 16, '831cfc6a-79c9-4ebb-a4cc-ba737a36caf7') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('燿', 'N2', 'shine', 'Diệu', ARRAY['ヨウ'], ARRAY['かがや.く','ひかり'], 18, '831cfc6a-79c9-4ebb-a4cc-ba737a36caf7') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('瑶', 'N2', 'beautiful as a jewel', 'Dao', ARRAY['ヨウ'], ARRAY['たま'], 13, '1450b570-89aa-4b1c-9e48-32bc25298929') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('皓', 'N2', 'white, clear', 'Hạo', ARRAY['コウ'], ARRAY['しろ.い','ひか.る'], 12, '3b90f7ed-6228-403f-94bc-50105d4ad47e') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('眸', 'N2', 'pupil of the eye', 'Mâu', ARRAY['ボウ','ム'], ARRAY['ひとみ'], 11, 'eeeb0778-60ee-4882-b7a5-d6e12279fade') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('笙', 'N2', 'a reed instrument', 'Sanh', ARRAY['ショウ','ソウ'], ARRAY['ふえ'], 11, 'da702964-289f-443e-995f-0f7c0d2a57f3') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('綺', 'N2', 'figured cloth, beautiful', 'Khỉ, Ỷ', ARRAY['キ'], ARRAY['あや'], 14, '2d4eb76f-4fae-4d05-855c-2520845188ed') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('綸', 'N2', 'thread, silk cloth', 'Luân', ARRAY['リン','カン'], ARRAY['いと'], 14, '2d4eb76f-4fae-4d05-855c-2520845188ed') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('翔', 'N2', 'soar, fly', 'Tường', ARRAY['ショウ'], ARRAY['かけ.る','と.ぶ'], 12, '2290d53b-eec2-4251-8bca-1ceb2407f15c') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('脩', 'N2', 'dried meat', 'Tu', ARRAY['シュウ'], ARRAY['おさ.める','なが.い','ほじし'], 11, '71cc2465-f238-4f52-b9e3-39f8f95caaba') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('茉', 'N2', 'jasmine', 'Mạt', ARRAY['マツ','バツ','マ'], NULL, 8, '25c57eec-88fa-4e6e-95a2-9ba83b5f4246') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('莉', 'N2', 'jasmine', 'Lị', ARRAY['リ','ライ','レイ'], NULL, 10, '25c57eec-88fa-4e6e-95a2-9ba83b5f4246') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('菫', 'N2', 'the violet', 'Cận', ARRAY['キン'], ARRAY['すみれ'], 11, '25c57eec-88fa-4e6e-95a2-9ba83b5f4246') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('詢', 'N2', 'consult with', 'Tuân', ARRAY['ジュン','シュン'], ARRAY['はか.る','まこと'], 13, '7fd47228-ad16-439a-8685-ad9cacdeb95e') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('諄', 'N2', 'tedious', 'Truân', ARRAY['シュン'], ARRAY['ひちくど.い','くど.い','くどくど','ねんご.ろ'], 15, '7fd47228-ad16-439a-8685-ad9cacdeb95e') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('赳', 'N2', 'strong and brave', 'Củ', ARRAY['キュウ'], NULL, 10, '432fb72b-e9d0-4c51-981a-ebec3d1c1488') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('迪', 'N2', 'edify, way, path', 'Địch', ARRAY['テキ'], ARRAY['みち','みちび.く','すす.む','いた.る'], 8, '371180fe-c78a-477d-b628-86c3e88e03f1') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('頌', 'N2', 'eulogy', 'Tụng', ARRAY['ショウ','ジュ','ヨウ'], ARRAY['かたち','たた.える','ほめ.る'], 13, 'be4fe89f-bae1-4238-8aad-4789348c0e13') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('颯', 'N2', 'sudden, quick, sound of the wind', 'Táp', ARRAY['サツ','ソウ'], ARRAY['さっ.と'], 14, '90fde474-602b-4f54-9f45-65b305fbe745') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('黎', 'N2', 'dark, black, many', 'Lê', ARRAY['レイ','リ'], ARRAY['くろ.い'], 15, '73390330-2564-4a09-a55a-12e43c88d835') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('凜', 'N2', 'cold, strict, severe', 'Lẫm', ARRAY['リン'], ARRAY['きびし.い'], 15, '23a10182-2ed1-47fd-a83e-9381dcd8dfad') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('熙', 'N2', 'bright, sunny, prosperous, merry', 'Hi, Hy, Hây, He', ARRAY['キ'], ARRAY['たのし.む','ひか.る','ひろ.い','よろこ.ぶ','かわ.く','あきらか','ひろ.める','ひろ.まる'], 15, '831cfc6a-79c9-4ebb-a4cc-ba737a36caf7') 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;
