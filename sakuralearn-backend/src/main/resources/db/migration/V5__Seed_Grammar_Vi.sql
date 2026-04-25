-- Seed data for Grammar Points
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('1.  だ  /  です  (Da / Desu) Là', 'Common', '     <b>Công thức:</b>
<br>Danh từ / Tính từ đuôi  な +  だ (Thể thông thường)
<br><br>Danh từ / Tính từ đuôi  な / Tính từ đuôi  い +  です (Thể lịch sự)
<br>──────────<br><b>Cách dùng:</b> Dùng ở cuối câu khẳng định.  です  lịch sự,  だ  thông thường.
<br>──────────<br><b>Ví dụ:</b>
<br>私は学生です。<br>(Watashi wa gakusei desu.) <br>→ Tôi là học sinh.
<br><br>これは本だ。<br>(Kore wa hon da.) <br>→ Đây là quyển sách.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('2.  だけ  (Dake) Chỉ; chỉ có', 'Common', '     <b>Công thức:</b> Danh từ / Động từ +  だけ
<br>──────────<br><b>Cách dùng:</b> Diễn tả sự giới hạn.
<br>──────────<br><b>Ví dụ:</b>
<br>５分だけ待ってください。<br>(Go-fun dake matte kudasai.) <br>→ Xin hãy đợi chỉ 5 phút.
<br><br>これだけあります。<br>(Kore dake arimasu.) <br>→ Chỉ có cái này thôi.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('3.  で  (De) Ở; tại (nơi xảy ra hành động); bằng (phương tiện); với (công cụ)', 'Common', '     <b>Công thức:</b> Danh từ +  で
<br>──────────<br><b>Cách dùng:</b>
<br>Chỉ nơi diễn ra hành động:  図書館で勉強します。<br>(Toshokan de benkyou shimasu.) <br>→ Học bài ở thư viện.
<br><br>Chỉ phương tiện:  バスで会社へ行きます。<br>(Basu de kaisha e ikimasu.) <br>→ Đi đến công ty bằng xe buýt.
<br><br>Chỉ công cụ:  ペンで書きます。<br>(Pen de kakimasu.) <br>→ Viết bằng bút.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('4.  が  (Ga) Trợ từ chủ ngữ', 'Common', '     <b>Công thức:</b> Danh từ +  が + Động từ / Tính từ
<br>──────────<br><b>Cách dùng:</b> Nhấn mạnh chủ ngữ, giới thiệu thông tin mới, đi với các từ chỉ khả năng/sở thích (好き,  います,  あります...).
<br>──────────<br><b>Ví dụ:</b>
<br>雨が降っています。<br>(Ame ga futte imasu.) <br>→ Trời đang mưa.
<br><br>猫が好きです。<br>(Neko ga suki desu.) <br>→ Tôi thích mèo.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('5.  があります  /  がいます  (Ga arimasu / Ga imasu) Có (sự tồn tại)', 'Common', '     <b>Công thức:</b> Danh từ +  が +  あります /  います
<br>──────────<br><b>Cách dùng:</b>  あります  cho đồ vật,  います  cho người và động vật.
<br>──────────<br><b>Ví dụ:</b>
<br>机の上に本があります。<br>(Tsukue no ue ni hon ga arimasu.) <br>→ Trên bàn có sách.
<br><br>公園に子供がいます。<br>(Kouen ni kodomo ga imasu.) <br>→ Ở công viên có trẻ
em.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('6.  がほしい  (Ga hoshii) Muốn (cái gì đó)', 'Common', '     <b>Công thức:</b> Danh từ +  が +  ほしいです
<br>──────────<br><b>Cách dùng:</b> Diễn tả mong muốn sở hữu một vật gì đó (ngôi thứ nhất).
<br>──────────<br><b>Ví dụ:</b>
<br>新しい車がほしいです。<br>(Atarashii kuruma ga hoshii desu.) <br>→ Tôi muốn có một chiếc ô tô mới.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('7.  ほうがいい  (Hou ga ii) Nên ~; tốt hơn là nên ~', 'Common', '     <b>Công thức:</b> V-た / V-ない +  ほうがいい
<br>──────────<br><b>Cách dùng:</b> Đưa ra lời khuyên.
<br>──────────<br><b>Ví dụ:</b>
<br>薬を飲んだほうがいいですよ。<br>(Kusuri o nonda hou ga ii desu yo.) <br>→ Bạn nên uống thuốc đi.
<br><br>タバコは吸わないほうがいいです。<br>(Tabako wa suwanai hou ga ii desu.) <br>→ Không nên hút thuốc lá.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('8.  一番  (Ichiban) Nhất', 'Common', '     <b>Công thức:</b> [Phạm vi] +  で + [Danh từ] +  が +  一番 + [Tính từ] +  です。<br>
<br>──────────<br><b>Cách dùng:</b> Diễn tả sự so sánh cao nhất.
<br>──────────<br><b>Ví dụ:</b>
<br>スポーツでサッカーが一番面白いです。<br>(Supootsu de sakkaa ga ichiban omoshiroi desu.) <br>→ Trong các môn thể thao, bóng đá là thú vị nhất.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('9.  か  (Ka) Trợ từ nghi vấn (dấu chấm hỏi)', 'Common', '     <b>Công thức:</b> Câu +  か
<br>──────────<br><b>Cách dùng:</b> Thêm vào cuối câu để tạo câu hỏi.
<br>──────────<br><b>Ví dụ:</b>
<br>これはあなたの傘ですか。<br>(Kore wa anata no kasa desu ka?) <br>→ Đây là ô của bạn phải không?') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('10.  から  (Kara) Từ; Bởi vì', 'Common', '     <b>Công thức:</b> N +  から (Từ); Câu 1 +  から + Câu 2 (Bởi vì)
<br>──────────<br><b>Cách dùng:</b> Chỉ điểm bắt đầu hoặc nguyên nhân.
<br>──────────<br><b>Ví dụ:</b>
<br>９時から働きます。<br>(Ku-ji kara hatarakimasu.) <br>→ Tôi làm việc từ 9 giờ.
<br><br>時間がないから、急ぎます。<br>(Jikan ga nai kara, isogimasu.) <br>→ Vì không có thời gian nên tôi sẽ khẩn trương.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('11.  方  (Kata) Cách làm ~', 'Common', '     <b>Công thức:</b> V-ます (bỏ  ます) +  方 (かた)
<br>──────────<br><b>Cách dùng:</b> Biến động từ thành danh từ chỉ "cách thức thực hiện hành động".
<br>──────────<br><b>Ví dụ:</b>
<br>この漢字の読み方が分かりません。<br>(Kono kanji no yomikata ga wakarimasen.) <br>→ Tôi không biết cách đọc chữ Hán này.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('12.  まで  (Made) Cho đến khi; đến', 'Common', '     <b>Công thức:</b> N +  まで
<br>──────────<br><b>Cách dùng:</b> Chỉ điểm kết thúc về thời gian hoặc không gian.
<br>──────────<br><b>Ví dụ:</b>
<br>５時まで働きます。<br>(Go-ji made hatarakimasu.) <br>→ Tôi làm việc đến 5 giờ.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('13.  前に  (Mae ni) Trước khi; ở phía trước', 'Common', '     <b>Công thức:</b> V-る / N +  の +  前に
<br>──────────<br><b>Cách dùng:</b> Diễn tả hành động xảy ra trước một hành động khác hoặc một thời điểm.
<br>──────────<br><b>Ví dụ:</b>
<br>寝る前に、本を読みます。<br>(Neru mae ni, hon o yomimasu.) <br>→ Trước khi ngủ, tôi đọc sách.
<br><br>食事の前に、手を洗います。<br>(Shokuji no mae ni, te o araimasu.) <br>→ Trước
bữa ăn, tôi rửa tay.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('14.  ませんか  (Masen ka) Bạn có muốn ~ không? (Lời mời/rủ rê)', 'Common', '     <b>Công thức:</b> V-ます (bỏ  ます) +  ませんか
<br>──────────<br><b>Cách dùng:</b> Mời ai đó cùng làm gì một cách lịch sự.
<br>──────────<br><b>Ví dụ:</b>
<br>一緒に映画を見ませんか。<br>(Issho ni eiga o mimasen ka?) <br>→ Cùng đi xem phim không?') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('15.  ましょう  (Mashou) Chúng ta hãy ~', 'Common', '     <b>Công thức:</b> V-ます (bỏ  ます) +  ましょう
<br>──────────<br><b>Cách dùng:</b> Đề nghị, rủ rê cùng làm gì (mang tính chủ động hơn  ませんか).
<br>──────────<br><b>Ví dụ:</b>
<br>昼ご飯を食べましょう。<br>(Hirugohan o tabemashou.) <br>→ Chúng ta hãy ăn trưa nào.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('16.  も  (Mo) Cũng; nữa', 'Common', '     <b>Công thức:</b> Thay thế  は,  が,  を bằng  も. Với các trợ từ khác thì thêm  も sau trợ từ (にも,  でも,  へも...).
<br>──────────<br><b>Cách dùng:</b> Diễn tả sự tương đồng, lặp lại.
<br>──────────<br><b>Ví dụ:</b>
<br>私も学生です。<br>(Watashi mo gakusei desu.) <br>→ Tôi cũng là học sinh.
<br><br>コーヒーも飲みます。<br>(Koohii mo nomimasu.) <br>→ Tôi cũng uống cà phê.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('17.  もう  (Mou) Đã; không còn nữa', 'Common', '     <b>Công thức:</b>  もう + V-ました (Đã);  もう + V-ません / V-ない (Không còn nữa).
<br>──────────<br><b>Cách dùng:</b> Diễn tả hành động đã hoàn thành hoặc không còn tiếp diễn.
<br>──────────<br><b>Ví dụ:</b>
<br>もう昼ご飯を食べましたか。<br>(Mou hirugohan o tabemashita ka?) <br>→ Bạn đã ăn trưa chưa?
<br><br>もうタバコは吸いません。<br>(Mou tabako wa suimasen.) <br>→ Tôi không còn hút
thuốc lá nữa.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('18.  ないでください  (Naide kudasai) Xin đừng làm ~', 'Common', '     <b>Công thức:</b> V-ない +  でください
<br>──────────<br><b>Cách dùng:</b> Yêu cầu ai đó đừng làm một việc gì đó.
<br>──────────<br><b>Ví dụ:</b>
<br>ここで写真を撮らないでください。<br>(Koko de shashin o toranaide kudasai.)
<br>→ Xin đừng chụp ảnh ở đây.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('19.  なる  (Naru) Trở thành', 'Common', '     <b>Công thức:</b>
<br>N +  に +  なる
<br><br>A-na +  に +  なる
<br><br>A-i (bỏ  い) +  く +  なる
<br>──────────<br><b>Cách dùng:</b> Diễn tả sự thay đổi, biến đổi trạng thái.
<br>──────────<br><b>Ví dụ:</b>
<br>医者になりたいです。<br>(Isha ni naritai desu.) <br>→ Tôi muốn trở thành bác sĩ.
<br><br>部屋がきれいになりました。<br>(Heya ga kirei ni narimashita.) <br>→ Căn phòng đã trở nên sạch sẽ.
<br><br>寒くなりました。<br>(Samuku narimashita.) <br>→ Trời đã trở lạnh.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('20.  に  (Ni) Trợ từ chỉ điểm đến; ở; tại; vào (thời gian); cho (đối tượng)', 'Common', '     <b>Công thức:</b> N +  に
<br>──────────<br><b>Cách dùng:</b>
<br>Chỉ điểm đến:  学校に行きます。<br>(Gakkou ni ikimasu.) <br>→ Đi đến trường.
<br><br>Chỉ nơi tồn tại:  ここにいます。<br>(Koko ni imasu.) <br>→ Tôi ở đây.
<br><br>Chỉ thời điểm:  ７時に起きます。<br>(Shichi-ji ni okimasu.) <br>→ Thức dậy vào lúc 7 giờ.
<br><br>Chỉ đối tượng:  友達に会います。<br>(Tomodachi ni aimasu.) <br>→ Gặp bạn.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('21.  に行く  (Ni iku) Đi để làm ~', 'Common', '     <b>Công thức:</b> V-ます (bỏ  ます) / Danh động từ +  に +  行く /  来る /  帰る
<br>──────────<br><b>Cách dùng:</b> Diễn tả mục đích của việc di chuyển.
<br>──────────<br><b>Ví dụ:</b>
<br>日本へ働きに来ました。<br>(Nihon e hataraki ni kimashita.) <br>→ Tôi đến Nhật để làm việc.
<br><br>買い物に行きます。<br>(Kaimono ni ikimasu.) <br>→ Tôi đi mua sắm.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('22.  の  (No) Trợ từ sở hữu (của); bổ nghĩa', 'Common', '     <b>Công thức:</b> N1 +  の + N2
<br>──────────<br><b>Cách dùng:</b> Nối hai danh từ, chỉ sự sở hữu, thuộc tính, vị trí...
<br>──────────<br><b>Ví dụ:</b>
<br>これは私の本です。<br>(Kore wa watashi no hon desu.) <br>→ Đây là sách của tôi.
<br><br>日本語の先生。<br>(Nihongo no sensei.) <br>→ Giáo viên tiếng Nhật.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('23.  ので  (Node) Bởi vì; do đó; vì ~', 'Common', '     <b>Công thức:</b> V-thường / A-i / A-na / N +  な +  ので + Câu 2
<br>──────────<br><b>Cách dùng:</b> Chỉ nguyên nhân, lý do (mang tính khách quan và nhẹ nhàng hơn  から).
<br>──────────<br><b>Ví dụ:</b>
<br>雨が降っているので、行きません。<br>(Ame ga futte iru node, ikimasen.) <br>→ Vì trời đang mưa nên tôi không đi.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('24.  を  (O) Trợ từ chỉ đối tượng (tân ngữ)', 'Common', '     <b>Công thức:</b> N +  を + Tha động từ
<br>──────────<br><b>Cách dùng:</b> Đánh dấu đối tượng trực tiếp của hành động.
<br>──────────<br><b>Ví dụ:</b>
<br>ご飯を食べます。<br>(Gohan o tabemasu.) <br>→ Tôi ăn cơm.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('25.  たことがある  (Ta koto ga aru) Đã từng làm gì đó', 'Common', '     <b>Công thức:</b> V-た +  ことがある
<br>──────────<br><b>Cách dùng:</b> Diễn tả kinh nghiệm, trải nghiệm trong quá khứ.
<br>──────────<br><b>Ví dụ:</b>
<br>富士山に登ったことがあります。<br>(Fuji-san ni nobotta koto ga arimasu.) <br>→ Tôi đã từng leo núi Phú Sĩ.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('26.  たい  (Tai) Muốn làm gì đó', 'Common', '     <b>Công thức:</b> V-ます (bỏ  ます) +  たいです
<br>──────────<br><b>Cách dùng:</b> Diễn tả mong muốn làm gì đó (ngôi thứ nhất).
<br>──────────<br><b>Ví dụ:</b>
<br>日本へ行きたいです。<br>(Nihon e ikitai desu.) <br>→ Tôi muốn đi Nhật.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('27.  たり～たり  (Tari ~ tari) Làm những việc như A và B', 'Common', '     <b>Công thức:</b> V1-た +  り + V2-た +  り +  する
<br>──────────<br><b>Cách dùng:</b> Liệt kê một vài hành động tiêu biểu, không theo thứ tự.
<br>──────────<br><b>Ví dụ:</b>
<br>日曜日は本を読んだり、映画を見たりします。<br>(Nichiyoubi wa hon o yondari, eiga o mitari shimasu.) <br>→ Vào Chủ nhật, tôi làm những việc như đọc sách, xem phim...') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('28.  ている  (Te iru) Hành động đang diễn ra hoặc trạng thái', 'Common', '     <b>Công thức:</b> V-て +  いる
<br>──────────<br><b>Cách dùng:</b>
<br>Diễn tả hành động đang diễn ra:  雨が降っています。<br>(Ame ga futte imasu.) <br>→ Trời đang mưa.
<br><br>Diễn tả trạng thái kết quả:  結婚しています。<br>(Kekkon shite imasu.) <br>→ Tôi đã kết hôn (và đang trong trạng thái đó).
<br><br>Diễn tả thói quen, nghề nghiệp:  銀行で働いています。<br>(Ginkou de hataraite
imasu.) <br>→ Tôi đang làm việc ở ngân hàng.
<br>──────────<br><b>Ví dụ:</b>
<br>今、音楽を聞いています。<br>(Ima, ongaku o kiite imasu.) <br>→ Bây giờ tôi đang nghe nhạc.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('29.  てください  (Te kudasai) Vui lòng làm ~', 'Common', '     <b>Công thức:</b> V-て +  ください
<br>──────────<br><b>Cách dùng:</b> Đưa ra yêu cầu, nhờ vả một cách lịch sự.
<br>──────────<br><b>Ví dụ:</b>
<br>ちょっと待ってください。<br>(Chotto matte kudasai.) <br>→ Xin vui lòng đợi một chút.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('30.  てもいいです  (Te mo ii desu) ~ cũng được; ~ cũng không sao; tôi có thể ~ không?', 'Common', '     <b>Công thức:</b> V-て +  もいいです
<br>──────────<br><b>Cách dùng:</b> Diễn tả sự cho phép.
<br>──────────<br><b>Ví dụ:</b>
<br>写真を撮ってもいいですか。<br>(Shashin o totte mo ii desu ka?) <br>→ Tôi chụp ảnh có được không?
<br><br>はい、撮ってもいいですよ。<br>(Hai, totte mo ii desu yo.) <br>→ Vâng, bạn chụp
cũng được.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('31.  と  (To) Và; với', 'Common', '     <b>Công thức:</b> N1 +  と + N2
<br>──────────<br><b>Cách dùng:</b>
<br>Liệt kê toàn bộ các danh từ:  机の上に本とペンがあります。<br>(Tsukue no ue ni hon to pen ga arimasu.) <br>→ Trên bàn có sách và bút.
<br><br>Chỉ người cùng thực hiện hành động:  友達と映画を見ます。<br>(Tomodachi to
eiga o mimasu.) <br>→ Tôi xem phim với bạn.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('32.  や  (Ya) Và; hoặc', 'Common', '     <b>Công thức:</b> N1 +  や + N2 + (など)
<br>──────────<br><b>Cách dùng:</b> Liệt kê không đầy đủ, chỉ nêu vài ví dụ tiêu biểu. Thường đi kèm với  など  (nado <br>→ vân vân).
<br>──────────<br><b>Ví dụ:</b>
<br>かばんの中に本やノートなどがあります。<br>(Kaban no naka ni hon ya nooto nado ga arimasu.) <br>→ Trong cặp có sách, vở, vân vân.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('33.  じゃない  /  ではない  (Janai / Dewa nai) Không phải là', 'Common', '     <b>Công thức:</b> Danh từ / Tính từ đuôi  な +  じゃない /  ではない (hoặc  じゃありません /  ではありません)
<br>──────────<br><b>Cách dùng:</b> Dạng phủ định của  だ  / です.  ではない  / ではありません  trang trọng hơn  じゃない  / じゃありません.
<br>──────────<br><b>Ví dụ:</b>
<br>彼は学生ではありません。<br>(Kare wa gakusei dewa arimasen.) <br>→ Anh ấy không phải là học sinh.
<br><br>ここは静かじゃないです。<br>(Koko wa shizuka ja nai desu.) <br>→ Nơi đây không
yên tĩnh.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('34.  か～か  (Ka ~ ka) Hoặc', 'Common', '     <b>Công thức:</b> N1 +  か + N2 +  か
<br>──────────<br><b>Cách dùng:</b> Dùng để đưa ra lựa chọn giữa hai hoặc nhiều danh từ, hoặc trong câu hỏi lựa chọn.
<br>──────────<br><b>Ví dụ:</b>
<br>コーヒーかお茶、どちらがいいですか。<br>(Koohii ka ocha, dochira ga ii desu ka?) <br>→ Cà phê hay trà, bạn thích cái nào hơn?
<br><br>行くか行かないか、決めてください。<br>(Iku ka ikanai ka, kimete kudasai.) <br>→ Hãy quyết định đi hay không đi.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('35.  けど  /  けれども  (Kedo / Keredomo) Nhưng; tuy nhiên', 'Common', '     <b>Công thức:</b> Câu 1 +  けど /  けれども + Câu 2
<br>──────────<br><b>Cách dùng:</b> Nối hai mệnh đề có ý nghĩa tương phản hoặc đối lập.  けれども  trang trọng hơn  けど.
<br>──────────<br><b>Ví dụ:</b>
<br>このレストランは高いけど、おいしいです。<br>(Kono resutoran wa takai kedo, oishii desu.) <br>→ Nhà hàng này đắt nhưng ngon.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('36.  まだ  (Mada) Vẫn; chưa', 'Common', '     <b>Công thức:</b>  まだ + V-ています (Vẫn);  まだ + V-ていません (Chưa).
<br>──────────<br><b>Cách dùng:</b> Diễn tả hành động vẫn còn đang tiếp diễn hoặc chưa xảy ra.
<br>──────────<br><b>Ví dụ:</b>
<br>雨はまだ降っています。<br>(Ame wa mada futte imasu.) <br>→ Trời vẫn đang mưa.
<br><br>彼はまだ来ていません。<br>(Kare wa mada kite imasen.) <br>→ Anh ấy vẫn chưa đến.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('37.  ましょうか  (Mashou ka) Tôi sẽ ~ nhé?; Dùng để đề nghị giúp đỡ', 'Common', '     <b>Công thức:</b> V-ます (bỏ  ます) +  ましょうか
<br>──────────<br><b>Cách dùng:</b> Đề nghị làm gì đó cho người nghe một cách lịch sự.
<br>──────────<br><b>Ví dụ:</b>
<br>荷物を持ちましょうか。<br>(Nimotsu o mochimashou ka?) <br>→ Tôi mang hành lý giúp bạn nhé?
<br><br>窓を開けましょうか。<br>(Mado o akemashou ka?) <br>→ Tôi mở cửa sổ nhé?') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('38.  ないでください  (Naide kudasai) Xin đừng làm ~', 'Common', '     <b>Công thức:</b> V-ない +  でください
<br>──────────<br><b>Cách dùng:</b> Yêu cầu ai đó đừng làm gì một cách lịch sự.
<br>──────────<br><b>Ví dụ:</b>
<br>心配しないでください。<br>(Shinpai shinaide kudasai.) <br>→ Xin đừng lo lắng.
<br><br>走らないでください。<br>(Hashiranaide kudasai.) <br>→ Xin đừng chạy.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('39.  ないといけない  /  なくてはいけない  (Nai to ikenai / Nakute wa ikenai) Phải làm ~', 'Common', '     <b>Công thức:</b> V-ない (bỏ  い) +  ければいけない /  くてはいけない
<br>──────────<br><b>Cách dùng:</b> Diễn tả sự bắt buộc, nghĩa vụ phải làm gì đó.
<br>──────────<br><b>Ví dụ:</b>
<br>薬を飲まないといけません。<br>(Kusuri o nomanai to ikemasen.) <br>→ Phải uống thuốc.
<br><br>早く起きなくてはいけません。<br>(Hayaku okinakute wa ikemasen.) <br>→ Phải
dậy sớm.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('40.  なくてもいい  (Nakute mo ii) Không cần phải ~', 'Common', '     <b>Công thức:</b> V-ない (bỏ  い) +  くてもいいです
<br>──────────<br><b>Cách dùng:</b> Diễn tả sự không cần thiết phải làm gì đó.
<br>──────────<br><b>Ví dụ:</b>
<br>来なくてもいいです。<br>(Konakute mo ii desu.) <br>→ Bạn không cần đến cũng được.
<br><br>名前を書かなくてもいいです。<br>(Namae o kakanakute mo ii desu.) <br>→ Không
cần viết tên cũng được.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('41.  んです  /  のです  (N desu / No desu) Dùng để giải thích, nhấn mạnh, hoặc hỏi lý do', 'Common', '     <b>Công thức:</b> V-thường / A-i / A-na / N +  な +  んです /  のです
<br>──────────<br><b>Cách dùng:</b> Làm cho câu nói có sắc thái mềm mại hơn, như đang giải thích hoặc muốn biết thêm thông tin.
<br>──────────<br><b>Ví dụ:</b>
<br>どうしたんですか。<br>(Doushitan desu ka?) <br>→ Bạn bị sao vậy? (Hỏi lý do)
<br><br>頭が痛いんです。<br>(Atama ga itain desu.) <br>→ (Là vì) tôi bị đau đầu. (Giải thích)') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('42.  ね  (Ne) Phải không? nhỉ? nhé?', 'Common', '     <b>Công thức:</b> Câu +  ね
<br>──────────<br><b>Cách dùng:</b> Đặt cuối câu để tìm sự đồng tình, xác nhận, hoặc làm mềm câu.
<br>──────────<br><b>Ví dụ:</b>
<br>いい天気ですね。<br>(Ii tenki desu ne.) <br>→ Thời tiết đẹp nhỉ?
<br><br>そうですね。<br>(Sou desu ne.) <br>→ Đúng vậy nhỉ.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('43.  にする  (Ni suru) Quyết định ~', 'Common', '     <b>Công thức:</b> Danh từ +  にする
<br>──────────<br><b>Cách dùng:</b> Diễn tả quyết định lựa chọn một cái gì đó.
<br>──────────<br><b>Ví dụ:</b>
<br>飲み物は何にしますか。<br>(Nomimono wa nani ni shimasu ka?) <br>→ Đồ uống bạn chọn gì?
<br><br>コーヒーにします。<br>(Koohii ni shimasu.) <br>→ Tôi chọn cà phê.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('44.  のが下手  /  上手  /  好き  (No ga heta / Jouzu / Suki) Kém / Giỏi / Thích làm gì đó', 'Common', '     <b>Công thức:</b> V-る +  の +  が +  下手 /  上手 /  好き +  です
<br>──────────<br><b>Cách dùng:</b> Dùng  の  để danh từ hóa động từ, sau đó kết hợp với các tính từ chỉ khả năng, sở thích.
<br>──────────<br><b>Ví dụ:</b>
<br>私は歌うのが好きです。<br>(Watashi wa utau no ga suki desu.) <br>→ Tôi thích hát.
<br><br>彼は料理を作るのが上手です。<br>(Kare wa ryouri o tsukuru no ga jouzu desu.) <br>→ Anh ấy giỏi nấu ăn.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('45.  をください  (O kudasai) Vui lòng cho tôi ~', 'Common', '     <b>Công thức:</b> Danh từ +  を +  ください
<br>──────────<br><b>Cách dùng:</b> Dùng khi gọi món, mua hàng hoặc yêu cầu ai đó đưa cho mình thứ gì.
<br>──────────<br><b>Ví dụ:</b>
<br>水をください。<br>(Mizu o kudasai.) <br>→ Vui lòng cho tôi nước.
<br><br>これをください。<br>(Kore o kudasai.) <br>→ Vui lòng cho tôi cái này.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('46.  すぎる  (Sugiru) Quá nhiều; quá ~', 'Common', '     <b>Công thức:</b> V-ます (bỏ  ます) / A-i (bỏ  い) / A-na +  すぎる
<br>──────────<br><b>Cách dùng:</b> Diễn tả sự vượt quá mức độ bình thường, thường mang ý nghĩa tiêu cực.
<br>──────────<br><b>Ví dụ:</b>
<br>食べすぎました。<br>(Tabesugimashita.) <br>→ Tôi đã ăn quá nhiều.
<br><br>この服は大きすぎます。<br>(Kono fuku wa ookisugimasu.) <br>→ Cái áo này quá lớn.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('47.  てから  (Te kara) Sau khi làm ~', 'Common', '     <b>Công thức:</b> V1-て +  から、V2
<br>──────────<br><b>Cách dùng:</b> Diễn tả hành động V2 xảy ra sau khi V1 kết thúc.
<br>──────────<br><b>Ví dụ:</b>
<br>宿題をしてから、遊びます。<br>(Shukudai o shite kara, asobimasu.) <br>→ Sau khi
làm bài tập, tôi sẽ đi chơi.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('48.  てはいけない  (Te wa ikenai) Không được; không thể; không được phép', 'Common', '     <b>Công thức:</b> V-て +  は +  いけない
<br>──────────<br><b>Cách dùng:</b> Diễn tả sự cấm đoán. Trong văn nói thường dùng  ちゃいけない  /  じゃいけない.
<br>──────────<br><b>Ví dụ:</b>
<br>ここで泳いではいけません。<br>(Koko de oyoide wa ikemasen.) <br>→ Không được bơi ở đây.
<br><br>寝ちゃいけない！(Necha ikenai!) <br>→ Không được ngủ! (Văn nói)') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('49.  とき  (Toki) Khi; vào lúc này', 'Common', '     <b>Công thức:</b> V-thường / A-i / A-na / N +  の +  とき
<br>──────────<br><b>Cách dùng:</b> Chỉ thời điểm xảy ra hành động/trạng thái.
<br>──────────<br><b>Ví dụ:</b>
<br>子供のとき、よく公園で遊びました。<br>(Kodomo no toki, yoku kouen de asobimashita.) <br>→ Khi còn nhỏ, tôi thường chơi ở công viên.
<br><br>困ったとき、相談してください。<br>(Komatta toki, soudan shite kudasai.) <br>→ Khi gặp khó khăn, hãy trao đổi nhé.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('50.  とても  (Totemo) Rất; vô cùng', 'Common', '     <b>Công thức:</b>  とても + Tính từ / Phó từ
<br>──────────<br><b>Cách dùng:</b> Nhấn mạnh mức độ.
<br>──────────<br><b>Ví dụ:</b>
<br>このケーキはとてもおいしいです。<br>(Kono keeki wa totemo oishii desu.) <br>→ Cái bánh này rất ngon.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('51.  つもり  (Tsumori) Dự định ~; có ý định ~', 'Common', '     <b>Công thức:</b> V-る / V-ない +  つもりです
<br>──────────<br><b>Cách dùng:</b> Thể hiện ý định, kế hoạch của người nói.
<br>──────────<br><b>Ví dụ:</b>
<br>大学に入るつもりです。<br>(Daigaku ni hairu tsumori desu.) <br>→ Tôi dự định vào đại học.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('52.  は  (Wa) Trợ từ chủ đề', 'Common', '     <b>Công thức:</b> Danh từ +  は
<br>──────────<br><b>Cách dùng:</b> Đánh dấu chủ đề chính của câu.
<br>──────────<br><b>Ví dụ:</b>
<br>私は医者です。<br>(Watashi wa isha desu.) <br>→ Tôi là bác sĩ.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('53.  よ  (Yo) Nhấn mạnh; thông báo', 'Common', '     <b>Công thức:</b> Câu +  よ
<br>──────────<br><b>Cách dùng:</b> Đặt cuối câu để nhấn mạnh thông tin, hoặc nói cho người nghe biết điều họ chưa biết.
<br>──────────<br><b>Ví dụ:</b>
<br>危ないですよ！(Abunai desu yo!) <br>→ Nguy hiểm đấy!
<br><br>この映画は面白いですよ。<br>(Kono eiga wa omoshiroi desu yo.) <br>→ Bộ phim này hay đấy (bạn chưa biết nên tôi nói cho).') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('54.  でしょう  (Deshou) Có lẽ; phải không?', 'Common', '     <b>Công thức:</b> V-thường / A-i / A-na / N +  でしょう
<br>──────────<br><b>Cách dùng:</b> Dùng để diễn tả sự phỏng đoán, suy luận của người nói, hoặc dùng để hỏi xác nhận một cách lịch sự, mềm mại hơn  ～ですか.
<br>──────────<br><b>Ví dụ:</b>
<br>明日は雨が降るでしょう。<br>(Ashita wa ame ga furu deshou.) <br>→ Có lẽ ngày mai trời sẽ mưa.
<br><br>これは山田さんの傘でしょう？<br>→ (Kore wa Yamada-san no kasa deshou?) <br>→ Đây là ô của anh Yamada phải không ạ?') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('55.  どんな  (Donna) Loại ~ nào; kiểu ~ nào', 'Common', '     <b>Công thức:</b>  どんな + Danh từ + ...
<br>──────────<br><b>Cách dùng:</b> Là một từ để hỏi, dùng khi muốn hỏi về tính chất, đặc điểm, hoặc thể loại của một danh từ.
<br>──────────<br><b>Ví dụ:</b>
<br>どんなスポーツが好きですか。<br>(Donna supootsu ga suki desu ka?) <br>→ Bạn thích loại thể thao nào?
<br><br>田中さんはどんな人ですか。<br>(Tanaka-san wa donna hito desu ka?) <br>→ Anh
Tanaka là người như thế nào?') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('56.  どうして  (Doushite) Tại sao; vì lý do gì', 'Common', '     <b>Công thức:</b>  どうして + Câu hỏi?
<br>──────────<br><b>Cách dùng:</b> Là từ để hỏi về nguyên nhân, lý do. Thường dùng trong văn nói. Tương đương với  なぜ  (naze) nhưng  なぜ  trang trọng hơn.
<br>──────────<br><b>Ví dụ:</b>
<br>どうして日本語を勉強していますか。<br>(Doushite Nihongo o benkyou shite imasu ka?) <br>→ Tại sao bạn học tiếng Nhật?
<br><br>どうして遅れましたか。<br>(Doushite okuremashita ka?) <br>→ Tại sao bạn đến
muộn?') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('57.  どうやって  (Douyatte) Làm thế nào; bằng cách nào', 'Common', '     <b>Công thức:</b>  どうやって + Động từ +  か?
<br>──────────<br><b>Cách dùng:</b> Là từ để hỏi về phương pháp, cách thức thực hiện một hành động.
<br>──────────<br><b>Ví dụ:</b>
<br>駅までどうやって行きますか。<br>(Eki made douyatte ikimasu ka?) <br>→ Đi đến nhà ga bằng cách nào?
<br><br>この漢字はどうやって読みますか。<br>(Kono kanji wa douyatte yomimasu
ka?) <br>→ Chữ Hán này đọc như thế nào?') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('58.  一緒に  (Issho ni) Cùng nhau', 'Common', '     <b>Công thức:</b> (Danh từ chỉ người) +  と +  一緒に + Động từ
<br>──────────<br><b>Cách dùng:</b> Diễn tả hành động được thực hiện cùng với một ai đó.
<br>──────────<br><b>Ví dụ:</b>
<br>週末、友達と一緒に買い物に行きます。<br>(Shuumatsu, tomodachi to issho ni kaimono ni ikimasu.) <br>→ Cuối tuần, tôi đi mua sắm cùng với bạn.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('59.  いつも  (Itsumo) Luôn luôn; thường xuyên', 'Common', '     <b>Công thức:</b>  いつも + Động từ
<br>──────────<br><b>Cách dùng:</b> Là một phó từ chỉ tần suất, diễn tả một hành động hay thói quen lặp đi lặp lại.
<br>──────────<br><b>Ví dụ:</b>
<br>父はいつも朝早く起きます。<br>(Chichi wa itsumo asa hayaku okimasu.) <br>→ Bố tôi luôn luôn dậy sớm vào buổi sáng.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('60.  なくちゃ  (Nakucha) Phải làm (văn nói)', 'Common', '     <b>Công thức:</b> V-ない (bỏ  い) +  くちゃ
<br>──────────<br><b>Cách dùng:</b> Là dạng nói tắt, thân mật của  なくてはいけない  (phải làm). Thường dùng trong hội thoại hàng ngày.
<br>──────────<br><b>Ví dụ:</b>
<br>もう帰らなくちゃ。<br>(Mou kaeranakucha.) <br>→ Phải về thôi.
<br><br>宿題をしなくちゃ。<br>(Shukudai o shinakucha.) <br>→ Phải làm bài tập thôi.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('61.  お  /  ご  (O / Go) Kính ngữ; tiền tố kính ngữ', 'Common', '     <b>Công thức:</b>  お + Danh từ (gốc Nhật);  ご + Danh từ (gốc Hán)
<br>──────────<br><b>Cách dùng:</b> Thêm vào trước danh từ để thể hiện sự lịch sự, tôn kính.
<br>──────────<br><b>Ví dụ:</b>
<br>お名前 (O-namae) <br>→ Tên (lịch sự)
<br><br>お仕事 (O-shigoto) <br>→ Công việc (lịch sự)
<br><br>ご連絡 (Go-renraku) <br>→ Liên lạc (lịch sự)
<br><br>ご飯 (Go-han) <br>→ Cơm') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('62.  しかし  (Shikashi) Nhưng; tuy nhiên', 'Common', '     <b>Công thức:</b> Câu 1.  しかし、Câu 2.
<br>──────────<br><b>Cách dùng:</b> Dùng để nối hai câu có ý nghĩa trái ngược. Mang tính trang trọng, thường dùng trong văn viết hơn là văn nói.
<br>──────────<br><b>Ví dụ:</b>
<br>彼は努力しました。<br>しかし、失敗しました。<br>(Kare wa doryoku shimashita. Shikashi, shippai shimashita.) <br>→ Anh ấy đã nỗ lực. Tuy nhiên, anh ấy đã thất bại.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('63.  それから  (Sorekara) Và; và sau đó; sau đó', 'Common', '     <b>Công thức:</b> Câu 1.  それから、Câu 2.
<br>──────────<br><b>Cách dùng:</b> Dùng để nối các hành động theo trình tự thời gian hoặc để bổ sung thêm thông tin.
<br>──────────<br><b>Ví dụ:</b>
<br>朝ご飯を食べて、歯を磨きます。<br>それから、会社へ行きます。<br> (Asagohan o tabete, ha o migakimasu. Sorekara, kaisha e ikimasu.) <br>→ Tôi ăn sáng, đánh răng. Sau đó, tôi đi làm.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('64.  そして  (Soshite) Và; và sau đó', 'Common', '     <b>Công thức:</b> Câu 1.  そして、Câu 2.
<br>──────────<br><b>Cách dùng:</b> Dùng để nối hai câu theo trình tự hoặc bổ sung thông tin, tương tự  それから  nhưng ít nhấn mạnh vào trình tự thời gian hơn, có thể dùng để nối các ý song song.
<br>──────────<br><b>Ví dụ:</b>
<br>彼は親切です。<br>そして、頭もいいです。<br>(Kare wa shinsetsu desu. Soshite, atama mo ii desu.) <br>→ Anh ấy tốt bụng. Và, cũng thông minh nữa.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('65.  はどうですか  (Wa dou desu ka) ~ thì thế nào; ~ ra sao?', 'Common', '     <b>Công thức:</b> Danh từ +  は +  どうですか
<br>──────────<br><b>Cách dùng:</b> Dùng để hỏi ý kiến, cảm nhận hoặc đưa ra lời gợi ý, đề nghị.
<br>──────────<br><b>Ví dụ:</b>
<br>新しい先生はどうですか。<br>(Atarashii sensei wa dou desu ka?) <br>→ Thầy giáo mới thế nào?
<br><br>お茶はどうですか。<br>(Ocha wa dou desu ka?) <br>→ Bạn dùng trà nhé?') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('66.  より～ほうが  (~ Yori ~ hou ga) [B] thì ~ hơn [A]', 'Common', '     <b>Công thức:</b> N2 +  より + N1 +  の +  ほうが + Tính từ +  です
<br>──────────<br><b>Cách dùng:</b> Dùng để so sánh, nhấn mạnh vào N1 tốt hơn/kém hơn... so với N2.
<br>──────────<br><b>Ví dụ:</b>
<br>バスより電車のほうが速いです。<br>(Basu yori densha no hou ga hayai desu.)
<br>→ So với xe buýt thì tàu điện nhanh hơn.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('67.  でも  (Demo) Nhưng / Hoặc là; chẳng hạn như', 'Common', '     <b>Công thức:</b> Câu 1.  でも、Câu 2. / Danh từ +  でも
<br>──────────<br><b>Cách dùng:</b>
<br>Đứng đầu câu để nối hai vế trái nghĩa (thường dùng trong văn nói).
<br><br>Đứng sau danh từ để đưa ra ví dụ, gợi ý.
<br>──────────<br><b>Ví dụ:</b>
<br>行きたいです。<br>でも、時間がありません。<br>(Ikitai desu. Demo, jikan ga arimasen.) <br>→ Tôi muốn đi. Nhưng tôi không có thời gian.
<br><br>お茶でも飲みませんか。<br>(Ocha demo nomimasen ka?) <br>→ Uống trà hay gì đó
không?') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('68.  ちゃいけない  /  じゃいけない  (Chaikenai / Jaikenai) Không được làm (văn nói)', 'Common', '     <b>Công thức:</b>
<br>V-て (bỏ  て) +  ちゃ<br>──────────<br><b>Ví dụ:</b>  食べて →  食べちゃいけない)
<br><br>V-で (bỏ  で) +  じゃ<br>──────────<br><b>Ví dụ:</b>  飲んで →  飲んじゃいけない)
<br><br>V-して →  しちゃいけない
<br>──────────<br><b>Cách dùng:</b> Là dạng nói tắt, thân mật và suồng sã của  ～てはいけない. Được sử dụng rất phổ biến trong hội thoại hàng ngày, đặc biệt là giữa bạn bè, người thân.
<br>──────────<br><b>Ví dụ:</b>
<br>夜遅くまでゲームをしちゃいけないよ。<br>(Yoru osoku made geemu o shicha ikenai yo.) <br>→ Không được chơi game đến khuya đâu nhé.
<br><br>そんなに飲んじゃいけない。<br>(Sonna ni nonja ikenai.) <br>→ Không được uống
nhiều như thế.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('6.  だろう  (Darou) Có lẽ; chắc là; phải không? (Thể thông thường)', 'Common', '     <b>Công thức:</b> V-thường / A-i / A-na (bỏ  な) / N +  だろう
<br>──────────<br><b>Cách dùng:</b> Là thể thông thường của  でしょう. Dùng để diễn tả sự phỏng đoán hoặc tìm kiếm sự đồng tình một cách thân mật. Trong văn nói, thường được nam giới sử dụng nhiều hơn.
<br>──────────<br><b>Ví dụ:</b>
<br>彼はもうすぐ来るだろう。<br>(Kare wa mousugu kuru darou.) <br>→ Chắc là anh ấy sắp đến rồi.
<br><br>これでいいだろう？<br>→ (Kore de ii darou?) <br>→ Thế này là được rồi phải không?') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('70.  まだ～ていません  (Mada ~te imasen) Vẫn chưa ~', 'Common', '     <b>Công thức:</b>  まだ + V-て +  いません (Thể lịch sự) /  いない (Thể thông thường)
<br>──────────<br><b>Cách dùng:</b> Nhấn mạnh rằng một hành động được mong đợi hoặc nên xảy ra nhưng tại thời điểm nói vẫn chưa xảy ra.
<br>──────────<br><b>Ví dụ:</b>
<br>昼ご飯はまだ食べていません。<br>(Hirugohan wa mada tabete imasen.) <br>→ Tôi vẫn chưa ăn trưa.
<br><br>レポートはまだ書いていない。<br>(Repooto wa mada kaite inai.) <br>→ Tôi vẫn
chưa viết báo cáo.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('71.  へ  (E) Đến; về phía (chỉ hướng)', 'Common', '     <b>Công thức:</b> Danh từ (Địa điểm) +  へ + Động từ di chuyển (行く,  来る,  帰る...)
<br>──────────<br><b>Cách dùng:</b> Chỉ phương hướng của hành động di chuyển. So với  に,  へ  (đọc là "e") nhấn mạnh hướng đi hơn là điểm đến cụ thể. Trong nhiều trường hợp, có thể dùng thay  に, nhưng  へ  gợi cảm giác di chuyển về phía đó.
<br>──────────<br><b>Ví dụ:</b>
<br>駅へ行きます。<br>(Eki e ikimasu.) <br>→ Tôi đi về phía nhà ga.
<br><br>大阪へ出張します。<br>(Oosaka e shucchou shimasu.) <br>→ Tôi đi công tác (về phía) Osaka.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('72.  なあ  (Naa) Trợ từ cuối câu (biểu cảm)', 'Common', '     <b>Công thức:</b> Câu +  なあ
<br>──────────<br><b>Cách dùng:</b> Đặt ở cuối câu để thể hiện cảm xúc mạnh như cảm thán, ngưỡng mộ, mong muốn, hoặc tự nhủ. Thường mang sắc thái thân mật, có phần nam tính.
<br>──────────<br><b>Ví dụ:</b>
<br>きれいだなあ。<br>(Kirei da naa.) <br>→ Đẹp ghê ha!
<br><br>疲れたなあ。<br>(Tsukareta naa.) <br>→ Mệt quá đi~.
<br><br>早く夏休みにならないかなあ。<br>(Hayaku natsuyasumi ni naranai ka naa.) <br>→ Mong hè đến nhanh ghê~.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('73.  でも  (Demo) Nhưng; tuy nhiên / Hoặc là; ví dụ như', 'Common', '     <b>Công thức:</b>
<br>Câu 1.  でも、Câu 2. (Nhưng)
<br><br>Danh từ +  でも + V. (Ví dụ như/Hoặc là)
<br>──────────<br><b>Cách dùng:</b>
<br>Nối hai câu trái nghĩa (thông dụng trong văn nói).
<br><br>Đưa ra một ví dụ không cụ thể, hoặc gợi ý một lựa chọn ("uống trà hay gì đó
không?").
<br>──────────<br><b>Ví dụ:</b>
<br>勉強は嫌いです。<br>でも、テストのために頑張ります。<br>(Benkyou wa kirai desu. Demo, tesuto no tame ni ganbarimasu.) <br>→ Tôi ghét học. Nhưng tôi sẽ cố gắng vì bài kiểm tra.
<br><br>休みの日は、映画でも見ますか。<br>(Yasumi no hi wa, eiga demo mimasu
ka?) <br>→ Ngày nghỉ, xem phim hay gì đó không?') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('74.  ～か～か  (~ka ~ka) Hoặc là A, hoặc là B', 'Common', '     <b>Công thức:</b> [Lựa chọn 1] +  か + [Lựa chọn 2] +  か
<br>──────────<br><b>Cách dùng:</b> Dùng để đưa ra các lựa chọn, thường trong câu hỏi hoặc khi không chắc chắn.
<br>──────────<br><b>Ví dụ:</b>
<br>バスで行くか、電車で行くか、迷っています。<br>(Basu de iku ka, densha de iku ka, mayotte imasu.) <br>→ Tôi đang phân vân không biết nên đi bằng xe buýt hay tàu điện.
<br><br>彼が来るか来ないか、分かりません。<br>(Kare ga kuru ka konai ka,
wakarimasen.) <br>→ Tôi không biết anh ấy có đến hay không.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('75.  ないで  (Naide) Mà không làm ~; Làm [B] mà không làm [A]', 'Common', '     <b>Công thức:</b> V1-ない (bỏ  い) +  ないで, V2.
<br>──────────<br><b>Cách dùng:</b> Dùng để diễn tả việc thực hiện hành động V2 trong khi không thực hiện hành động V1 (V1 thường là hành động được cho là nên làm hoặc thường làm trước V2). Nó chỉ cách thức hoặc hoàn cảnh thực hiện V2.
<br>──────────<br><b>Ví dụ:</b>
<br>傘を持たないで、出かけました。<br>(Kasa o motanai de, dekakemashita.) <br>→ Tôi đã ra ngoài mà không mang ô.
<br><br>何も食べないで、寝ました。<br>(Nani mo tabenai de, nemashita.) <br>→ Tôi đã đi ngủ mà không ăn gì cả.
<br><br>Chú ý: Phân biệt với  ないでください  (xin đừng làm) và  なくて  (dạng TE của
V-nai, thường chỉ nguyên nhân:  時間がなくて、行きませんでした <br>→ Vì không có thời gian nên tôi đã không đi).') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('76.  てある  (Te aru) Đã được làm (nhấn mạnh trạng thái kết quả của hành động có chủ ý)', 'Common', '     <b>Công thức:</b> V-て +  あります /  ある (Thường dùng với Tha động từ <br>→ động từ có tân ngữ).
<br>──────────<br><b>Cách dùng:</b> Diễn tả một trạng thái là kết quả của một hành động được ai đó thực hiện có chủ đích (thường là để chuẩn bị cho việc gì đó), và trạng thái đó vẫn còn tồn tại. Trợ từ thường đi kèm là  が.
<br>──────────<br><b>Ví dụ:</b>
<br>壁にポスターが貼ってあります。<br>(Kabe ni posutaa ga hatte arimasu.) <br>→ Trên tường có tấm áp phích (đã được ai đó) dán (và nó vẫn ở đó).
<br><br>テーブルの上に料理が並べてあります。<br>(Teeburu no ue ni ryouri ga narabete arimasu.) <br>→ Trên bàn có đồ ăn (đã được ai đó) bày sẵn.
<br><br>エアコンがつけてあります。<br>(Eakon ga tsukete arimasu.) <br>→ Máy lạnh (đã được ai đó) bật (và giờ nó đang chạy).
<br><br>So sánh: Với  ～ている,  ～ている  thường dùng với Tự động từ để chỉ trạng
thái tự nhiên (窓が開いています <br>→ Cửa sổ đang mở), hoặc với Tha động từ để chỉ hành động đang diễn ra.  ～てある  nhấn mạnh vào kết quả của hành
động có chủ ý.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('77.  ちゃいけない・じゃいけない  (Chaikenai / Jaikenai) Không được làm (văn nói)', 'Common', '     <b>Công thức:</b> V-て →  ちゃ / V-で →  じゃ +  いけない.
<br>──────────<br><b>Cách dùng:</b> Là dạng nói tắt, thân mật của  ～てはいけない. Rất phổ biến trong hội thoại.
<br>──────────<br><b>Ví dụ:</b>
<br>嘘をついちゃいけないよ。<br>(Uso o tsuicha ikenai yo.) <br>→ Không được nói dối đâu!') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('78.  なくちゃ  (Nakucha) Phải làm (văn nói)', 'Common', '     <b>Công thức:</b> V-ない (bỏ  い) +  くちゃ.
<br>──────────<br><b>Cách dùng:</b> Là dạng nói tắt, thân mật của  ～なくてはいけない.
<br>──────────<br><b>Ví dụ:</b>
<br>もう行かなくちゃ。<br>(Mou ikanakucha.) <br>→ Phải đi thôi.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('1.  間  (あいだ) Trong khi; trong suốt; giữa ~', 'Common', '     <b>Công thức:</b> N  の 間 / V-る/ている 間
<br>──────────<br><b>Cách dùng/Ý nghĩa:</b> Diễn tả hành động/trạng thái khác diễn ra xuyên suốt khoảng thời gian của hành động chính.
<br>──────────<br><b>Ví dụ:</b><br>  夏休みの間、ずっと田舎にいました。<br>→ (Trong suốt kỳ nghỉ hè, tôi đã ở
quê.)
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>間に  (<b>N4</b>): Khác biệt: Chỉ một sự việc khoảnh khắc xảy ra trong khoảng thời gian, không kéo dài suốt.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('2.  間に  (あいだに) Trong khi; trong suốt~ (một điều gì đó đã xảy ra)', 'Common', '     <b>Công thức:</b> N  の 間に / V-る/ている/ない 間に
<br>──────────<br><b>Cách dùng/Ý nghĩa:</b> Diễn tả một hành động/sự việc ngắn gọn xảy ra tại một thời điểm trong khoảng thời gian chính.
<br>──────────<br><b>Ví dụ:</b><br>  留守の間に、友達が来ました。<br>→ (Trong lúc tôi vắng nhà, bạn tôi đã đến.)
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>間  (<b>N4</b>): Khác biệt: Diễn tả hành động kéo dài suốt khoảng thời gian.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('3.  あまり～ない  Không ~ lắm', 'Common', '     <b>Công thức:</b>  あまり + V-ない / A-くない / Na  じゃない / N  じゃない
<br>──────────<br><b>Cách dùng/Ý nghĩa:</b> Diễn tả mức độ không cao, không nhiều (phủ định một phần).
<br>──────────<br><b>Ví dụ:</b><br>  この映画はあまり面白くないです。<br>→ (Bộ phim này không thú vị lắm.)
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>全然～ない  (<b>N5</b>): Khác biệt: Phủ định hoàn toàn (hoàn toàn không).') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('4.  後で  (あとで) Sau khi~; lát nữa', 'Common', '     <b>Công thức:</b> N  の 後で / V-た 後で
<br>──────────<br><b>Cách dùng/Ý nghĩa:</b> Diễn tả một hành động xảy ra sau khi hành động khác kết thúc.
<br>──────────<br><b>Ví dụ:</b><br>  映画を見た後で、食事をしましょう。<br>→ (Sau khi xem phim xong, chúng ta cùng đi ăn nhé.)
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～てから  (<b>N5</b>): Khác biệt: Nhấn mạnh hơn vào sự hoàn thành của hành động trước là điều kiện cho hành động sau.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('5.  ば  Thể điều kiện; Nếu [A] thì [B]', 'Common', '     <b>Công thức:</b> V-えば / A-ければ / Na/N +  なら(ば)
<br>──────────<br><b>Cách dùng/Ý nghĩa:</b> Diễn tả điều kiện giả định, kết quả tất yếu. Vế sau thường không dùng ý chí/mệnh lệnh.
<br>──────────<br><b>Ví dụ:</b><br>  春になれば、桜が咲きます。<br>→ (Nếu mùa xuân đến, hoa anh đào sẽ nở.)
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>と  (<b>N5</b>): Khác biệt: Thường chỉ kết quả tất yếu, tự nhiên.
<br>たら  (<b>N4</b>): Khác biệt: Phạm vi rộng nhất, có thể dùng ý chí/mệnh lệnh.
<br>なら  (<b>N4</b>): Khác biệt: Thường dựa trên điều đối phương nói, dùng để khuyên.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('6.  場合は  (ばあいは) Trong trường hợp ~', 'Common', '     <b>Công thức:</b> N  の / V-る/た/ない / A-い / Na  な +  場合は
<br>──────────<br><b>Cách dùng/Ý nghĩa:</b> Giả định một tình huống (thường cần đối phó) và cách xử lý. Trang trọng hơn ''たら'', ''ば''.
<br>──────────<br><b>Ví dụ:</b><br>  火事の場合は、エレベーターを使わないでください。<br>→ (Trong trường hợp
có hỏa hoạn, đừng dùng thang máy.)
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>時  (<b>N5</b>): Khác biệt: Chỉ thời điểm, không nhất thiết là giả định cần đối phó.
<br>たら  (<b>N4</b>) /  ば  (<b>N4</b>): Khác biệt: Ít trang trọng hơn, dùng trong văn nói nhiều
hơn.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('7.  ばかり  Chỉ; toàn là ~', 'Common', '     <b>Công thức:</b> N +  ばかり / V-て +  ばかりいる
<br>──────────<br><b>Cách dùng/Ý nghĩa:</b> Diễn tả sự việc chỉ có N, hoặc chỉ làm V (thường mang ý phàn nàn).
<br>──────────<br><b>Ví dụ:</b><br>  彼は遊んでばかりいる。<br>→ (Anh ta chỉ toàn chơi.)
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>だけ  (<b>N5</b>): Khác biệt: Mang tính trung lập hơn, chỉ giới hạn.
<br>～たばかり  (<b>N4</b>): Khác biệt: Nghĩa là "vừa mới làm gì".') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('8.  だけで  Chỉ bằng cách; chỉ cần làm ~', 'Common', '     <b>Công thức:</b> N +  だけで / V-る +  だけで
<br>──────────<br><b>Cách dùng/Ý nghĩa:</b> Chỉ cần N / làm V là đủ để đạt được kết quả.
<br>──────────<br><b>Ví dụ:</b><br>  このボタンを押すだけで、ドアが開きます。<br>→ (Chỉ cần ấn nút này là cửa sẽ mở.)
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>だけ  (<b>N5</b>): Khác biệt: ''だけ'' chỉ giới hạn, ''だけで'' nhấn mạnh phương pháp/cách thức đơn giản.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('9.  出す  (だす) Bắt đầu; ... ra', 'Common', '     <b>Công thức:</b> V-ます (bỏ  ます) +  出す
<br>──────────<br><b>Cách dùng/Ý nghĩa:</b> Diễn tả sự bắt đầu đột ngột, bất ngờ của một hành động.
<br>──────────<br><b>Ví dụ:</b><br>  急に雨が降り出した。<br>→ (Đột nhiên trời bắt đầu mưa.)
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>始める  (<b>N4</b>): Khác biệt: Diễn tả sự bắt đầu nói chung, có thể có ý chí, không nhất thiết đột ngột.
<br>始まる  (<b>N5</b>): Khác biệt: Là tự động từ, chỉ sự kiện/hiện tượng tự bắt đầu.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('10.  でございます  Là (kính ngữ)', 'Common', '     <b>Công thức:</b> N +  でございます
<br>──────────<br><b>Cách dùng/Ý nghĩa:</b> Là thể kính ngữ trang trọng của  です.
<br>──────────<br><b>Ví dụ:</b><br>  こちらは受付でございます。<br>→ (Đây là quầy lễ tân ạ.)
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>です  (<b>N5</b>): Khác biệt: Là thể lịch sự thông thường, ít trang trọng hơn.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('11.  でも  ... hoặc cái gì đó; ~ thì sao nhỉ', 'Common', '     <b>Công thức:</b> N +  でも
<br>──────────<br><b>Cách dùng/Ý nghĩa:</b> Dùng để đưa ra một ví dụ gợi ý (thường là thứ dễ nhất/tiêu biểu).
<br>──────────<br><b>Ví dụ:</b><br>  お茶でも飲みませんか。<br>→ (Uống trà hay gì đó không?)
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>とか  (<b>N4</b>): Khác biệt: Dùng để liệt kê nhiều ví dụ hơn.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('12.  ではないか  /  じゃないか  Phải không?; chẳng phải là ~ sao?', 'Common', '     <b>Công thức:</b> V-thể thông thường / A-い / Na/N +  ではないか (じゃないか)
<br>──────────<br><b>Cách dùng/Ý nghĩa:</b> Khẳng định mạnh, tìm sự đồng tình, thể hiện sự ngạc nhiên.
<br>──────────<br><b>Ví dụ:</b><br>  ほら、雨が降ってきたじゃないか。<br>→ (Kìa, chẳng phải mưa rồi sao?)
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>でしょう  (<b>N5</b>): Khác biệt: Mức độ chắc chắn thấp hơn, mang tính phỏng đoán nhiều hơn.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('13.  が必要  (がひつよう) Cần; cần thiết', 'Common', '     <b>Công thức:</b> N +  が必要だ / V-ること +  が必要だ
<br>──────────<br><b>Cách dùng/Ý nghĩa:</b> Diễn tả sự cần thiết của vật hoặc hành động.
<br>──────────<br><b>Ví dụ:</b><br>  練習が必要です。<br>→ (Cần phải luyện tập.)
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>必要がある  (<b>N4</b>): Khác biệt: Gần như tương đồng, ''必要がある'' nhấn mạnh hơn vào việc "có sự cần thiết".
<br>なければいけない  (<b>N4</b>): Khác biệt: Nhấn mạnh nghĩa vụ "phải làm".') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('14.  がする  Có mùi; nghe thấy; có vị', 'Common', '     <b>Công thức:</b> N (cảm giác) +  がする
<br>──────────<br><b>Cách dùng/Ý nghĩa:</b> Diễn tả cảm nhận qua giác quan (mùi, vị, âm thanh) một cách không chủ ý.
<br>──────────<br><b>Ví dụ:</b><br>  変な匂いがしますね。<br>→ (Có mùi lạ nhỉ.)
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>聞こえる  (<b>N5</b>): Khác biệt: Chỉ dùng cho "nghe thấy".
<br>見える  (<b>N5</b>): Khác biệt: Chỉ dùng cho "nhìn thấy".') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('15.  がり  Tính cách (hay ~)', 'Common', '     <b>Công thức:</b> A-い (bỏ  い) / Na +  がり
<br>──────────<br><b>Cách dùng/Ý nghĩa:</b> Biến tính từ chỉ cảm xúc thành danh từ chỉ người có xu hướng/tính cách đó (dùng cho người khác).
<br>──────────<br><b>Ví dụ:</b><br>  彼は暑がりです。<br>→ (Anh ấy là người sợ nóng.)
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>がる  (<b>N4</b>): Khác biệt: ''がる'' là động từ, ''がり'' là danh từ.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('16.  がる  /  がっている  Tỏ ra; có vẻ; cảm thấy, nghĩ rằng ~', 'Common', '     <b>Công thức:</b> A-い (bỏ  い) / Na +  がる /  がっている
<br>──────────<br><b>Cách dùng/Ý nghĩa:</b> Diễn tả cảm xúc, mong muốn của người khác thông qua quan sát.
<br>──────────<br><b>Ví dụ:</b><br>  子供がそのおもちゃを欲しがっている。<br>→ (Đứa bé có vẻ muốn món đồ chơi
đó.)
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>たい  (<b>N5</b>) /  ほしい  (<b>N5</b>): Khác biệt: ''たい/ほしい'' dùng cho bản thân, ''がる '' dùng cho người khác.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('17.  ございます  Là, tồn tại (thể lịch sự của  いる/ある)', 'Common', '     <b>Công thức:</b> N +  でございます / N +  がございます
<br>──────────<br><b>Cách dùng/Ý nghĩa:</b> Kính ngữ của  です /  あります /  います.
<br>──────────<br><b>Ví dụ:</b><br>  何かご用件がございますか。<br>→ (Ngài có việc gì cần ạ?)
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>ある  (<b>N5</b>) /  いる  (<b>N5</b>): Khác biệt: Là thể thông thường/lịch sự, không phải kính ngữ.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('18.  始める  (はじめる) Bắt đầu ~', 'Common', '     <b>Công thức:</b> V-ます (bỏ  ます) +  始める
<br>──────────<br><b>Cách dùng/Ý nghĩa:</b> Diễn tả sự bắt đầu của một hành động (thường có ý chí).
<br>──────────<br><b>Ví dụ:</b><br>  日本語の勉強を始めました。<br>→ (Tôi đã bắt đầu học tiếng Nhật.)
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>出す  (<b>N4</b>): Khác biệt: Nhấn mạnh sự bắt đầu đột ngột.
<br>始まる  (<b>N5</b>): Khác biệt: Là tự động từ, chỉ sự kiện tự bắt đầu.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('19.  はずだ  Chắc chắn là; đáng lẽ ra', 'Common', '     <b>Công thức:</b> V-thể thông thường / A-い / Na  な / N  の +  はずだ
<br>──────────<br><b>Cách dùng/Ý nghĩa:</b> Diễn tả sự phán đoán chắc chắn dựa trên căn cứ nào đó.
<br>──────────<br><b>Ví dụ:</b><br>  彼は来るはずだ。<br>→ (Chắc chắn anh ấy sẽ đến.)
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>でしょう  (<b>N5</b>): Khác biệt: Mức độ chắc chắn thấp hơn, phỏng đoán.
<br>きっと  (<b>N4</b>): Khác biệt: Là trạng từ, thể hiện niềm tin mạnh mẽ nhưng ít căn
cứ hơn ''はずだ''.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('20.  はずがない  Không thể nào', 'Common', '     <b>Công thức:</b> V-thể thông thường / A-い / Na  な / N  の +  はずがない
<br>──────────<br><b>Cách dùng/Ý nghĩa:</b> Phủ định mạnh mẽ, khẳng định điều gì đó không thể xảy ra.
<br>──────────<br><b>Ví dụ:</b><br>  彼がそんなことをするはずがない。<br>→ (Không thể nào anh ta lại làm chuyện đó.)
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>はずだ  (<b>N4</b>): Khác biệt: Là thể khẳng định của nhau.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('21.  必要がある  (ひつようがある) Cần phải; cần thiết phải ~', 'Common', '     <b>Công thức:</b> V-る +  必要がある / N +  が必要だ
<br>──────────<br><b>Cách dùng/Ý nghĩa:</b> Diễn tả sự cần thiết phải thực hiện một hành động nào đó.
<br>──────────<br><b>Ví dụ:</b><br>  もっと練習する必要があります。<br>→ Cần phải luyện tập nhiều hơn nữa.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>なければいけない/ならない  (<b>N4</b>): Khác biệt: Nhấn mạnh nghĩa vụ, sự bắt buộc ("phải làm"), mạnh hơn  必要がある.
<br>～たほうがいい  (<b>N5</b>): Khác biệt: Chỉ đưa ra lời khuyên ("nên làm").') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('22.  意向形  (いこうけい) Thể ý chí; chúng ta hãy làm ~', 'Common', '     <b>Công thức:</b>
<br>V1: -u → -おう (書く→書こう)
<br>V2: -る → -よう (食べる→食べよう)
<br>V3:  する→しよう,  来る→来よう
<br>──────────<br><b>Cách dùng/Ý nghĩa:</b> Dùng để rủ rê, đề nghị ("Chúng ta hãy..."), hoặc thể hiện ý định của người nói ("Tôi định..."). Là thể thông thường của  ～ましょう.
<br>──────────<br><b>Ví dụ:</b><br>  映画を見に行こう。<br>→ Chúng ta hãy đi xem phim đi.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～ましょう  (<b>N5</b>): Khác biệt: Là thể lịch sự (ます), trong khi thể ý chí là thể
thông thường.
<br>～ようと思う  (<b>N4</b>): Khác biệt: Chỉ ý định cá nhân ("định làm").') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('23.  いらっしゃる  Là; đến; đi (kính ngữ)', 'Common', '     <b>Công thức:</b> Là kính ngữ của  いる,  来る,  行く.
<br>──────────<br><b>Cách dùng/Ý nghĩa:</b> Dùng để thể hiện sự tôn trọng khi nói về hành động (ở, đến, đi) của người khác.
<br>──────────<br><b>Ví dụ:</b><br>  社長はもういらっしゃいましたか。<br>→ (Shachō wa mō irasshaimashita ka.) <br>→ Nghĩa: Giám đốc đã đến rồi phải không ạ?
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>お～になる  (<b>N4</b>): Khác biệt: Là công thức chung để tạo kính ngữ cho động từ.
<br>なさる  (<b>N4</b>): Khác biệt: Là kính ngữ của  する.
<br>いる  /  来る  /  行く  (<b>N5</b>): Khác biệt: Là các động từ gốc, không phải kính
ngữ.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('24.  いたします  Làm (thể khiêm nhường của  する)', 'Common', '     <b>Công thức:</b> Là khiêm nhường ngữ của  する.
<br>──────────<br><b>Cách dùng/Ý nghĩa:</b> Dùng khi nói về hành động của bản thân hoặc người phía mình, thể hiện sự khiêm tốn.
<br>──────────<br><b>Ví dụ:</b><br>  私がご説明いたします。<br>→ Tôi xin phép được giải thích ạ.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>する  (<b>N5</b>): Khác biệt: Là động từ gốc.
<br>なさる  (<b>N4</b>): Khác biệt: Là kính ngữ của  する (dùng cho người khác).') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('25.  じゃないか  Phải không?; chẳng phải là ~ sao?', 'Common', '     <b>Công thức:</b> Giống  ではないか nhưng thân mật hơn.
<br>──────────<br><b>Cách dùng/Ý nghĩa:</b> Là thể thông thường/thân mật của  ではないか.
<br>──────────<br><b>Ví dụ:</b><br>  いい天気じゃないか！<br>→ Trời đẹp quá còn gì!') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('26.  かどうか  Có ~ hay không', 'Common', '     <b>Công thức:</b> V/A/Na/N (thể thông thường) +  かどうか
<br>──────────<br><b>Cách dùng/Ý nghĩa:</b> Dùng để lồng một câu hỏi Có/Không vào trong một câu khác.
<br>──────────<br><b>Ví dụ:</b><br>  明日、彼が来るかどうか分かりません。<br>→ Tôi không biết ngày mai anh ấy có đến hay không.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>か  (<b>N5</b>): Khác biệt: Dùng cho các câu hỏi có từ để hỏi (ai, cái gì...) hoặc câu hỏi Có/Không nói chung, nhưng ''かどうか'' nhấn mạnh sự lựa chọn giữa hai khả năng (có hoặc không).') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('27.  かしら  Tôi tự hỏi (nữ giới dùng)', 'Common', '     <b>Công thức:</b> V/A/Na/N (thể thông thường) +  かしら
<br>──────────<br><b>Cách dùng/Ý nghĩa:</b> Thể hiện sự phân vân, tự hỏi, thường được sử dụng bởi nữ giới.
<br>──────────<br><b>Ví dụ:</b><br>  明日は晴れるかしら。<br>→ Mai trời có nắng không nhỉ?
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>かな  (<b>N4</b>): Khác biệt: Nghĩa tương tự nhưng thường do nam giới dùng (hoặc dùng chung).') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('28.  かい  Biến câu thành câu hỏi có/không (thân mật, nam giới)', 'Common', '     <b>Công thức:</b> V/A/Na/N (thể thông thường) +  かい
<br>──────────<br><b>Cách dùng/Ý nghĩa:</b> Dùng cuối câu để tạo câu hỏi Có/Không thân mật, thường do nam giới lớn tuổi nói với người dưới.
<br>──────────<br><b>Ví dụ:</b><br>  もう宿題をしたかい？ <br>→ Làm bài tập xong chưa con?
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>か  (<b>N5</b>): Khác biệt: Là trợ từ nghi vấn chuẩn.
<br>の  (<b>N5</b>): Khác biệt: Cũng là trợ từ nghi vấn thân mật, nhưng mềm mại hơn và
cả nam/nữ đều dùng.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('29.  かもしれない  Có lẽ; có thể', 'Common', '     <b>Công thức:</b> V/A/Na/N (thể thông thường) +  かもしれない (Lịch sự:  ～かもしれません)
<br>──────────<br><b>Cách dùng/Ý nghĩa:</b> Diễn tả khả năng xảy ra, mức độ chắc chắn thấp (khoảng 50% hoặc thấp hơn).
<br>──────────<br><b>Ví dụ:</b><br>  約束の時間に間に合わないかもしれない。<br>→ Có lẽ tôi sẽ không kịp giờ hẹn.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>でしょう  (<b>N5</b>): Khác biệt: Thường diễn tả khả năng cao hơn, dựa trên phán đoán.
<br>はずだ  (<b>N4</b>): Khác biệt: Diễn tả sự chắc chắn cao, dựa trên căn cứ.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('30.  かな  Tôi tự hỏi; có nên không nhỉ?', 'Common', '     <b>Công thức:</b> V/A/Na/N (thể thông thường) +  かな
<br>──────────<br><b>Cách dùng/Ý nghĩa:</b> Thể hiện sự phân vân, tự hỏi, dùng cho cả nam và nữ (nhưng nam dùng nhiều hơn).
<br>──────────<br><b>Ví dụ:</b><br>  この服、似合うかな。<br>→ Bộ đồ này có hợp với mình không nhỉ?
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>かしら  (<b>N4</b>): Khác biệt: Nghĩa tương tự nhưng chủ yếu do nữ giới dùng.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('31.  から作る  Được làm từ (nguyên liệu bị biến đổi)', 'Common', '     <b>Công thức:</b> N (nguyên liệu) +  から +  作る/できる
<br>──────────<br><b>Cách dùng/Ý nghĩa:</b> Chỉ nguyên liệu làm ra vật gì đó khi nguyên liệu đã bị biến đổi hoàn toàn, không còn nhận ra hình dạng ban đầu.
<br>──────────<br><b>Ví dụ:</b><br>  ワインはぶどうから作られます。<br>→ Rượu vang được làm từ nho.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>で作る  (<b>N5</b>): Khác biệt: Dùng khi nguyên liệu vẫn còn nhận ra <br>──────────<br><b>ví dụ:</b><br>
机は木で作る - Bàn làm bằng gỗ).') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('32.  きっと  Chắc chắn', 'Common', '     <b>Công thức:</b> Trạng từ.
<br>──────────<br><b>Cách dùng/Ý nghĩa:</b> Diễn tả sự tin tưởng mạnh mẽ của người nói rằng điều gì đó sẽ xảy ra (mang tính chủ quan).
<br>──────────<br><b>Ví dụ:</b><br>  彼はきっと来ます。<br>→ Anh ấy chắc chắn sẽ đến.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>たぶん  (<b>N5</b>): Khác biệt: Nghĩa là "có lẽ", mức độ chắc chắn thấp hơn.
<br>はずだ  (<b>N4</b>): Khác biệt: Diễn tả sự chắc chắn dựa trên lý do, căn cứ.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('33.  頃  (ころ  /  ごろ) Khoảng; vào khoảng; khi', 'Common', '     <b>Công thức:</b> N (thời điểm) +  ごろ / V-る/た +  ころ
<br>──────────<br><b>Cách dùng/Ý nghĩa:</b> ''ごろ'' chỉ mốc thời gian xấp xỉ. ''ころ'' chỉ khoảng thời gian
hoặc thời điểm khi một việc gì đó xảy ra.
<br>──────────<br><b>Ví dụ:</b><br>  ３時ごろ会いましょう。<br>→ Gặp nhau vào khoảng 3 giờ nhé. <br>→  子供のころ、よく川で遊びました。<br>→ Khi còn nhỏ, tôi hay chơi ở sông.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>ぐらい  /  くらい  (<b>N5</b>): Khác biệt: Thường dùng để chỉ khoảng thời gian kéo dài hoặc số lượng xấp xỉ.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('34.  こと  Việc; danh từ hóa động từ', 'Common', '     <b>Công thức:</b> V-る/た/ない +  こと
<br>──────────<br><b>Cách dùng/Ý nghĩa:</b> Biến một động từ/cụm động từ thành một danh từ/cụm danh từ, thường chỉ những việc trừu tượng, khái niệm.
<br>──────────<br><b>Ví dụ:</b><br>  私の趣味は映画を見ることです。<br>→ Sở thích của tôi là việc xem phim.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>の  (<b>N5/N4</b>): Khác biệt: Cũng dùng để danh từ hóa, nhưng thường dùng cho những hành động cụ thể, có thể tri giác được. ''こと'' trừu tượng hơn.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('35.  ことがある  Thỉnh thoảng; đôi khi ~', 'Common', '     <b>Công thức:</b> V-る/ない +  ことがある
<br>──────────<br><b>Cách dùng/Ý nghĩa:</b> Diễn tả một hành động/sự việc không thường xuyên nhưng thỉnh thoảng vẫn xảy ra.
<br>──────────<br><b>Ví dụ:</b><br>  時々、朝ごはんを食べないことがあります。<br>→ Thỉnh thoảng tôi không ăn
sáng.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～たことがある  (<b>N5</b>): Khác biệt: Dùng để nói về kinh nghiệm trong quá khứ ("đã từng làm").') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('36.  ことができる  Có thể ~', 'Common', '     <b>Công thức:</b> V-る +  ことができる
<br>──────────<br><b>Cách dùng/Ý nghĩa:</b> Diễn tả năng lực hoặc khả năng làm gì đó. Tương đương thể khả năng.
<br>──────────<br><b>Ví dụ:</b><br>  私は漢字を読むことができます。<br>→ Tôi có thể đọc chữ Hán.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>Thể khả năng (V-られる/れる  - <b>N4/N5</b>): Khác biệt: ''ことができる'' hơi cứng và trang trọng hơn một chút so với thể khả năng thông thường.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('37.  ことになる  Được quyết định là..; hóa ra là..', 'Common', '     <b>Công thức:</b> V-る/ない +  ことになる
<br>──────────<br><b>Cách dùng/Ý nghĩa:</b> Diễn tả một quyết định/kết quả mà không phải do ý chí trực tiếp của người nói (do công ty, quy định, hoàn cảnh...).
<br>──────────<br><b>Ví dụ:</b><br>  来月、転勤することになりました。<br>→ Đã được quyết định là tháng sau tôi sẽ
chuyển công tác.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>ことにする  (<b>N4</b>): Khác biệt: Diễn tả quyết định do chính người nói đưa ra.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('38.  ことにする  Quyết định ~', 'Common', '     <b>Công thức:</b> V-る/ない +  ことにする
<br>──────────<br><b>Cách dùng/Ý nghĩa:</b> Diễn tả quyết định do chính người nói đưa ra.
<br>──────────<br><b>Ví dụ:</b><br>  これから、毎日運動することにします。<br>→ Từ giờ tôi quyết định sẽ vận động mỗi ngày.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>ことになる  (<b>N4</b>): Khác biệt: Diễn tả quyết định không do người nói đưa ra.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('39.  くする  /  にする  Làm cho ~ trở nên ~', 'Common', '     <b>Công thức:</b> A-い (bỏ  い) +  く +  する / Na +  に +  する
<br>──────────<br><b>Cách dùng/Ý nghĩa:</b> Biến đổi trạng thái, tính chất của một vật/việc gì đó.
<br>──────────<br><b>Ví dụ:</b><br>  音を大きくしてください。<br>→ Hãy làm cho âm thanh to lên. <br>→  部屋をきれいにしてください。<br>→ Hãy làm cho phòng sạch sẽ.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～なる  (<b>N5</b>): Khác biệt: Diễn tả sự thay đổi tự nhiên ("trở nên"), trong khi ''
～する'' diễn tả sự thay đổi có tác động.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('40.  急に  (きゅうに) Đột ngột; bất ngờ', 'Common', '     <b>Công thức:</b> Trạng từ.
<br>──────────<br><b>Cách dùng/Ý nghĩa:</b> Diễn tả một sự việc xảy ra nhanh chóng, bất ngờ, không lường trước.
<br>──────────<br><b>Ví dụ:</b><br>  急に空が暗くなった。<br>→ Đột nhiên trời tối sầm lại.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>突然  (とつぜん  - <b>N3</b>): Khác biệt: Rất giống nhau, có thể ''突然'' nhấn mạnh hơn một chút về sự bất ngờ.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('41.  までに  Trước; cho đến (chỉ giới hạn thời gian)', 'Common', '     <b>Công thức:</b> Danh từ (thời gian) / V-る +  までに
<br>──────────<br><b>Cách dùng/Ý nghĩa:</b> Đặt ra một thời hạn mà trước đó một hành động cần phải được hoàn thành.
<br>──────────<br><b>Ví dụ:</b><br>  レポートは金曜日までに提出してください。<br>→ (Hãy nộp báo cáo trước thứ
Sáu.)
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>まで  (<b>N5</b>): Khác biệt: Chỉ sự kéo dài của hành động cho đến một thời <br>──────────<br><b>ví dụ:</b><br>  ５時まで働く - làm việc đến 5 giờ). ''までに'' chỉ hạn chót.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('42.  まま  Cứ để nguyên; trạng thái hiện tại', 'Common', '     <b>Công thức:</b> V-た / V-ない / N  の / A-い / Na  な +  まま
<br>──────────<br><b>Cách dùng/Ý nghĩa:</b> Diễn tả một hành động/trạng thái diễn ra trong khi một trạng thái khác vẫn được giữ nguyên không thay đổi.
<br>──────────<br><b>Ví dụ:</b><br>  窓を開けたまま寝てしまった。<br>→ (Tôi đã ngủ quên mà cứ để cửa sổ mở.)
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>ながら  (<b>N4</b>): Khác biệt: Chỉ hai hành động diễn ra đồng thời. ''まま'' chỉ việc
giữ nguyên một trạng thái.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('43.  または  Hoặc; hoặc là', 'Common', '     <b>Công thức:</b> N1 +  または + N2
<br>──────────<br><b>Cách dùng/Ý nghĩa:</b> Dùng để đưa ra lựa chọn giữa hai (hoặc nhiều) danh từ. Thường trang trọng hơn  か.
<br>──────────<br><b>Ví dụ:</b><br>  住所または電話番号を書いてください。<br>→ (Hãy viết địa chỉ hoặc số điện
thoại.)
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>か  (<b>N5</b>): Khác biệt: Là cách nói "hoặc" thông thường, ít trang trọng hơn.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('44.  みたいだ  Giống như; tương tự; trông giống ~', 'Common', '     <b>Công thức:</b> V/A/Na/N (thể thông thường) +  みたいだ
<br>──────────<br><b>Cách dùng/Ý nghĩa:</b> Diễn tả sự phỏng đoán, so sánh dựa trên cảm nhận trực quan hoặc ví von. Mang tính văn nói nhiều hơn  ようだ.
<br>──────────<br><b>Ví dụ:</b><br>  あの雲は犬みたいだ。<br>→ (Đám mây kia trông giống như con chó.)
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>ようだ  (<b>N4</b>): Khác biệt: Tương tự nhưng hơi trang trọng hơn, phỏng đoán có thể dựa trên nhiều căn cứ hơn.
<br>らしい  (<b>N4</b>): Khác biệt: Dựa trên thông tin nghe được hoặc dấu hiệu rõ ràng ("nghe nói là/có vẻ đúng là").') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('45.  みたいな  Giống như, tương tự ~ (dùng như tính từ  な)', 'Common', '     <b>Công thức:</b> V/A/Na/N (thể thông thường) +  みたいな + N
<br>──────────<br><b>Cách dùng/Ý nghĩa:</b> Là dạng của  みたい dùng để bổ nghĩa cho danh từ.
<br>──────────<br><b>Ví dụ:</b><br>  夢みたいな話ですね。<br>→ (Đó là câu chuyện giống như giấc mơ nhỉ.)
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>ような  (<b>N4</b>): Khác biệt: Là dạng bổ nghĩa danh từ của  ようだ.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('46.  みたいに  Giống như; tương tự ~ (dùng như trạng từ)', 'Common', '     <b>Công thức:</b> V/A/Na/N (thể thông thường) +  みたいに + V/A
<br>──────────<br><b>Cách dùng/Ý nghĩa:</b> Là dạng của  みたい dùng để bổ nghĩa cho động từ/tính từ.
<br>──────────<br><b>Ví dụ:</b><br>  子供みたいに笑っている。<br>→ (Đang cười như một đứa trẻ.)
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>ように  (<b>N4</b>): Khác biệt: Là dạng bổ nghĩa động từ/tính từ của  ようだ.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('47.  も  Đến mức; nhiều đến', 'Common', '     <b>Công thức:</b> Danh từ (số lượng) +  も
<br>──────────<br><b>Cách dùng/Ý nghĩa:</b> Nhấn mạnh rằng số lượng/mức độ là lớn (hoặc nhỏ) hơn so với dự tính, thể hiện sự ngạc nhiên.
<br>──────────<br><b>Ví dụ:</b><br>  パーティーには１００人も来ました。<br>→ (Có đến 100 người đã đến bữa tiệc.)
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>も  (<b>N5</b>): Khác biệt: Nghĩa cơ bản là "cũng". Ở đây ''も'' dùng để nhấn mạnh số lượng.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('48.  な  Đừng ~ (mệnh lệnh thân mật)', 'Common', '     <b>Công thức:</b> V-る +  な
<br>──────────<br><b>Cách dùng/Ý nghĩa:</b> Thể hiện mệnh lệnh cấm đoán mạnh, thân mật, thường do nam giới dùng.
<br>──────────<br><b>Ví dụ:</b><br>  ここでタバコを吸うな。<br>→ (Đừng hút thuốc ở đây!)
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～ないでください  (<b>N5</b>): Khác biệt: Yêu cầu lịch sự.
<br>～てはいけません  (<b>N5</b>): Khác biệt: Cấm đoán lịch sự/trang trọng.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('49.  など  Như là; những thứ như ~', 'Common', '     <b>Công thức:</b> N1  や N2 +  など
<br>──────────<br><b>Cách dùng/Ý nghĩa:</b> Dùng để liệt kê ví dụ một cách không đầy đủ.
<br>──────────<br><b>Ví dụ:</b><br>  机の上には、本やペンなどがあります。<br>→ (Trên bàn có những thứ như sách và bút.)
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>とか  (<b>N4</b>): Khác biệt: Tương tự nhưng mang tính văn nói hơn.
<br>や  (<b>N5</b>): Khác biệt: Chỉ liệt kê ví dụ, ''など'' thường đi sau ''や'' để nhấn mạnh
"và những thứ khác tương tự".') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('50.  ながら  Vừa... vừa...', 'Common', '     <b>Công thức:</b> V-ます (bỏ  ます) +  ながら
<br>──────────<br><b>Cách dùng/Ý nghĩa:</b> Diễn tả hai hành động diễn ra đồng thời do cùng một chủ thể thực hiện.
<br>──────────<br><b>Ví dụ:</b><br>  音楽を聞きながら、勉強します。<br>→ (Tôi vừa nghe nhạc vừa học bài.)
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>間  (<b>N4</b>): Khác biệt: Thường dùng cho 2 chủ thể khác nhau hoặc 1 chủ thể nhưng 1 hành động/trạng thái kéo dài suốt.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('51.  なかなか～ない  Khó mà ~; mãi mà không ~', 'Common', '     <b>Công thức:</b>  なかなか + V-ない / A-くない / Na  じゃない
<br>──────────<br><b>Cách dùng/Ý nghĩa:</b> Diễn tả việc gì đó khó xảy ra, hoặc mãi mà không diễn ra như mong đợi.
<br>──────────<br><b>Ví dụ:</b><br>  バスがなかなか来ない。<br>→ (Xe buýt mãi mà không đến.)
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>あまり～ない  (<b>N4</b>): Khác biệt: Chỉ mức độ "không ~ lắm".') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('52.  なければいけない  Phải làm gì đó', 'Common', '     <b>Công thức:</b> V-ない (bỏ  い) +  ければいけない
<br>──────────<br><b>Cách dùng/Ý nghĩa:</b> Diễn tả sự cần thiết, nghĩa vụ phải làm.
<br>──────────<br><b>Ví dụ:</b><br>  薬を飲まなければいけません。<br>→ (Phải uống thuốc.)
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>なければならない  (<b>N4</b>): Khác biệt: Gần như tương đương, đôi khi ''ならない'' mang sắc thái nghĩa vụ mạnh hơn một chút.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('53.  なければならない  Phải làm gì đó', 'Common', '     <b>Công thức:</b> V-ない (bỏ  い) +  ければならない
<br>──────────<br><b>Cách dùng/Ý nghĩa:</b> Diễn tả sự cần thiết, nghĩa vụ phải làm (rất giống #52).
<br>──────────<br><b>Ví dụ:</b><br>  明日、早く起きなければならない。<br>→ (Ngày mai tôi phải dậy sớm.)
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>なければいけない  (<b>N4</b>): Khác biệt: Rất giống nhau, thường có thể thay thế.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('54.  なら  Nếu; trong trường hợp ~', 'Common', '     <b>Công thức:</b> V/A/Na/N (thể thông thường) +  なら
<br>──────────<br><b>Cách dùng/Ý nghĩa:</b> Dùng để đưa ra lời khuyên, đề nghị, hoặc giới hạn phạm vi dựa trên một chủ đề/điều kiện được nhắc đến trước đó.
<br>──────────<br><b>Ví dụ:</b><br>  日本へ行くなら、京都がいいですよ。<br>→ (Nếu (nói về việc) đi Nhật thì
Kyoto là hay đấy.)
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>ば  /  たら  /  と  (<b>N4/N5</b>): Khác biệt: ''なら'' tập trung vào chủ đề đã nêu, trong khi các mẫu khác tập trung vào điều kiện và kết quả.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('55.  なさい  Hãy làm đi', 'Common', '     <b>Công thức:</b> V-ます (bỏ  ます) +  なさい
<br>──────────<br><b>Cách dùng/Ý nghĩa:</b> Mệnh lệnh nhẹ nhàng, thường dùng từ người trên (bố mẹ, thầy cô) nói với người dưới (con cái, học sinh).
<br>──────────<br><b>Ví dụ:</b><br>  早く寝なさい。<br>→ (Hãy ngủ sớm đi.)
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～てください  (<b>N5</b>): Khác biệt: Là yêu cầu lịch sự.
<br>V-ろ  / V-よ  (Mệnh lệnh): Khác biệt: Là mệnh lệnh mạnh, có thể thô lỗ.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('56.  なさる  Làm (kính ngữ)', 'Common', '     <b>Công thức:</b> Kính ngữ của  する.
<br>──────────<br><b>Cách dùng/Ý nghĩa:</b> Dùng để thể hiện sự tôn trọng khi nói về hành động "làm" của người khác.
<br>──────────<br><b>Ví dụ:</b><br>  社長は何をなさっていますか。<br>→ (Giám đốc đang làm gì đấy ạ?)
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>する  (<b>N5</b>): Khác biệt: Động từ gốc.
<br>いたします  (<b>N4</b>): Khác biệt: Là khiêm nhường ngữ của  する.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('57.  に気がつく  Nhận thấy; nhận ra', 'Common', '     <b>Công thức:</b> N / V-こと +  に気がつく
<br>──────────<br><b>Cách dùng/Ý nghĩa:</b> Diễn tả việc nhận ra, phát hiện ra điều gì đó mà trước đó không để ý.
<br>──────────<br><b>Ví dụ:</b><br>  財布がないことに気がついた。<br>→ (Tôi nhận ra là mình không có ví.)') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('58.  に見える  Trông có vẻ; dường như', 'Common', '     <b>Công thức:</b> N / A-く / Na  に +  見える
<br>──────────<br><b>Cách dùng/Ý nghĩa:</b> Diễn tả dáng vẻ, ngoại hình của một thứ gì đó theo cảm nhận thị giác.
<br>──────────<br><b>Ví dụ:</b><br>  彼女は幸せに見える。<br>→ (Cô ấy trông có vẻ hạnh phúc.)
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>そうだ  (<b>N4</b>): Khác biệt: Cũng là "trông có vẻ", nhưng thường dựa vào dấu hiệu bên ngoài để phán đoán về bản chất/trạng thái.
<br>見える  (<b>N5</b>): Khác biệt: Chỉ khả năng "có thể nhìn thấy".') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('59.  にする  Quyết định chọn ~', 'Common', '     <b>Công thức:</b> N +  にする
<br>──────────<br><b>Cách dùng/Ý nghĩa:</b> Diễn tả việc đưa ra quyết định lựa chọn một thứ gì đó (thường là đồ ăn, thức uống, vật phẩm).
<br>──────────<br><b>Ví dụ:</b><br>  飲み物は何にしますか。<br>→ コーヒーにします。<br>→ (Đồ uống bạn chọn gì? Tôi
chọn cà phê.)
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>ことにする  (<b>N4</b>): Khác biệt: Quyết định làm một hành động.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('60.  にくい  Khó làm ~', 'Common', '     <b>Công thức:</b> V-ます (bỏ  ます) +  にくい
<br>──────────<br><b>Cách dùng/Ý nghĩa:</b> Diễn tả việc thực hiện một hành động nào đó là khó khăn (về mặt vật lý hoặc kỹ năng).
<br>──────────<br><b>Ví dụ:</b><br>  この字は小さくて読みにくい。<br>→ (Chữ này nhỏ nên khó đọc.)
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>やすい  (<b>N4</b>): Khác biệt: Nghĩa đối lập ("dễ làm").
<br>づらい  (<b>N4</b>): Khác biệt: Cũng nghĩa là "khó làm", nhưng thường mang sắc
thái khó khăn về mặt tâm lý, cảm xúc hơn.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('61.  の中で  Trong; giữa ~', 'Common', '     <b>Công thức:</b> Danh từ (phạm vi) +  の中で
<br>──────────<br><b>Cách dùng/Ý nghĩa:</b> Dùng để chỉ sự lựa chọn, so sánh hoặc cái nhất trong một phạm vi, nhóm nào đó.
<br>──────────<br><b>Ví dụ:</b><br>  果物の中で、りんごが一番好きです。<br>→ (Trong các loại hoa quả, tôi thích
táo nhất.)
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>で  (<b>N5</b>): Khác biệt: Cũng có thể chỉ phạm vi (日本で), nhưng ''の中で'' nhấn mạnh rõ hơn yếu tố "bên trong một tập hợp/nhóm".') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('62.  のに  Mặc dù; dù cho ~ (bất ngờ, trái dự đoán)', 'Common', '     <b>Công thức:</b> V/A/Na  な/N  な +  のに
<br>──────────<br><b>Cách dùng/Ý nghĩa:</b> Diễn tả một kết quả trái với mong đợi, dự đoán, thường kèm theo sắc thái ngạc nhiên, bất mãn hoặc phàn nàn.
<br>──────────<br><b>Ví dụ:</b><br>  約束したのに、彼は来ませんでした。<br>→ (Mặc dù đã hứa, anh ấy đã không
đến.)
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>けど  /  けれども  (<b>N5</b>): Khác biệt: Cũng là "nhưng/mặc dù", nhưng trung lập hơn, ít cảm xúc hơn ''のに''.
<br>ても  (<b>N4</b>): Khác biệt: "Dù...vẫn", thường chỉ giả định hoặc sự việc đã biết, không nhấn mạnh sự bất ngờ/phàn nàn như ''のに''.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('63.  のに  Để (làm gì đó); dùng cho việc ~ (chỉ mục đích)', 'Common', '     <b>Công thức:</b> V-る +  のに
<br>──────────<br><b>Cách dùng/Ý nghĩa:</b> Chỉ mục đích sử dụng hoặc sự hữu ích của một vật/việc gì đó.
<br>──────────<br><b>Ví dụ:</b><br>  この道具は木を切るのに便利です。<br>→ (Dụng cụ này tiện lợi cho việc cắt gỗ.)
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>ために  (<b>N4</b>): Khác biệt: Cũng chỉ mục đích, nhưng ''のに'' thường nhấn mạnh hơn vào công dụng, sự đánh giá (tiện lợi, cần thiết...).
<br>ように  (<b>N4</b>): Khác biệt: Thường chỉ mục tiêu, trạng thái muốn đạt được.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('64.  のは〜だ  [A] là [B] (Nhấn mạnh)', 'Common', '     <b>Công thức:</b> V/A/Na  な/N  な +  のは + N/A/V +  だ
<br>──────────<br><b>Cách dùng/Ý nghĩa:</b> Cấu trúc nhấn mạnh, biến vế trước  は thành chủ đề được nhấn mạnh, vế sau  だ là phần giải thích/thông tin về chủ đề đó.
<br>──────────<br><b>Ví dụ:</b><br>  私が生まれたのは東京です。<br>→ (Nơi tôi sinh ra là Tokyo.)
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>こと  (<b>N4</b>): Khác biệt: Chỉ danh từ hóa, không tạo cấu trúc nhấn mạnh như ''のは～だ''.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('65.  お～ください  Xin hãy ~ (kính ngữ)', 'Common', '     <b>Công thức:</b>  お + V-ます (bỏ  ます) +  ください
<br>──────────<br><b>Cách dùng/Ý nghĩa:</b> Cách yêu cầu lịch sự/kính ngữ, trang trọng hơn  ～てください. Dùng với động từ gốc Nhật (Wago).
<br>──────────<br><b>Ví dụ:</b><br>  こちらでお待ちください。<br>→ (Xin vui lòng đợi ở đây ạ.)
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～てください  (<b>N5</b>): Khác biệt: Yêu cầu lịch sự thông thường.
<br>ご～ください: Khác biệt: Dùng với động từ gốc Hán (Kango).') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('66.  お～になる  Làm (kính ngữ)', 'Common', '     <b>Công thức:</b>  お + V-ます (bỏ  ます) +  になる
<br>──────────<br><b>Cách dùng/Ý nghĩa:</b> Cách nói kính ngữ chuẩn, thể hiện sự tôn trọng với hành động của người khác. Dùng với động từ gốc Nhật.
<br>──────────<br><b>Ví dụ:</b><br>  社長はもうお帰りになりました。<br>→ (Giám đốc đã về rồi ạ.)
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>られる  (<b>N4</b>): Khác biệt: Cũng có thể dùng làm kính ngữ nhưng mức độ tôn trọng thường thấp hơn  お～になる.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('67.  おきに  Cách quãng; cứ mỗi ~', 'Common', '     <b>Công thức:</b> Từ chỉ số lượng (thời gian/không gian) +  おきに
<br>──────────<br><b>Cách dùng/Ý nghĩa:</b> Diễn tả một sự việc lặp lại theo một khoảng cách đều đặn về thời gian hoặc không gian.
<br>──────────<br><b>Ví dụ:</b><br>  このバスは１０分おきに来ます。<br>→ (Xe buýt này cứ 10 phút lại đến một
chuyến.)') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('68.  終わる  (おわる) Kết thúc ~', 'Common', '     <b>Công thức:</b> V-ます (bỏ  ます) +  終わる
<br>──────────<br><b>Cách dùng/Ý nghĩa:</b> Diễn tả sự hoàn thành, kết thúc của một hành động.
<br>──────────<br><b>Ví dụ:</b><br>  この本を読み終わったら、貸してください。<br>→ (Khi nào đọc xong cuốn sách này thì cho tôi mượn nhé.)
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～てしまう  (<b>N4</b>): Khác biệt: Cũng có nghĩa hoàn thành, nhưng thường kèm sắc thái tiếc nuối, hoặc làm xong dứt điểm.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('69.  られる  Thể khả năng; có thể ~', 'Common', '     <b>Công thức:</b> V1: -u → -eru; V2: -る → -られる; V3:  できる,  来られる
<br>──────────<br><b>Cách dùng/Ý nghĩa:</b> Diễn tả năng lực, khả năng có thể làm gì đó. (Cũng dùng cho bị động, kính ngữ).
<br>──────────<br><b>Ví dụ:</b><br>  私は納豆が食べられます。<br>→ (Tôi có thể ăn được natto.)
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>ことができる  (<b>N4</b>): Khác biệt: Tương đương về nghĩa, nhưng ''ことができる'' trang trọng hơn một chút.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('70.  らしい  Có vẻ như; nghe nói; hình như ~', 'Common', '     <b>Công thức:</b> V/A/Na/N (thể thông thường) +  らしい
<br>──────────<br><b>Cách dùng/Ý nghĩa:</b> Phán đoán dựa trên thông tin nghe được hoặc dấu hiệu rõ ràng. Cũng có nghĩa là "mang đậm chất...", "đúng kiểu...".
<br>──────────<br><b>Ví dụ:</b><br>  天気予報によると、明日は雨らしい。<br>→ (Theo dự báo thời tiết, nghe nói
ngày mai trời mưa.)
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>そうだ  (N4 - nghe nói): Khác biệt: Chỉ dựa vào thông tin nghe được.
<br>そうだ  (N4 - có vẻ): Khác biệt: Dựa vào quan sát trực quan.
<br>ようだ  /  みたいだ  (<b>N4</b>): Khác biệt: Dựa vào cảm nhận, suy đoán của bản
thân.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('71.  さ  Danh từ hóa tính từ', 'Common', '     <b>Công thức:</b> A-い (bỏ  い) +  さ / Na +  さ
<br>──────────<br><b>Cách dùng/Ý nghĩa:</b> Biến tính từ thành danh từ chỉ mức độ, độ lớn của tính chất đó.
<br>──────────<br><b>Ví dụ:</b><br>  この川の深さはどのぐらいですか。<br>→ (Độ sâu của con sông này là bao nhiêu?)') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('72.  さっき  Lúc nãy; vừa mới', 'Common', '     <b>Công thức:</b> Trạng từ.
<br>──────────<br><b>Cách dùng/Ý nghĩa:</b> Chỉ một thời điểm rất gần trong quá khứ.
<br>──────────<br><b>Ví dụ:</b><br>  さっき、田中さんに会いました。<br>→ (Lúc nãy tôi đã gặp anh Tanaka.)
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～たばかり  (<b>N4</b>): Khác biệt: "Vừa mới làm", nhấn mạnh cảm giác chủ quan về sự gần gũi của hành động. ''さっき'' khách quan hơn.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('73.  させられる  Thể bị động sai khiến; bị bắt làm ~', 'Common', '     <b>Công thức:</b> V1: -a +  せられる; V2: -させられる; V3:  させられる,  来させられる
.
<br>──────────<br><b>Cách dùng/Ý nghĩa:</b> Diễn tả việc bị người khác bắt buộc làm một việc gì đó mà mình không muốn.
<br>──────────<br><b>Ví dụ:</b><br>  子供の時、母にピアノを習わせられました。<br>→ (Hồi nhỏ, tôi bị mẹ bắt học
piano.)
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>させる  (<b>N4</b>): Thể sai khiến (chủ động).
<br>られる  (<b>N4</b>): Thể bị động.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('74.  させる  Thể sai khiến; bắt/cho phép ~', 'Common', '     <b>Công thức:</b> V1: -a +  せる; V2: -させる; V3:  させる,  来させる.
<br>──────────<br><b>Cách dùng/Ý nghĩa:</b> Diễn tả hành động bắt buộc hoặc cho phép ai đó làm gì.
<br>──────────<br><b>Ví dụ:</b><br>  先生は生徒に本を読ませた。<br>→ (Thầy giáo đã cho/bắt học sinh đọc sách.)') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('75.  させてください  Xin hãy cho phép tôi làm ~', 'Common', '     <b>Công thức:</b> V-(thể sai khiến)  て +  ください (V-させてください).
<br>──────────<br><b>Cách dùng/Ý nghĩa:</b> Cách nói lịch sự để xin phép làm một việc gì đó.
<br>──────────<br><b>Ví dụ:</b><br>  今日は早く帰らせてください。<br>→ (Xin hãy cho phép tôi về sớm hôm nay.)
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～てもいいですか  (<b>N5</b>): Khác biệt: Cũng là xin phép, nhưng ''させてください'' thường dùng khi hành động đó cần sự cho phép rõ ràng hoặc có thể ảnh hưởng đến người nghe.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('76.  さすが  Quả đúng là; như mong đợi', 'Common', '     <b>Công thức:</b> Trạng từ /  さすが + N.
<br>──────────<br><b>Cách dùng/Ý nghĩa:</b> Thể hiện sự thán phục, công nhận rằng ai/cái gì đó đúng như kỳ vọng/danh tiếng.
<br>──────────<br><b>Ví dụ:</b><br>  さすがですね。<br>→ こんな難しい問題もできるなんて。<br>→ (Quả đúng là
anh/chị. Vấn đề khó thế này mà cũng làm được.)') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('77.  し  Và; hơn nữa ~ (liệt kê lý do)', 'Common', '     <b>Công thức:</b> V/A/Na  だ/N  だ +  し
<br>──────────<br><b>Cách dùng/Ý nghĩa:</b> Dùng để liệt kê nhiều lý do, sự thật, thường ngụ ý rằng còn có những lý do khác.
<br>──────────<br><b>Ví dụ:</b><br>  この店は安いし、おいしいし、いつも混んでいます。<br>→ (Quán này vừa rẻ
vừa ngon nên lúc nào cũng đông.)
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>から  /  ので  (<b>N5/N4</b>): Khác biệt: Thường chỉ nêu một lý do chính.
<br>て  (<b>N5</b>): Khác biệt: Dùng để nối hành động theo thứ tự hoặc nguyên nhân-kết
quả đơn giản.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('78.  そんなに  Đến mức đó; như thế', 'Common', '     <b>Công thức:</b> Trạng từ (thường đi với phủ định).
<br>──────────<br><b>Cách dùng/Ý nghĩa:</b> Chỉ mức độ "như thế" (ám chỉ điều đã biết). Trong câu phủ định có nghĩa là "không... đến mức đó", "không... lắm".
<br>──────────<br><b>Ví dụ:</b><br>  日本語はそんなに難しくないですよ。<br>→ (Tiếng Nhật không khó đến mức đó
đâu.)
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>こんなに: Như thế này.
<br>あんなに: Như thế kia.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('79.  それでも  Nhưng mà; tuy nhiên; dù vậy ~', 'Common', '     <b>Công thức:</b> Từ nối.
<br>──────────<br><b>Cách dùng/Ý nghĩa:</b> Nối hai vế câu có ý nghĩa tương phản, nhấn mạnh rằng dù có vế trước, vế sau vẫn xảy ra.
<br>──────────<br><b>Ví dụ:</b><br>  大雨が降っています。<br>→ それでも、試合は続きます。<br>→ (Trời đang mưa to.
Dù vậy, trận đấu vẫn tiếp tục.)
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>でも  (<b>N5</b>): Khác biệt: "Nhưng", tương phản chung, ít nhấn mạnh hơn.
<br>しかし  (<b>N4/N3</b>): Khác biệt: "Tuy nhiên", trang trọng hơn.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('80.  それに  Bên cạnh đó; thêm vào đó; hơn nữa ~', 'Common', '     <b>Công thức:</b> Từ nối.
<br>──────────<br><b>Cách dùng/Ý nghĩa:</b> Dùng để bổ sung thêm thông tin, lý do, củng cố cho ý đã nói trước đó.
<br>──────────<br><b>Ví dụ:</b><br>  このアパートは駅から近いし、それに、家賃も安いです。<br>→ (Căn hộ này
vừa gần ga, thêm vào đó, tiền thuê nhà cũng rẻ.)
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>そして  (<b>N5</b>): Khác biệt: Chỉ "và", nối tiếp thông thường.
<br>し  (<b>N4</b>): Khác biệt: Dùng trong câu để liệt kê.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('81.  そうだ  Nghe nói là; người ta nói rằng ~', 'Common', '     <b>Công thức:</b> V/A/Na  だ/N  だ (thể thông thường) +  そうだ
<br>──────────<br><b>Cách dùng/Ý nghĩa:</b> Dùng để truyền đạt lại thông tin nghe được từ người khác hoặc từ một nguồn nào đó (tin tức, dự báo...).
<br>──────────<br><b>Ví dụ:</b><br>  天気予報によると、明日は雪が降るそうです。<br>→ (Theo dự báo thời tiết,
nghe nói ngày mai tuyết sẽ rơi.)
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>らしい  (<b>N4</b>): Khác biệt: Cũng có nghĩa "nghe nói", nhưng ''らしい'' có thể
bao hàm cả sự suy đoán của người nói dựa trên bằng chứng, còn ''そうだ'' chỉ
đơn thuần là truyền đạt lại.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('82.  そうだ  Trông có vẻ; có vẻ như; dường như ~', 'Common', '     <b>Công thức:</b> V-ます (bỏ  ます) / A-い (bỏ  い) / Na +  そうだ
<br>──────────<br><b>Cách dùng/Ý nghĩa:</b> Diễn tả sự phán đoán, cảm nhận của người nói dựa trên quan sát trực tiếp (thị giác), thường dùng cho những việc sắp xảy ra hoặc trạng thái hiện tại.
<br>──────────<br><b>Ví dụ:</b><br>  このケーキはおいしそうだ。<br>→ (Cái bánh này trông có vẻ ngon.) <br>→  雨が降り
そうです。<br>→ (Trời có vẻ sắp mưa.)
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>ようだ  /  みたいだ  (<b>N4</b>): Khác biệt: Cũng là "trông có vẻ", nhưng ''ようだ /みたいだ'' có thể dựa trên nhiều giác quan/căn cứ hơn và không nhất thiết chỉ việc sắp xảy ra.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('83.  そうに  /  そうな  Trông có vẻ; giống như ~', 'Common', '     <b>Công thức:</b> V-ます (bỏ  ます) / A-い (bỏ  い) / Na +  そうに + V /  そうな + N
<br>──────────<br><b>Cách dùng/Ý nghĩa:</b> Là dạng trạng từ (そうに) và tính từ (そうな) của ''そうだ'' (#82), dùng để bổ nghĩa cho động từ hoặc danh từ.
<br>──────────<br><b>Ví dụ:</b><br>  彼女は楽しそうに歌っています。<br>→ (Cô ấy đang hát trông có vẻ vui.) <br>→  彼は
眠そうな顔をしています。<br>→ (Anh ấy có khuôn mặt trông buồn ngủ.)
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>ように  /  ような  (<b>N4</b>): Khác biệt: Là dạng trạng từ/tính từ của ''ようだ''.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('84.  たばかり  Vừa mới; vừa mới xảy ra', 'Common', '     <b>Công thức:</b> V-た +  ばかりだ
<br>──────────<br><b>Cách dùng/Ý nghĩa:</b> Diễn tả một hành động vừa mới kết thúc theo cảm nhận chủ quan của người nói (thời gian thực tế có thể đã trôi qua một lúc).
<br>──────────<br><b>Ví dụ:</b><br>  日本に来たばかりです。<br>→ (Tôi vừa mới đến Nhật.)
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>たところ  (<b>N4</b>): Khác biệt: Nhấn mạnh thời điểm ngay sau khi hành động kết thúc (khách quan hơn).') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('85.  たところ  Vừa mới làm xong', 'Common', '     <b>Công thức:</b> V-た +  ところだ
<br>──────────<br><b>Cách dùng/Ý nghĩa:</b> Diễn tả một hành động vừa mới kết thúc ngay tại thời điểm nói.
<br>──────────<br><b>Ví dụ:</b><br>  ちょうど今、宿題が終わったところです。<br>→ (Đúng lúc này tôi vừa làm xong bài tập.)
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>たばかり  (<b>N4</b>): Khác biệt: Mang tính chủ quan hơn về thời gian.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('86.  他動詞  &  自動詞  Tha động từ & Tự động từ', 'Common', '     <b>Công thức:</b> Tha động từ (N  を V) / Tự động từ (N  が V)
<br>──────────<br><b>Cách dùng/Ý nghĩa:</b> Tha động từ cần tân ngữ trực tiếp (を), chỉ hành động có tác động lên đối tượng. Tự động từ không cần tân ngữ, chỉ sự thay đổi trạng thái của chủ thể (が).
<br>──────────<br><b>Ví dụ:</b><br>  ドアを開ける。<br>→ (Mở cửa - Tha) <br>→  ドアが開く。<br>→ (Cửa mở - Tự).') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('87.  たがる  Muốn làm ~ (ngôi thứ ba)', 'Common', '     <b>Công thức:</b> V-ます (bỏ  ます) +  たがる /  たがっている
<br>──────────<br><b>Cách dùng/Ý nghĩa:</b> Diễn tả mong muốn, ước muốn của người thứ ba mà người nói quan sát được.
<br>──────────<br><b>Ví dụ:</b><br>  妹は留学したがっています。<br>→ (Em gái tôi muốn đi du học.)
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>たい  (<b>N5</b>): Khác biệt: Dùng cho mong muốn của bản thân người nói.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('88.  たら  Nếu; sau khi; khi ~', 'Common', '     <b>Công thức:</b> V/A/Na/N (thể  た) +  ら
<br>──────────<br><b>Cách dùng/Ý nghĩa:</b> Là mẫu câu điều kiện/giả định phổ biến nhất, dùng trong nhiều trường hợp (giả định, kết quả chắc chắn sau hành động, phát hiện bất ngờ). Vế sau có thể dùng ý chí/mệnh lệnh.
<br>──────────<br><b>Ví dụ:</b><br>  お金があったら、旅行したい。<br>→ (Nếu có tiền, tôi muốn đi du lịch.) <br>→  家に帰ったら、手紙が来ていた。<br>→ (Khi về nhà thì thấy có thư đến.)
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>と  /  ば  /  なら  (<b>N5/N4</b>): Khác biệt: Mỗi mẫu có sắc thái riêng (''と'' - tất yếu; ''ば'' - điều kiện chung; ''なら'' - dựa vào thông tin). ''たら'' linh hoạt nhất.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('89.  たらどう  Tại sao bạn không ~; ~ thì sao?', 'Common', '     <b>Công thức:</b> V-たら +  どうですか /  どう？
<br>──────────<br><b>Cách dùng/Ý nghĩa:</b> Dùng để đưa ra lời khuyên, gợi ý một cách nhẹ nhàng.
<br>──────────<br><b>Ví dụ:</b><br>  疲れているなら、少し休んだらどうですか。<br>→ (Nếu mệt thì sao bạn không nghỉ một chút?)
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～たほうがいい  (<b>N5</b>): Khác biệt: Lời khuyên mạnh hơn ("nên làm thì tốt hơn").') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('G0.  たらいいですか  Tôi nên làm gì?', 'Common', '     <b>Công thức:</b> V-たら +  いいですか
<br>──────────<br><b>Cách dùng/Ý nghĩa:</b> Dùng để hỏi xin lời khuyên, sự chỉ dẫn.
<br>──────────<br><b>Ví dụ:</b><br>  道に迷ったんですが、どうしたらいいですか。<br>→ (Tôi bị lạc đường rồi, tôi nên làm thế nào?)') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('G1.  て  /  で  Liên từ; nên; vì [A], [B]... (chỉ nguyên nhân)', 'Common', '     <b>Công thức:</b> V-て / A-くて / Na  で / N  で
<br>──────────<br><b>Cách dùng/Ý nghĩa:</b> Nối hai vế, chỉ nguyên nhân, lý do (thường là những nguyên nhân tự nhiên, không kiểm soát được, hoặc dẫn đến kết quả là cảm xúc/trạng thái).
<br>──────────<br><b>Ví dụ:</b><br>  病気で学校を休みました。<br>→ (Vì bị ốm nên tôi đã nghỉ học.) <br>→  試験に合格し
て、嬉しいです。<br>→ (Vì đã đỗ kỳ thi nên tôi rất vui.)
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>から  /  ので  (<b>N5/N4</b>): Khác biệt: Là các từ chỉ nguyên nhân/lý do phổ biến hơn, có thể dùng trong nhiều tình huống hơn.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('G2.  てあげる  Làm cho (ai đó)', 'Common', '     <b>Công thức:</b> V-て +  あげる
<br>──────────<br><b>Cách dùng/Ý nghĩa:</b> Diễn tả hành động làm một việc gì đó cho người khác (ngang hàng hoặc dưới).
<br>──────────<br><b>Ví dụ:</b><br>  私は妹に本を読んであげた。<br>→ (Tôi đã đọc sách cho em gái.)
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>てくれる  (<b>N4</b>): Ai đó làm cho mình.
<br>てもらう  (<b>N4</b>): Mình được ai đó làm cho.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('G3.  てほしい  Tôi muốn bạn ~', 'Common', '     <b>Công thức:</b> V-て +  ほしい
<br>──────────<br><b>Cách dùng/Ý nghĩa:</b> Diễn tả mong muốn của người nói rằng người khác sẽ làm một việc gì đó.
<br>──────────<br><b>Ví dụ:</b><br>  あなたに手伝ってほしい。<br>→ (Tôi muốn bạn giúp tôi.)
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>たい  (<b>N5</b>): Khác biệt: Mong muốn bản thân làm.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('G4.  ていく  Bắt đầu; tiếp tục; đi tiếp', 'Common', '     <b>Công thức:</b> V-て +  いく
<br>──────────<br><b>Cách dùng/Ý nghĩa:</b> Diễn tả sự thay đổi/hành động tiếp diễn hướng đến tương lai; hoặc hành động di chuyển ra xa người nói.
<br>──────────<br><b>Ví dụ:</b><br>  これから暖かくなっていきます。<br>→ (Từ giờ trời sẽ dần ấm lên.) <br>→  彼は歩い
ていった。<br>→ (Anh ấy đã đi bộ đi.)
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>てくる  (<b>N4</b>): Khác biệt: Hướng về người nói hoặc từ quá khứ đến hiện tại.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('G5.  ていた  Đang làm gì đó (quá khứ tiếp diễn)', 'Common', '     <b>Công thức:</b> V-て +  いた
<br>──────────<br><b>Cách dùng/Ý nghĩa:</b> Diễn tả một hành động đang diễn ra tại một thời điểm trong quá khứ.
<br>──────────<br><b>Ví dụ:</b><br>  昨日、私が電話した時、彼はテレビを見ていました。<br>→ (Hôm qua, lúc tôi
gọi điện, anh ấy đang xem TV.)
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>ている  (<b>N5</b>): Khác biệt: Hiện tại tiếp diễn.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('G6.  ていただけませんか  Bạn có thể vui lòng ~?', 'Common', '     <b>Công thức:</b> V-て +  いただけませんか
<br>──────────<br><b>Cách dùng/Ý nghĩa:</b> Là cách yêu cầu/nhờ vả rất lịch sự, thường dùng với người trên hoặc người không thân thiết.
<br>──────────<br><b>Ví dụ:</b><br>  この書類をチェックしていただけませんか。<br>→ (Bạn có thể vui lòng kiểm
tra tài liệu này cho tôi được không ạ?)
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>てください  (<b>N5</b>): Lịch sự.
<br>てくれませんか  (<b>N4</b>): Lịch sự (kém hơn  いただけませんか).') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('G7.  てくれる  Làm cho tôi/phía tôi', 'Common', '     <b>Công thức:</b> V-て +  くれる
<br>──────────<br><b>Cách dùng/Ý nghĩa:</b> Diễn tả ai đó (ngang hàng hoặc dưới) làm một việc gì đó cho
mình hoặc người phía mình.
<br>──────────<br><b>Ví dụ:</b><br>  友達が私にプレゼントをくれた。<br>→ (Bạn tôi đã tặng quà cho tôi.)
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>てあげる  (<b>N4</b>): Mình làm cho người khác.
<br>てもらう  (<b>N4</b>): Mình được người khác làm cho.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('G8.  てくる  Làm... rồi quay lại; trở nên; bắt đầu ~', 'Common', '     <b>Công thức:</b> V-て +  くる
<br>──────────<br><b>Cách dùng/Ý nghĩa:</b> Diễn tả hành động đi đâu đó làm gì rồi quay lại; sự thay đổi bắt đầu từ quá khứ đến hiện tại; hành động hướng về người nói.
<br>──────────<br><b>Ví dụ:</b><br>  ちょっと牛乳を買ってくる。<br>→ (Tôi đi mua sữa rồi về ngay.) <br>→  だんだん寒
くなってきた。<br>→ (Trời đã dần trở nên lạnh.)
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>ていく  (<b>N4</b>): Khác biệt: Hướng ra xa hoặc đến tương lai.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('GG.  てみる  Thử làm ~', 'Common', '     <b>Công thức:</b> V-て +  みる
<br>──────────<br><b>Cách dùng/Ý nghĩa:</b> Diễn tả việc thử làm một hành động nào đó để xem kết quả, để trải nghiệm.
<br>──────────<br><b>Ví dụ:</b><br>  この新しいレストランで食べてみましょう。<br>→ (Chúng ta hãy ăn thử ở nhà
hàng mới này xem sao.)') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('100.  てもらう  Được ai đó làm cho ~', 'Common', '     <b>Công thức:</b> V-て +  もらう
<br>──────────<br><b>Cách dùng/Ý nghĩa:</b> Diễn tả việc người nói nhận được một hành động/sự giúp đỡ từ người khác.
<br>──────────<br><b>Ví dụ:</b><br>  私は医者に診てもらった。<br>→ (Tôi đã được bác sĩ khám cho.)
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>てあげる  (<b>N4</b>): Mình làm cho người khác.
<br>てくれる  (<b>N4</b>): Người khác làm cho mình (nhấn mạnh người làm).') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('101.  ておく  Làm sẵn; làm trước ~', 'Common', '     <b>Công thức:</b> V-て +  おく (Nói tắt:  ～とく /  ～どく)
<br>──────────<br><b>Cách dùng/Ý nghĩa:</b> Diễn tả việc làm gì đó trước để chuẩn bị cho tương lai, hoặc làm xong rồi để nguyên trạng thái đó.
<br>──────────<br><b>Ví dụ:</b><br>  旅行の前に、切符を買っておきます。<br>→ (Trước chuyến du lịch, tôi mua sẵn
vé.)
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>てある  (<b>N4</b>): Khác biệt: Nhấn mạnh vào trạng thái là kết quả của hành động có chủ ý. ''ておく'' nhấn mạnh vào hành động chuẩn bị.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('102.  てしまう  /  ちゃう  Lỡ làm gì đó; làm xong hoàn toàn', 'Common', '     <b>Công thức:</b> V-て +  しまう (Nói tắt:  ～ちゃう /  ～じゃう)
<br>──────────<br><b>Cách dùng/Ý nghĩa:</b> Diễn tả sự hoàn thành (dứt điểm) của hành động, hoặc sự tiếc nuối, hối hận, hành động lỡ xảy ra ngoài ý muốn.
<br>──────────<br><b>Ví dụ:</b><br>  大切なコップを割ってしまった。<br>→ (Tôi đã lỡ làm vỡ cái cốc quan trọng.) /
宿題はもうやってしまいました。<br>→ (Bài tập tôi đã làm xong hết rồi.)
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>終わる  (<b>N4</b>): Khác biệt: Chỉ đơn thuần kết thúc, không có sắc thái tiếc nuối/dứt điểm như ''しまう''.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('103.  てすみません  Tôi xin lỗi vì đã ~', 'Common', '     <b>Công thức:</b> V-て +  すみません /  すみませんでした
<br>──────────<br><b>Cách dùng/Ý nghĩa:</b> Dùng để xin lỗi về một hành động đã làm.
<br>──────────<br><b>Ví dụ:</b><br>  返事が遅れてすみませんでした。<br>→ (Xin lỗi vì đã trả lời muộn.)
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>てごめんなさい  (<b>N5</b>): Khác biệt: Thường thân mật, cá nhân hơn. ''すみません'' dùng được trong nhiều ngữ cảnh hơn (cả xin lỗi, cảm ơn, gây chú ý).') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('104.  てやる  Làm cho (người dưới, động vật, thực vật)', 'Common', '     <b>Công thức:</b> V-て +  やる
<br>──────────<br><b>Cách dùng/Ý nghĩa:</b> Làm gì đó cho người dưới cấp, động vật, thực vật. Cần cẩn thận khi dùng với người vì có thể mang sắc thái xem thường.
<br>──────────<br><b>Ví dụ:</b><br>  弟に宿題を手伝ってやった。<br>→ (Tôi đã giúp em trai làm bài tập.) <br>→  花に水を
やりました。<br>→ (Tôi đã tưới nước cho hoa.)
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>てあげる  (<b>N4</b>): Khác biệt: Cách nói thông thường hơn, dùng cho người ngang hàng hoặc dưới.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('105.  てよかった  Tôi mừng vì đã ~', 'Common', '     <b>Công thức:</b> V-て / V-なくて +  よかった
<br>──────────<br><b>Cách dùng/Ý nghĩa:</b> Diễn tả sự vui mừng, nhẹ nhõm vì một việc gì đó đã xảy ra (hoặc đã không xảy ra).
<br>──────────<br><b>Ví dụ:</b><br>  あなたに会えてよかったです。<br>→ (Tôi mừng vì đã có thể gặp bạn.) <br>→  雨が降
らなくてよかった。<br>→ (Mừng quá vì trời đã không mưa.)') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('106.  ているところ  Đang trong quá trình làm ~', 'Common', '     <b>Công thức:</b> V-て +  いる +  ところだ
<br>──────────<br><b>Cách dùng/Ý nghĩa:</b> Nhấn mạnh rằng hành động đang diễn ra đúng vào lúc nói.
<br>──────────<br><b>Ví dụ:</b><br>  今、レポートを書いているところです。<br>→ (Bây giờ tôi đang viết báo cáo.)
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>ている  (<b>N5</b>): Khác biệt: Chỉ trạng thái tiếp diễn nói chung. ''ているところ'' nhấn mạnh tính "ngay lúc này".') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('107.  ても  Dù; ngay cả khi; mặc dù ~', 'Common', '     <b>Công thức:</b> V-て / A-くて / Na  で / N  で +  も
<br>──────────<br><b>Cách dùng/Ý nghĩa:</b> Diễn tả điều kiện trái ngược, nghịch cảnh ("Dù A xảy ra thì B vẫn ...").
<br>──────────<br><b>Ví dụ:</b><br>  高くても、買いたいです。<br>→ (Dù đắt tôi vẫn muốn mua.)
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>のに  (<b>N4</b>): Khác biệt: Thường mang sắc thái bất ngờ, phàn nàn hơn.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('108.  と  Hễ mà [A] xảy ra, thì [B] cũng xảy ra', 'Common', '     <b>Công thức:</b> V-る / A-い / Na  だ / N  だ +  と
<br>──────────<br><b>Cách dùng/Ý nghĩa:</b> Diễn tả điều kiện tất yếu, tự nhiên, thói quen, hoặc khi phát hiện ra điều gì đó sau hành động. Vế sau không dùng ý chí/mệnh lệnh.
<br>──────────<br><b>Ví dụ:</b><br>  春になると、桜が咲きます。<br>→ (Hễ mùa xuân đến thì hoa anh đào nở.)
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>ば  /  たら  /  なら  (<b>N4</b>): Khác biệt: Các mẫu câu điều kiện khác, linh hoạt hơn về vế sau.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('109.  と言ってもいい  Có thể nói là ~', 'Common', '     <b>Công thức:</b> (Cụm từ/Câu) +  と言ってもいい (でしょう)
<br>──────────<br><b>Cách dùng/Ý nghĩa:</b> Diễn tả rằng có thể mô tả/xem xét một sự việc theo một cách nào đó.
<br>──────────<br><b>Ví dụ:</b><br>  彼は現代の英雄と言ってもいいでしょう。<br>→ (Có thể nói anh ấy là người
hùng thời hiện đại.)') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('110.  という  Được gọi là; tên là; rằng ~', 'Common', '     <b>Công thức:</b> N1 +  という + N2 / (Trích dẫn/Nội dung) +  という + N
<br>──────────<br><b>Cách dùng/Ý nghĩa:</b> Dùng để gọi tên, định nghĩa (N2 được gọi là N1), hoặc để trích dẫn, nói rõ nội dung.
<br>──────────<br><b>Ví dụ:</b><br>  これは「納豆」という食べ物です。<br>→ (Đây là món ăn gọi là "Natto".) <br>→  彼が
結婚するという噂を聞きました。<br>→ (Tôi đã nghe tin đồn rằng anh ấy sẽ kết hôn.)') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('111.  ということ  Việc ~; danh từ hóa cụm từ', 'Common', '     <b>Công thức:</b> (Câu) +  ということ
<br>──────────<br><b>Cách dùng/Ý nghĩa:</b> Danh từ hóa toàn bộ một câu, biến nó thành một "việc", một "sự thật", một "thông tin".
<br>──────────<br><b>Ví dụ:</b><br>  時間を守るということは大切です。<br>→ (Việc giữ đúng giờ là quan trọng.)
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>こと  (<b>N4</b>): Khác biệt: Danh từ hóa đơn giản hơn. ''ということ'' thường nhấn mạnh nội dung thông tin.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('112.  と言われている  Người ta nói rằng ~', 'Common', '     <b>Công thức:</b> (Sự thật/Niềm tin) +  と言われている
<br>──────────<br><b>Cách dùng/Ý nghĩa:</b> Diễn tả một niềm tin phổ biến, một điều được nhiều người nói đến, một sự thật được công nhận rộng rãi.
<br>──────────<br><b>Ví dụ:</b><br>  昔、ここには大きな寺があったと言われています。<br>→ (Người ta nói rằng
ngày xưa ở đây có một ngôi chùa lớn.)
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>そうだ  (N4 - nghe nói): Khác biệt: Thường chỉ việc nghe từ một nguồn cụ thể hơn, ít mang tính "được công nhận" hơn.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('113.  と聞いた  Tôi nghe nói...', 'Common', '     <b>Công thức:</b> (Thông tin) +  と聞いた /  と聞きました
<br>──────────<br><b>Cách dùng/Ý nghĩa:</b> Trình bày lại thông tin mà mình đã nghe được.
<br>──────────<br><b>Ví dụ:</b><br>  山田さんは来月転勤すると聞きました。<br>→ (Tôi nghe nói anh Yamada tháng sau sẽ chuyển công tác.)
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>そうだ  (N4 - nghe nói): Khác biệt: Gần như tương đương, ''と聞いた'' nhấn mạnh hơn hành động "nghe".') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('114.  と思う  Nghĩ rằng...', 'Common', '     <b>Công thức:</b> (Nội dung suy nghĩ) +  と思う /  と思います
<br>──────────<br><b>Cách dùng/Ý nghĩa:</b> Diễn tả suy nghĩ, ý kiến cá nhân của người nói.
<br>──────────<br><b>Ví dụ:</b><br>  彼はきっと合格すると思います。<br>→ (Tôi nghĩ anh ấy chắc chắn sẽ đỗ.)') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('115.  とか～とか  Nào là... nào là...; như là ~', 'Common', '     <b>Công thức:</b> N1  とか N2  とか / V1  とか V2  とか
<br>──────────<br><b>Cách dùng/Ý nghĩa:</b> Dùng để liệt kê ví dụ một cách không đầy đủ, mang tính văn nói, thân mật.
<br>──────────<br><b>Ví dụ:</b><br>  休みの日には、映画を見るとか、本を読むとかしています。<br>→ (Vào ngày
nghỉ, tôi thường làm những việc như là xem phim, hay là đọc sách.)
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>や  /  など  (<b>N5/N4</b>): Khác biệt: ''や/など'' có thể trang trọng hơn.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('116.  ところ  Sắp sửa; đang chuẩn bị làm ~', 'Common', '     <b>Công thức:</b> V-る +  ところだ
<br>──────────<br><b>Cách dùng/Ý nghĩa:</b> Diễn tả hành động sắp sửa bắt đầu ngay lúc này.
<br>──────────<br><b>Ví dụ:</b><br>  これから出かけるところです。<br>→ (Bây giờ tôi sắp ra ngoài đây.)
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>ているところ  (<b>N4</b>): Đang làm.
<br>たところ  (<b>N4</b>): Vừa mới làm xong.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('117.  続ける  (つづける) Tiếp tục ~', 'Common', '     <b>Công thức:</b> V-ます (bỏ  ます) +  続ける
<br>──────────<br><b>Cách dùng/Ý nghĩa:</b> Diễn tả sự tiếp diễn không ngừng của một hành động.
<br>──────────<br><b>Ví dụ:</b><br>  雨が一日中降り続けた。<br>→ (Mưa đã rơi liên tục suốt cả ngày.)') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('118.  って  Tên là; gọi là ~; rằng ~ (thân mật)', 'Common', '     <b>Công thức:</b> Thay thế ch<br>は,  と,  という... trong văn nói.
<br>──────────<br><b>Cách dùng/Ý nghĩa:</b> Là trợ từ/liên từ thân mật, dùng trong văn nói để đánh dấu chủ đề, trích dẫn, gọi tên...
<br>──────────<br><b>Ví dụ:</b><br>  田中さんって、どんな人？(Anh Tanaka ấy, là người thế nào?) <br>→  彼は来な
いって言ってたよ。<br>→ (Anh ấy nói là không đến đâu.)
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>は  (<b>N5</b>) /  と  (<b>N5</b>) /  という  (<b>N4</b>): Khác biệt: Là các dạng chuẩn/trang trọng hơn.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('119.  受身形  (うけみけい) Thể bị động', 'Common', '     <b>Công thức:</b> V1: -a +  れる; V2: -られる; V3:  される,  来られる.
<br>──────────<br><b>Cách dùng/Ý nghĩa:</b> Diễn tả hành động mà chủ ngữ là đối tượng tiếp nhận hành động.
<br>──────────<br><b>Ví dụ:</b><br>  私は犬に手を噛まれました。<br>→ (Tôi bị chó cắn vào tay.)') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('120.  は〜が…  は  [A] thì [B]; tuy nhiên; so sánh', 'Common', '     <b>Công thức:</b> N1  は ～ が、N2  は ～
<br>──────────<br><b>Cách dùng/Ý nghĩa:</b> Dùng để so sánh, đối chiếu hai chủ thể hoặc hai khía cạnh khác nhau.
<br>──────────<br><b>Ví dụ:</b><br>  英語は得意ですが、数学は苦手です。<br>→ (Tiếng Anh thì tôi giỏi, nhưng toán
thì tôi kém.)') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('121.  やすい  Dễ ~; có khả năng ~; có xu hướng ~', 'Common', '     <b>Công thức:</b> V-ます (bỏ  ます) +  やすい
<br>──────────<br><b>Cách dùng/Ý nghĩa:</b> Diễn tả một hành động nào đó dễ thực hiện, hoặc một sự vật/sự việc có xu hướng dễ xảy ra (thường là những thay đổi không mong muốn).
<br>──────────<br><b>Ví dụ:</b><br>  この薬は飲みやすいです。<br>→ (Thuốc này dễ uống.) <br>→  このコップは壊れや
すいので、気をつけてください。<br>→ (Cái cốc này dễ vỡ nên hãy cẩn thận.)
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>にくい  (<b>N4</b>): Khác biệt: Nghĩa đối lập ("khó làm").') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('122.  やっと  Cuối cùng thì; mãi mới; vừa đủ ~', 'Common', '     <b>Công thức:</b> Trạng từ.
<br>──────────<br><b>Cách dùng/Ý nghĩa:</b> Diễn tả một kết quả đạt được sau nhiều nỗ lực, khó khăn hoặc thời gian dài chờ đợi.
<br>──────────<br><b>Ví dụ:</b><br>  やっとバスに乗れました。<br>→ (Mãi mới lên được xe buýt.) <br>→  やっと宿題が終
わった。<br>→ (Cuối cùng thì cũng làm xong bài tập.)
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>とうとう  (<b>N3</b>): Khác biệt: Cũng là "cuối cùng", nhưng thường dùng cho kết quả cuối cùng của một quá trình dài, có thể tốt hoặc xấu.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('123.  より  Hơn; hơn là; hơn ~', 'Common', '     <b>Công thức:</b> N1  は N2  より A  です
<br>──────────<br><b>Cách dùng/Ý nghĩa:</b> Dùng trong câu so sánh hơn, để chỉ đối tượng được dùng làm mốc so sánh.
<br>──────────<br><b>Ví dụ:</b><br>  中国は日本より大きいです。<br>→ (Trung Quốc thì lớn hơn Nhật Bản.)
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～のほうが～より  (<b>N5</b>): Khác biệt: Là cấu trúc so sánh đầy đủ, ''より'' là
một phần của cấu trúc đó.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('124.  予定だ  (よていだ) Dự định; có kế hoạch ~', 'Common', '     <b>Công thức:</b> V-る / N  の +  予定だ
<br>──────────<br><b>Cách dùng/Ý nghĩa:</b> Diễn tả một kế hoạch, lịch trình đã được định sẵn.
<br>──────────<br><b>Ví dụ:</b><br>  午後、会議の予定です。<br>→ (Buổi chiều tôi có kế hoạch họp.) <br>→  来年、結婚する予定です。<br>→ (Tôi dự định sẽ kết hôn vào năm sau.)
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>つもりだ  (<b>N5</b>): Khác biệt: Nhấn mạnh ý định của người nói. ''予定だ'' nhấn mạnh kế hoạch (có thể là của bản thân hoặc của tổ chức).
<br>ようと思う  (<b>N4</b>): Khác biệt: Chỉ ý định, thường nảy ra lúc nói hoặc chưa chắc chắn bằng ''つもりだ'' / ''予定だ''.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('125.  ようだ  Có vẻ; dường như; trông như là ~', 'Common', '     <b>Công thức:</b> V/A/Na  な/N  の +  ようだ
<br>──────────<br><b>Cách dùng/Ý nghĩa:</b> Diễn tả sự suy đoán của người nói dựa trên những gì quan sát, cảm nhận được. Trang trọng hơn  みたいだ.
<br>──────────<br><b>Ví dụ:</b><br>  外は雨が降っているようです。<br>→ (Bên ngoài có vẻ như đang mưa.)
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>みたいだ  (<b>N4</b>): Khác biệt: Tương tự nhưng văn nói, thân mật hơn.
<br>らしい  (<b>N4</b>): Khác biệt: Dựa trên thông tin nghe được hoặc dấu hiệu rõ ràng.
<br>そうだ  (<b>N4</b>): Khác biệt: Dựa trên quan sát trực quan (có vẻ) hoặc nghe nói.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('126.  ように  /  ような  Giống như; như là; tương tự ~', 'Common', '     <b>Công thức:</b> V/A/Na  な/N  の +  ように + V/A /  ような + N
<br>──────────<br><b>Cách dùng/Ý nghĩa:</b> Là dạng trạng từ (ように) và tính từ (ような) của ''ようだ''. Dùng để so sánh (ví von) hoặc đưa ra ví dụ. Cũng dùng để chỉ mục đích (V-る/ない
+  ように).
<br>──────────<br><b>Ví dụ:</b><br>  雪のような肌。<br>→ (Làn da (trắng) như tuyết.) <br>→  日本語が話せるように、毎日勉強しています。<br>→ (Tôi học mỗi ngày để có thể nói được tiếng Nhật.)
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>みたいに  /  みたいな  (<b>N4</b>): Khác biệt: Văn nói hơn.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('127.  ようになる  Trở nên; đến mức mà ~', 'Common', '     <b>Công thức:</b> V-る (thể khả năng) / V-ない +  ようになる
<br>──────────<br><b>Cách dùng/Ý nghĩa:</b> Diễn tả sự thay đổi về khả năng hoặc thói quen (từ không thể -> có thể, từ không làm -> làm).
<br>──────────<br><b>Ví dụ:</b><br>  練習して、泳げるようになりました。<br>→ (Nhờ luyện tập, tôi đã biết bơi.)
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>ことになる  (<b>N4</b>): Khác biệt: Chỉ quyết định/kết quả (thường do bên ngoài). ''
ようになる'' chỉ sự thay đổi khả năng/trạng thái.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('128.  ようにする  Cố gắng ~; đảm bảo rằng ~', 'Common', '     <b>Công thức:</b> V-る / V-ない +  ようにする
<br>──────────<br><b>Cách dùng/Ý nghĩa:</b> Diễn tả sự nỗ lực, cố gắng để thực hiện hoặc không thực hiện một hành động nào đó một cách có ý thức, thường là để tạo thói quen.
<br>──────────<br><b>Ví dụ:</b><br>  甘いものを食べないようにしています。<br>→ (Tôi đang cố gắng không ăn đồ
ngọt.)
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>ことにする  (<b>N4</b>): Khác biệt: Chỉ việc quyết định làm gì. ''ようにする'' nhấn mạnh sự nỗ lực duy trì.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('129.  ようと思う  Định làm; dự định làm ~', 'Common', '     <b>Công thức:</b> V-意向形 +  と思う
<br>──────────<br><b>Cách dùng/Ý nghĩa:</b> Diễn tả ý định, dự định làm gì đó của người nói.
<br>──────────<br><b>Ví dụ:</b><br>  週末は、家でゆっくり休もうと思います。<br>→ (Cuối tuần tôi định sẽ nghỉ ngơi thong thả ở nhà.)
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>つもりだ  (<b>N5</b>): Khác biệt: Thường ý định chắc chắn hơn.
<br>予定だ  (<b>N4</b>): Khác biệt: Là kế hoạch đã lên lịch.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('130.  ぜひ  Nhất định; chắc chắn ~', 'Common', '     <b>Công thức:</b> Trạng từ.
<br>──────────<br><b>Cách dùng/Ý nghĩa:</b> Nhấn mạnh mong muốn mạnh mẽ hoặc lời yêu cầu, đề nghị tha thiết. Thường đi với  ～たい,  ～てください,  ～てほしい.
<br>──────────<br><b>Ví dụ:</b><br>  ぜひ日本へ遊びに来てください。<br>→ (Nhất định hãy đến Nhật chơi nhé.)
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>きっと  (<b>N4</b>): Khác biệt: Chỉ sự chắc chắn (phán đoán). ''ぜひ'' chỉ sự mong muốn/yêu cầu.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('131.  全然～ない  Hoàn toàn không ~', 'Common', '     <b>Công thức:</b>  全然 + V-ない / A-くない / Na  じゃない / N  じゃない
<br>──────────<br><b>Cách dùng/Ý nghĩa:</b> Phủ định hoàn toàn một sự việc, trạng thái.
<br>──────────<br><b>Ví dụ:</b><br>  お金が全然ありません。<br>→ (Tôi hoàn toàn không có tiền.)
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>あまり～ない  (<b>N4</b>): Khác biệt: Phủ định một phần ("không ~ lắm").') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('132.  づらい  Khó làm ~ (tâm lý)', 'Common', '     <b>Công thức:</b> V-ます (bỏ  ます) +  づらい
<br>──────────<br><b>Cách dùng/Ý nghĩa:</b> Diễn tả việc khó thực hiện một hành động, thường mang sắc thái khó khăn về mặt tâm lý, cảm xúc hoặc gây ra sự khó chịu, đau đớn.
<br>──────────<br><b>Ví dụ:</b><br>  人前で話しづらい。<br>→ (Tôi thấy khó nói chuyện trước đám đông.)
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>にくい  (<b>N4</b>): Khác biệt: Cũng là "khó làm", nhưng thường chỉ khó khăn về mặt vật lý, kỹ thuật hơn.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('1.  上げる  (あげる) /  上がる  (あがる) - Hoàn thành việc ~', 'Common', '     <b>Công thức:</b>
<br>V-ます (bỏ  ます) +  上げる (Tha động từ)
<br><br>V-ます (bỏ  ます) +  上がる (Tự động từ)
<br>──────────<br><b>Cách dùng:</b> Diễn tả sự hoàn thành, kết thúc trọn vẹn của một hành động, thường là những hành động đòi hỏi nỗ lực hoặc có kết quả cụ thể.
<br>──────────<br><b>Ý nghĩa:</b> Nhấn mạnh việc hành động đã được thực hiện xong một cách hoàn chỉnh.
<br>──────────<br><b>Chú ý:</b>  上げる là tha động từ,  上がる là tự động từ. Thường viết bằng Hiragana (～あげる /  ～あがる).
<br>──────────<br><b>Ví dụ:</b>
<br>やっとレポートを書き上げた。<br>→ (Cuối cùng tôi cũng đã viết xong bản báo cáo.)
<br><br>ケーキが焼き上がりました。<br>→ (Bánh đã nướng xong rồi.)
<br>──────────<br><b>Ngữ pháp tương tự:</b><br>
～終わる (<b>N4</b>): Cũng có nghĩa là "xong", nhưng ít nhấn mạnh sự hoàn chỉnh/nỗ lực.
<br><br>～切る (<b>N3</b>): Nhấn mạnh việc làm xong toàn bộ, hết sạch.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('2.  あまり  - Quá... đến nỗi', 'Common', '     <b>Công thức:</b>
<br>N +  の +  あまり
<br><br>V-る / V-た +  あまり
<br><br>Adj-な +  な +  あまり
<br><br>Adj-い →  さ +  の +  あまり
<br>──────────<br><b>Cách dùng:</b> Diễn tả một kết quả (thường bất thường/tiêu cực) xảy ra do một trạng thái hoặc cảm xúc ở mức độ quá cao.
<br>──────────<br><b>Ý nghĩa:</b> Nhấn mạnh mức độ "quá mức" của nguyên nhân.
<br>──────────<br><b>Chú ý:</b> Thường dùng với các danh từ chỉ cảm xúc.
<br>──────────<br><b>Ví dụ:</b>
<br>嬉しさのあまり、涙が出ました。<br>→ (Vì quá vui sướng, tôi đã bật khóc.)
<br><br>心配するあまり、彼は病気になってしまった。<br>→ (Vì quá lo lắng, anh ấy đã
đổ bệnh.)
<br>──────────<br><b>Ngữ pháp tương tự:</b><br>
～すぎる (<b>N4</b>): Cũng có nghĩa là "quá", nhưng thường chỉ đơn giản diễn tả mức độ.
<br><br>～て/で (<b>N5/N4</b>): Diễn tả nguyên nhân - kết quả thông thường.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('3.  あまりにも  - Quá nhiều; quá mức; quá ~', 'Common', '     <b>Công thức:</b>  あまりにも + Adj / Adv / V
<br>──────────<br><b>Cách dùng:</b> Là một trạng từ dùng để nhấn mạnh mức độ "quá", "vượt quá bình thường". Mạnh hơn  とても.
<br>──────────<br><b>Ý nghĩa:</b> Thể hiện sự ngạc nhiên, phàn nàn về mức độ quá đáng.
<br>──────────<br><b>Chú ý:</b> Đứng ngay trước từ mà nó muốn nhấn mạnh.
<br>──────────<br><b>Ví dụ:</b>
<br>あまりにも難しい問題で、誰も解けなかった。<br>→ (Vì là một vấn đề quá khó nên không ai giải được.)
<br><br>彼の態度はあまりにも失礼だ。<br>→ (Thái độ của anh ta thật quá bất lịch sự.)
<br>──────────<br><b>Ngữ pháp tương tự:</b><br>
とても (<b>N5</b>): Rất (mức độ nhấn mạnh thấp hơn).
<br><br>非常に (<b>N3</b>): Cực kỳ (tương đối trang trọng).') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('4.  合う  (あう) - Cùng nhau làm gì đó', 'Common', '     <b>Công thức:</b> V-ます (bỏ  ます) +  合う
<br>──────────<br><b>Cách dùng:</b> Ghép vào sau động từ để diễn tả hành động được thực hiện bởi hai hoặc nhiều người/nhóm, hướng về phía nhau hoặc cùng nhau.
<br>──────────<br><b>Ý nghĩa:</b> Nhấn mạnh tính "tương hỗ", "cùng nhau" của hành động.
<br>──────────<br><b>Chú ý:</b> Thường dùng với các động từ như  話す,  助ける,  愛する,  知る...
<br>──────────<br><b>Ví dụ:</b>
<br>困った時は、助け合いましょう。<br>→ (Khi gặp khó khăn, chúng ta hãy cùng giúp đỡ lẫn nhau.)
<br><br>もっとよく話し合ってから決めたほうがいい。<br>→ (Nên thảo luận cùng nhau kỹ hơn rồi hãy quyết định.)
<br>──────────<br><b>Ngữ pháp tương tự:</b><br>
一緒に (<b>N5</b>): Cùng nhau (trạng từ, đứng trước động từ).') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('5.  ばいい  - Nên ~; có thể ~; sẽ tốt nếu ~', 'Common', '     <b>Công thức:</b>
<br>V-ば +  いい
<br><br>Adj-い →  ければ +  いい
<br><br>Adj-な / N +  なら(ば) +  いい
<br>──────────<br><b>Cách dùng:</b> Đưa ra lời khuyên nhẹ nhàng; thể hiện mong muốn; hỏi lời khuyên.
<br>──────────<br><b>Ý nghĩa:</b> Diễn tả điều kiện lý tưởng, lời khuyên hoặc mong muốn.
<br>──────────<br><b>Chú ý:</b> Có thể thay  いい bằng  よかった (quá khứ) hoặc  のに (tiếc nuối).
<br>──────────<br><b>Ví dụ:</b>
<br>分からなかったら、先生に聞けばいい。<br>→ (Nếu không hiểu thì nên hỏi giáo viên.)
<br><br>どうすればいいか分かりません。<br>→ (Tôi không biết nên làm thế nào.)
<br>──────────<br><b>Ngữ pháp tương tự:</b><br>
～たらいい (<b>N4</b>): Gần như tương đương.
<br><br>～ほうがいい (<b>N4</b>): Lời khuyên mạnh hơn.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('6.  ばよかった  - Lẽ ra nên ~; sẽ tốt hơn nếu ~', 'Common', '     <b>Công thức:</b>
<br>V-ば +  よかった
<br><br>V-ない →  なければ +  よかった
<br>──────────<br><b>Cách dùng:</b> Diễn tả sự hối tiếc về một việc đã làm hoặc đã không làm trong quá khứ.
<br>──────────<br><b>Ý nghĩa:</b> Thể hiện sự tiếc nuối, hối hận.
<br>──────────<br><b>Chú ý:</b> Luôn dùng ở dạng quá khứ (よかった).
<br>──────────<br><b>Ví dụ:</b>
<br>もっと勉強すればよかった。<br>→ (Lẽ ra tôi nên học hành chăm chỉ hơn.)
<br><br>あんなことを言わなければよかった。<br>→ (Lẽ ra tôi không nên nói những lời
như vậy.)
<br>──────────<br><b>Ngữ pháp tương tự:</b><br>
～たらよかった (<b>N4</b>): Gần như tương đương.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('7.  ば～ほど  - Càng... càng ~', 'Common', '     <b>Công thức:</b>
<br>V-ば + V-る +  ほど
<br><br>Adj-い →  ければ + Adj-い +  ほど
<br><br>Adj-な →  なら + Adj-な +  な +  ほど
<br>──────────<br><b>Cách dùng:</b> Diễn tả mối quan hệ tỷ lệ thuận: khi mức độ vế trước tăng thì vế sau cũng tăng.
<br>──────────<br><b>Ý nghĩa:</b> Nhấn mạnh sự thay đổi song song về mức độ.
<br>──────────<br><b>Chú ý:</b> Động từ hoặc tính từ được lặp lại.
<br>──────────<br><b>Ví dụ:</b>
<br>日本語は勉強すれば勉強するほど面白くなる。<br>→ (Tiếng Nhật càng học thì càng thấy thú vị.)
<br><br>荷物は少なければ少ないほどいい。<br>→ (Hành lý càng ít thì càng tốt.)
<br>──────────<br><b>Ngữ pháp tương tự:</b><br>
～につれて (<b>N3</b>): Cũng diễn tả sự thay đổi song song, thường dùng với thay đổi tự nhiên.
<br><br>～にしたがって (<b>N3</b>): Cũng diễn tả sự thay đổi song song, thường dùng với
thay đổi tự nhiên.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('8.  ば～のに  - Lẽ ra ~; nên ~; giá mà ~', 'Common', '     <b>Công thức:</b>
<br>V-ば +  ～のに
<br><br>Adj-い →  ければ +  ～のに
<br><br>Adj-な →  なら +  ～のに
<br>──────────<br><b>Cách dùng:</b> Diễn tả sự tiếc nuối, thất vọng về một kết quả không như mong đợi, dù điều kiện đã có thể dẫn đến kết quả tốt hơn.
<br>──────────<br><b>Ý nghĩa:</b> "Nếu ... thì đã ... rồi, tiếc thật!".
<br>──────────<br><b>Chú ý:</b> Vế sau  ～のに thường ngụ ý một kết quả trái ngược.
<br>──────────<br><b>Ví dụ:</b>
<br>もっと早く起きれば、電車に間に合ったのに。<br>→ (Giá mà dậy sớm hơn thì đã kịp chuyến tàu rồi.)
<br><br>お金があれば、そのカメラを買ったのに。<br>→ (Nếu có tiền thì tôi đã mua cái máy ảnh đó rồi.)
<br>──────────<br><b>Ngữ pháp tương tự:</b><br>
～ばよかった (<b>N3</b>): Nhấn mạnh sự hối tiếc về hành động của bản thân.
<br><br>～たら～のに (<b>N4</b>): Gần như tương đương.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('9.  ばかりで  - Chỉ; toàn là ~ (mô tả tiêu cực)', 'Common', '     <b>Công thức:</b> N +  ばかりで
<br>──────────<br><b>Cách dùng:</b> Diễn tả sự tồn tại của một thứ gì đó với số lượng lớn, chiếm đa số, thường mang hàm ý tiêu cực, phàn nàn.
<br>──────────<br><b>Ý nghĩa:</b> Nhấn mạnh rằng "chỉ toàn là" thứ đó.
<br>──────────<br><b>Chú ý:</b> Khác với  ～ばかり (N4 - chỉ làm V).
<br>──────────<br><b>Ví dụ:</b>
<br>このクラスは男子ばかりで、女子は３人しかいない。<br>→ (Lớp này toàn là con trai, con gái chỉ có 3 người.)
<br><br>会議では文句ばかりで、建設的な意見は出なかった。<br>→ (Trong cuộc họp toàn là phàn nàn, chẳng có ý kiến xây dựng nào được đưa ra.)
<br>──────────<br><b>Ngữ pháp tương tự:</b><br>
～だらけ (<b>N3</b>): "Toàn là" (thường cho thứ bám dính, luôn tiêu cực).
<br><br>だけ (<b>N5</b>): Chỉ (trung tính).') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('10.  ばかりでなく  - Không chỉ... mà còn; cũng như ~', 'Common', '     <b>Công thức:</b> N / V-thể thường / Adj-い / Adj-な +  ばかりでなく、～も
<br>──────────<br><b>Cách dùng:</b> Dùng để liệt kê, nhấn mạnh rằng không chỉ có A mà còn có cả B.
<br>──────────<br><b>Ý nghĩa:</b> Mở rộng phạm vi, bổ sung thông tin.
<br>──────────<br><b>Chú ý:</b> Thường đi kèm với  も ở vế sau.
<br>──────────<br><b>Ví dụ:</b>
<br>彼は日本語ばかりでなく、英語も話せる。<br>→ (Anh ấy không chỉ nói được tiếng Nhật mà còn cả tiếng Anh nữa.)
<br><br>このレストランは料理がおいしいばかりでなく、雰囲気もいい。<br>→ (Nhà hàng này không chỉ đồ ăn ngon mà không khí cũng rất tuyệt.)
<br>──────────<br><b>Ngữ pháp tương tự:</b><br>
～だけでなく (<b>N3</b>): Gần như tương đương.
<br><br>～上に (<b>N3</b>): Hơn nữa, thêm vào đó.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('11.  べきだ  - Nên làm; phải làm ~', 'Common', '     <b>Công thức:</b>
<br>V-る +  べきだ /  べきです
<br><br>Adj-な →  である +  べきだ
<br><br>Adj-い →  くある +  べきだ (Ít dùng)
<br><br>Lưu ý:  する →  すべきだ
<br>──────────<br><b>Cách dùng:</b> Diễn tả một hành động/trạng thái được coi là đúng đắn, hợp lý, là nghĩa vụ nên làm theo lẽ thường hoặc đạo đức. Mạnh hơn  ～ほうがいい.
<br>──────────<br><b>Ý nghĩa:</b> Nhấn mạnh "đương nhiên là nên/phải" làm gì đó.
<br>──────────<br><b>Chú ý:</b> Có thể mang sắc thái áp đặt. Dùng  べきだった cho quá khứ.
<br>──────────<br><b>Ví dụ:</b>
<br>学生はもっと勉強すべきだ。<br>→ (Học sinh nên học hành chăm chỉ hơn.)
<br><br>約束は守るべきだ。<br>→ (Lời hứa thì nên giữ.)
<br>──────────<br><b>Ngữ pháp tương tự:</b><br>
～ほうがいい (<b>N4</b>): Lời khuyên cá nhân, nhẹ nhàng hơn.
<br><br>～なければならない (<b>N4</b>): Phải làm (nghĩa vụ, sự cần thiết).') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('12.  べきではない  - Không nên làm; không được làm ~', 'Common', '     <b>Công thức:</b> V-る +  べきではない /  べきじゃありません
<br>──────────<br><b>Cách dùng:</b> Diễn tả một hành động được coi là sai trái, không hợp lý, không nên làm theo lẽ thường hoặc đạo đức.
<br>──────────<br><b>Ý nghĩa:</b> Nhấn mạnh "đương nhiên là không nên" làm gì đó.
<br>──────────<br><b>Chú ý:</b> Mang tính khuyên răn hoặc cấm đoán khá mạnh.
<br>──────────<br><b>Ví dụ:</b>
<br>人の悪口を言うべきではない。<br>→ (Không nên nói xấu người khác.)
<br><br>簡単に諦めるべきではない。<br>→ (Không nên dễ dàng bỏ cuộc.)
<br>──────────<br><b>Ngữ pháp tương tự:</b><br>
～ないほうがいい (<b>N4</b>): Lời khuyên "không nên", nhẹ nhàng hơn.
<br><br>～てはいけない (<b>N5</b>): Không được làm (cấm đoán).') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('13.  別に～ない  (べつに～ない) - Không hẳn là, không đặc biệt ~', 'Common', '     <b>Công thức:</b>  別に + V-ない / Adj-くない / Adj-じゃない / N +  ではない
<br>──────────<br><b>Cách dùng:</b> Dùng để phủ định nhẹ nhàng, hàm ý không có gì đặc biệt, không quan trọng. Thường dùng trong văn nói.
<br>──────────<br><b>Ý nghĩa:</b> "Không có gì đặc biệt cả", "Cũng không hẳn là...".
<br>──────────<br><b>Chú ý:</b> Luôn đi kèm với dạng phủ định (～ない).
<br>──────────<br><b>Ví dụ:</b>
<br>A:  何か怒ってる？ (Cậu đang giận à?) <br>B:  ううん、別に怒ってないよ。
(Ừm, không, tớ có giận gì đâu.)
<br><br>別に難しい問題ではありません。<br>→ (Đó không phải là vấn đề gì đặc biệt khó cả.)
<br>──────────<br><b>Ngữ pháp tương tự:</b><br>
特に～ない (<b>N4/N3</b>): Không đặc biệt...
<br><br>あまり～ない (<b>N5</b>): Không... lắm.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('14.  ぶりに  - Lần đầu tiên sau (khoảng thời gian)', 'Common', '     <b>Công thức:</b> Khoảng thời gian +  ぶりに /  ぶりだ
<br>──────────<br><b>Cách dùng:</b> Diễn tả một hành động/sự kiện xảy ra lần đầu tiên sau một khoảng thời gian dài.
<br>──────────<br><b>Ý nghĩa:</b> Nhấn mạnh khoảng thời gian đã trôi qua kể từ lần cuối.
<br>──────────<br><b>Chú ý:</b> Thường dùng với các từ như  久しぶりに (lâu rồi mới),  何年ぶりに (mấy năm rồi mới)...
<br>──────────<br><b>Ví dụ:</b>
<br>10 年ぶりに高校時代の友達に会った。<br>→ (Sau 10 năm tôi mới gặp lại bạn thời cấp ba.)
<br><br>久しぶりに映画を見に行った。<br>→ (Đã lâu rồi tôi mới đi xem phim.)
<br>──────────<br><b>Ngữ pháp tương tự:</b><br>
～てから (<b>N5</b>): Sau khi... (không nhấn mạnh khoảng thời gian dài).') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('15.  中  (ちゅう  /  じゅう) - Đang; trong lúc; trong suốt ~', 'Common', '     <b>Công thức:</b> N +  中 (ちゅう /  じゅう)
<br>──────────<br><b>Cách dùng:</b>
<br>～中  (ちゅう): Đang trong quá trình (会議中).
<br><br>～中  (じゅう): Trong suốt / Khắp (一日中).
<br><br>～中  (ちゅう): Trong vòng / Trước khi kết thúc (午前中).
<br>──────────<br><b>Ý nghĩa:</b> Tùy thuộc vào cách đọc và danh từ.
<br>──────────<br><b>Chú ý:</b> Cách đọc phụ thuộc vào từ đi trước.
<br>──────────<br><b>Ví dụ:</b>
<br>ただ今、話し中です。<br>→ (Bây giờ máy đang bận.)
<br><br>昨日、一日中寝ていました。<br>→ (Hôm qua tôi đã ngủ suốt cả ngày.)
<br><br>今日中にレポートを出してください。<br>→ (Hãy nộp báo cáo trong ngày hôm
nay.)
<br>──────────<br><b>Ngữ pháp tương tự:</b><br>
～間に (<b>N4</b>): Trong lúc... (nhấn mạnh hành động khác xảy ra).
<br><br>～うちに (<b>N3</b>): Trong khi... (nhấn mạnh sự thay đổi hoặc cần làm trước khi thay đổi).') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('16.  だけ  - Đến mức ~ / Chừng nào mà ~', 'Common', '     <b>Công thức:</b> V-る / V-たい / Adj-い / Adj-な +  だけ
<br>──────────<br><b>Cách dùng:</b> Diễn tả giới hạn, phạm vi hoặc mức độ tối đa của một hành động/trạng thái.
<br>──────────<br><b>Ý nghĩa:</b> "Đến mức...", "hết mức có thể".
<br>──────────<br><b>Chú ý:</b> Khác với  だけ (N5 - chỉ). Thường đi với  できるだけ,  好きなだけ.
<br>──────────<br><b>Ví dụ:</b>
<br>食べたいだけ食べてください。<br>→ (Hãy ăn bao nhiêu tùy thích.)
<br><br>できるだけ早く来てください。<br>→ (Hãy đến sớm nhất có thể.)
<br>──────────<br><b>Ngữ pháp tương tự:</b><br>
～ほど (<b>N3</b>): Đến mức (thường dùng trong so sánh/ví von).
<br><br>～くらい /  ぐらい (<b>N4</b>): Khoảng, đến mức.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('17.  だけでなく  - Không chỉ… mà còn ~', 'Common', '     <b>Công thức:</b> N / V-thể thường / Adj-い / Adj-な +  だけでなく、～も
<br>──────────<br><b>Cách dùng:</b> Dùng để liệt kê, nhấn mạnh không chỉ có A mà còn có cả B.
<br>──────────<br><b>Ý nghĩa:</b> Mở rộng phạm vi, bổ sung thông tin.
<br>──────────<br><b>Chú ý:</b> Thường đi kèm với  も ở vế sau.
<br>──────────<br><b>Ví dụ:</b>
<br>この映画は面白いだけでなく、感動的でもある。<br>→ (Bộ phim này không chỉ thú vị mà còn cảm động nữa.)
<br><br>彼はサッカーが上手なだけでなく、勉強もよくできる。<br>→ (Cậu ấy không chỉ chơi đá bóng giỏi mà học cũng rất tốt.)
<br>──────────<br><b>Ngữ pháp tương tự:</b><br>
～ばかりでなく (<b>N3</b>): Gần như tương đương.
<br><br>～上に (<b>N3</b>): Hơn nữa, thêm vào đó.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('18.  だけど  - Nhưng; tuy nhiên; mặc dù ~', 'Common', '     <b>Công thức:</b> Câu 1 +  だけど + Câu 2
<br>──────────<br><b>Cách dùng:</b> Liên từ nối dùng trong văn nói, nối hai vế câu tương phản.
<br>──────────<br><b>Ý nghĩa:</b> Nhưng, tuy nhiên.
<br>──────────<br><b>Chú ý:</b> Thân mật.
<br>──────────<br><b>Ví dụ:</b>
<br>今日は天気がいいね。だけど、少し暑いね。<br>→ (Hôm nay thời tiết đẹp nhỉ. Nhưng mà hơi nóng nhỉ.)
<br><br>行きたいだけど、時間がないんだ。<br>→ (Tôi muốn đi nhưng không có thời gian.)
<br>──────────<br><b>Ngữ pháp tương tự:</b><br>
でも (<b>N5</b>): Nhưng.
<br><br>しかし (<b>N4</b>): Tuy nhiên (trang trọng hơn).
<br><br>けど /  けれども (<b>N4</b>): Nhưng (phổ biến).') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('19.  だらけ  - Đầy; phủ đầy; rất nhiều (thứ không mong muốn)', 'Common', '     <b>Công thức:</b> N +  だらけ
<br>──────────<br><b>Cách dùng:</b> Diễn tả rằng một thứ gì đó bị bao phủ/chứa đầy những thứ không mong muốn, gây cảm giác khó chịu, tiêu cực.
<br>──────────<br><b>Ý nghĩa:</b> Nhấn mạnh sự tồn tại của những thứ tiêu cực với số lượng lớn.
<br>──────────<br><b>Chú ý:</b> Luôn mang hàm ý tiêu cực. Thường dùng với  泥,  血,  ゴミ,  間違い,  借金...
<br>──────────<br><b>Ví dụ:</b>
<br>靴が泥だらけになった。<br>→ (Giày dính đầy bùn.)
<br><br>この作文は間違いだらけだ。<br>→ (Bài văn này đầy lỗi sai.)
<br>──────────<br><b>Ngữ pháp tương tự:</b><br>
～ばかり (<b>N4/N3</b>): Chỉ toàn là (có thể không tiêu cực).
<br><br>～いっぱい (<b>N5</b>): Đầy (thường trung tính hoặc tích cực).') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('20.  どんなに～ても  - Dù ~ đến đâu (thế nào)', 'Common', '     <b>Công thức:</b>  どんなに + V-ても / Adj-くても / Adj-な/N +  でも
<br>──────────<br><b>Cách dùng:</b> Diễn tả rằng dù điều kiện có xảy ra ở mức độ cao/cực đoan, kết quả vẫn không thay đổi.
<br>──────────<br><b>Ý nghĩa:</b> Nhấn mạnh "cho dù... đến mức nào... thì cũng...".
<br>──────────<br><b>Chú ý:</b> Tương tự  いくら～ても.
<br>──────────<br><b>Ví dụ:</b>
<br>どんなに反対されても、私は留学します。<br>→ (Dù bị phản đối thế nào đi nữa, tôi vẫn sẽ đi du học.)
<br><br>どんなに高くても、このバッグが欲しい。<br>→ (Dù đắt đến mấy, tôi vẫn muốn cái túi này.)
<br>──────────<br><b>Ngữ pháp tương tự:</b><br>
いくら～ても (<b>N3</b>): Dù... bao nhiêu (thường nhấn mạnh số lượng/giá cả).
<br><br>たとえ～ても (<b>N3</b>): Ngay cả khi... (mang tính giả định mạnh hơn).
<br><br>～ても /  ～でも (<b>N4</b>): Dù... thì cũng (cơ bản nhất).') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('21.  どうしても  - Dù thế nào cũng; bằng mọi giá; rốt cuộc ~', 'Common', '     <b>Công thức:</b>  どうしても + V / V-たい / V-ない
<br>──────────<br><b>Cách dùng:</b>
<br>Diễn tả ý chí mạnh mẽ, quyết tâm "bằng mọi giá".
<br><br>Diễn tả tình huống không thể tránh khỏi hoặc không thể làm được "dù thế nào cũng không...".
<br>──────────<br><b>Ý nghĩa:</b> Nhấn mạnh sự quyết tâm hoặc sự bất khả kháng.
<br>──────────<br><b>Chú ý:</b> Nghĩa thay đổi tùy thuộc vào vế câu đi sau.
<br>──────────<br><b>Ví dụ:</b>
<br>どうしてもこの大学に入りたい。<br>→ (Tôi muốn vào trường đại học này bằng mọi giá.)
<br><br>どうしても思い出せない。<br>→ (Dù cố thế nào tôi cũng không thể nhớ ra được.)
<br>──────────<br><b>Ngữ pháp tương tự:</b><br>
必ず (<b>N4</b>): Nhất định.
<br><br>絶対に (<b>N4</b>): Tuyệt đối.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('22.  ふりをする  - Giả vờ; hành động như thể ~', 'Common', '     <b>Công thức:</b> V-thể thường / Adj-い / Adj-な +  な / N +  の +  ふりをする
<br>──────────<br><b>Cách dùng:</b> Diễn tả hành động giả vờ, tỏ ra như thể mình đang ở trong một trạng thái/làm gì đó, trong khi thực tế không phải vậy.
<br>──────────<br><b>Ý nghĩa:</b> Giả bộ, làm ra vẻ.
<br>──────────<br><b>Chú ý:</b> Thường mang hàm ý không thành thật.
<br>──────────<br><b>Ví dụ:</b>
<br>彼は知らないふりをした。<br>→ (Anh ta giả vờ không biết.)
<br><br>寝たふりをしないでください。<br>→ (Đừng giả vờ ngủ nữa.)
<br>──────────<br><b>Ngữ pháp tương tự:</b><br>
～みたい (<b>N4</b>): Trông có vẻ như.
<br><br>～よう (<b>N4/N3</b>): Dường như là.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('23.  ふと  - Đột nhiên; tình cờ; bất ngờ; vô tình ~', 'Common', '     <b>Công thức:</b>  ふと + V
<br>──────────<br><b>Cách dùng:</b> Trạng từ, diễn tả hành động/suy nghĩ nảy sinh đột ngột, không chủ ý.
<br>──────────<br><b>Ý nghĩa:</b> Bất chợt, chợt.
<br>──────────<br><b>Chú ý:</b> Thường đi với  思う,  気づく,  見る...
<br>──────────<br><b>Ví dụ:</b>
<br>道を歩いていて、ふと昔のことを思い出した。<br>→ (Đang đi trên đường, tôi chợt nhớ về chuyện ngày xưa.)
<br><br>ふと窓の外を見ると、雪が降っていた。<br>→ (Bất chợt nhìn ra ngoài cửa sổ, tôi thấy tuyết đang rơi.)
<br>──────────<br><b>Ngữ pháp tương tự:</b><br>
急に (<b>N5</b>): Đột nhiên.
<br><br>突然 (<b>N4</b>): Đột nhiên, bất thình lình.
<br><br>いきなり (<b>N3</b>): Đột ngột, ngay lập tức.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('24.  がち  - Có xu hướng; thường; hay; dễ làm gì đó', 'Common', '     <b>Công thức:</b> V-ます (bỏ  ます) / N +  がち
<br>──────────<br><b>Cách dùng:</b> Diễn tả khuynh hướng, thói quen thường xảy ra, hoặc trạng thái dễ rơi vào, thường mang sắc thái tiêu cực.
<br>──────────<br><b>Ý nghĩa:</b> Hay..., thường..., có xu hướng...
<br>──────────<br><b>Chú ý:</b> Thường dùng cho thói quen/tình trạng không tốt (病気がち,  忘れがち).
<br>──────────<br><b>Ví dụ:</b>
<br>彼は子供の時から病気がちだった。<br>→ (Anh ấy từ nhỏ đã hay ốm.)
<br><br>雨の日は、電車が遅れがちだ。<br>→ (Vào những ngày mưa, tàu điện thường hay
bị trễ.)
<br>──────────<br><b>Ngữ pháp tương tự:</b><br>
～やすい (<b>N4</b>): Dễ... (thiên về tính chất).
<br><br>～気味 (<b>N3</b>): Có vẻ hơi... (chỉ mức độ nhẹ).
<br><br>～っぽい (<b>N3</b>): Trông có vẻ..., ra vẻ...') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('25.  がたい  - Rất khó để ~; khó ~', 'Common', '     <b>Công thức:</b> V-ます (bỏ  ます) +  がたい
<br>──────────<br><b>Cách dùng:</b> Diễn tả hành động khó thực hiện, thường do yếu tố tâm lý, cảm xúc.
<br>──────────<br><b>Ý nghĩa:</b> Khó mà..., khó có thể...
<br>──────────<br><b>Chú ý:</b> Mạnh hơn  ～にくい. Thường dùng với  信じる,  理解する,  許す...
<br>──────────<br><b>Ví dụ:</b>
<br>それは信じがたい話だ。<br>→ (Đó là một câu chuyện khó tin.)
<br><br>彼がしたことは、許しがたい。<br>→ (Việc anh ta đã làm thật khó tha thứ.)
<br>──────────<br><b>Ngữ pháp tương tự:</b><br>
～にくい (<b>N4</b>): Khó... (thường chỉ khó khăn về mặt vật lý).
<br><br>～づらい (<b>N3</b>): Khó... (thường chỉ khó khăn về tâm lý/phiền phức).') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('26.  気味  (ぎみ) - Có vẻ ~; trông như ~; có xu hướng ~', 'Common', '     <b>Công thức:</b> V-ます (bỏ  ます) / N +  気味
<br>──────────<br><b>Cách dùng:</b> Diễn tả cảm giác có một chút dấu hiệu, khuynh hướng của một trạng thái nào đó, thường là tiêu cực.
<br>──────────<br><b>Ý nghĩa:</b> Hơi..., có vẻ..., cảm thấy hơi...
<br>──────────<br><b>Chú ý:</b> Chỉ mức độ nhẹ. Thường dùng với  疲れ気味,  風邪気味...
<br>──────────<br><b>Ví dụ:</b>
<br>最近、ちょっと疲れ気味だ。<br>→ (Gần đây, tôi cảm thấy hơi mệt.)
<br><br>彼は少し緊張気味に見えた。<br>→ (Anh ấy trông có vẻ hơi căng thẳng.)
<br>──────────<br><b>Ngữ pháp tương tự:</b><br>
～がち (<b>N3</b>): Có xu hướng (mạnh hơn).
<br><br>～っぽい (<b>N3</b>): Giống như là..., có vẻ...') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('27.  ごとに  - Mỗi; mọi; cách khoảng ~', 'Common', '     <b>Công thức:</b> N (khoảng thời gian/số lượng/danh từ) +  ごとに
<br>──────────<br><b>Cách dùng:</b> Diễn tả sự lặp lại đều đặn theo từng khoảng hoặc từng đối tượng.
<br>──────────<br><b>Ý nghĩa:</b> Cứ mỗi..., từng...
<br>──────────<br><b>Chú ý:</b> 10 分ごとに (cứ mỗi 10 phút),  グループごとに (từng nhóm một).
<br>──────────<br><b>Ví dụ:</b>
<br>このバスは 10 分ごとに来ます。<br>→ (Xe buýt này cứ 10 phút lại đến một chuyến.)
<br><br>オリンピックは４年ごとに開かれます。<br>→ (Thế vận hội Olympic được tổ chức 4 năm một lần.)
<br>──────────<br><b>Ngữ pháp tương tự:</b><br>
～おきに (<b>N3</b>): Cách... (nhấn mạnh khoảng nghỉ).
<br><br>～ずつ (<b>N4</b>): Từng... (nhấn mạnh sự phân chia).
<br><br>毎～ (<b>N5</b>): Mỗi... (毎朝 - mỗi sáng).') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('28.  ほど  - Mức độ; phạm vi; giới hạn; khoảng ~', 'Common', '     <b>Công thức:</b> N / V-る / V-ない / Adj-い / Adj-な +  ほど
<br>──────────<br><b>Cách dùng:</b> Chỉ mức độ của hành động/trạng thái (thường là cao), hoặc dùng để so sánh.
<br>──────────<br><b>Ý nghĩa:</b> Đến mức..., như là..., khoảng...
<br>──────────<br><b>Chú ý:</b> Linh hoạt, xuất hiện trong  ～ば～ほど (<b>N3</b>),  ～ほど～ない (<b>N3</b>).
<br>──────────<br><b>Ví dụ:</b>
<br>死ぬほど疲れた。<br>→ (Tôi mệt đến chết đi được.)
<br><br>彼ほど親切な人はいない。<br>→ (Không có ai tốt bụng như anh ấy.)
<br>──────────<br><b>Ngữ pháp tương tự:</b><br>
～くらい /  ぐらい (<b>N4</b>): Khoảng, đến mức (thường thay thế được,  ほど
trang trọng hơn).
<br><br>～だけ (<b>N5/N3</b>): Chỉ / Đến mức.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('29.  ほど～ない  - Không... bằng ~', 'Common', '     <b>Công thức:</b> N1  は N2 +  ほど + Adj / V +  ない
<br>──────────<br><b>Cách dùng:</b> Dùng trong câu so sánh phủ định, nói rằng N1 không đạt đến mức độ của N2.
<br>──────────<br><b>Ý nghĩa:</b> Không... bằng/như...
<br>──────────<br><b>Chú ý:</b> Là cách so sánh kém hơn.
<br>──────────<br><b>Ví dụ:</b>
<br>今年の夏は去年ほど暑くない。<br>→ (Mùa hè năm nay không nóng bằng năm ngoái.)
<br><br>私は彼ほど日本語が上手ではない。<br>→ (Tiếng Nhật của tôi không giỏi bằng anh ấy.)
<br>──────────<br><b>Ngữ pháp tương tự:</b><br>
～より～のほうが (<b>N4</b>): ... thì ... hơn ... (so sánh hơn).
<br><br>～に比べて (<b>N3</b>): So với... (chỉ sự so sánh).') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('30.  一度に  (いちどに) - Cùng một lúc', 'Common', '     <b>Công thức:</b>  一度に + V
<br>──────────<br><b>Cách dùng:</b> Trạng từ, diễn tả nhiều thứ xảy ra/được làm cùng lúc, hoặc số lượng lớn trong một lần.
<br>──────────<br><b>Ý nghĩa:</b> Cùng một lúc, một lần.
<br>──────────<br><b>Chú ý:</b> Nhấn mạnh sự đồng thời hoặc số lượng lớn.
<br>──────────<br><b>Ví dụ:</b>
<br>一度にたくさんのことを言われても、覚えられない。<br>→ (Dù có bị nói nhiều thứ cùng một lúc thì tôi cũng không thể nhớ được.)
<br><br>荷物を一度に運びましょう。<br>→ (Hãy cùng vận chuyển hành lý một lần luôn.)
<br>──────────<br><b>Ngữ pháp tương tự:</b><br>
同時に (<b>N3</b>): Đồng thời (nhấn mạnh sự trùng khớp thời gian).
<br><br>一緒に (<b>N5</b>): Cùng nhau (nhấn mạnh sự hợp tác).') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('31.  いくら～ても  - Dù ~ bao nhiêu đi nữa', 'Common', '     <b>Công thức:</b>  いくら + V-ても / Adj-くても / Adj-な/N +  でも
<br>──────────<br><b>Cách dùng:</b> Dùng để nhấn mạnh rằng dù cho mức độ (thường là số lượng, giá cả, mức độ nỗ lực) có lớn đến đâu đi chăng nữa, thì kết quả ở vế sau vẫn không thay đổi.
<br>──────────<br><b>Ý nghĩa:</b> Dù... đến mấy..., dù... bao nhiêu... thì cũng...
<br>──────────<br><b>Chú ý:</b> Nhấn mạnh vào mức độ/số lượng. Tương tự  どんなに～ても.
<br>──────────<br><b>Ví dụ:</b>
<br>いくら高くても、私はそれを買います。<br>→ (Dù đắt bao nhiêu đi nữa, tôi cũng sẽ mua nó.)
<br><br>いくら説明しても、彼は分かってくれない。<br>→ (Dù tôi giải thích bao nhiêu, anh ấy cũng không hiểu cho.)
<br>──────────<br><b>Ngữ pháp tương tự:</b><br>
どんなに～ても (<b>N3</b>): Dù ~ đến đâu (thế nào) (tương tự, nhưng  いくら
thường nhấn mạnh hơn về lượng).
<br><br>たとえ～ても (<b>N3</b>): Ngay cả khi... (mang tính giả định mạnh hơn).
<br><br>～ても /  ～でも (<b>N4</b>): Dù... thì cũng (cơ bản).') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('32.  一方だ  (いっぽうだ) - Ngày càng; tiếp tục ~', 'Common', '     <b>Công thức:</b> V-る +  一方だ
<br>──────────<br><b>Cách dùng:</b> Diễn tả một sự thay đổi đang diễn ra liên tục theo một chiều hướng nhất định (tăng hoặc giảm). Thường dùng cho những thay đổi không mong muốn hoặc không thể kiểm soát.
<br>──────────<br><b>Ý nghĩa:</b> Ngày càng..., cứ tiếp tục...
<br>──────────<br><b>Chú ý:</b> Thường mang sắc thái tiêu cực hoặc thể hiện sự lo lắng về xu hướng đó. Chỉ dùng với động từ chỉ sự thay đổi (増える,  減る,  悪くなる...).
<br>──────────<br><b>Ví dụ:</b>
<br>最近、物価は上がる一方だ。<br>→ (Gần đây, giá cả ngày càng tăng.)
<br><br>祖母の病気は悪くなる一方だ。<br>→ (Bệnh tình của bà tôi ngày càng xấu đi.)
<br>──────────<br><b>Ngữ pháp tương tự:</b><br>
～ばかりだ (<b>N3</b>): Cũng có nghĩa là "ngày càng", thường mang nghĩa tiêu cực.
<br><br>～ていく (<b>N4</b>): Diễn tả sự thay đổi hướng về tương lai.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('33.  一体  (いったい) - Nhấn mạnh; rốt cuộc là; quái gì ~', 'Common', '     <b>Công thức:</b>  一体 + Từ để hỏi (何,  誰,  どこ,  どうして...) +  ～か /  ～だろう /  ～んだ
<br>──────────<br><b>Cách dùng:</b> Dùng trong câu hỏi để nhấn mạnh sự ngạc nhiên, nghi ngờ, thắc mắc mạnh mẽ hoặc sự khó hiểu của người nói.
<br>──────────<br><b>Ý nghĩa:</b> Rốt cuộc là..., không hiểu là..., quái gì...
<br>──────────<br><b>Chú ý:</b> Làm cho câu hỏi mang sắc thái mạnh hơn, thể hiện sự bối rối hoặc đôi khi là bực bội.
<br>──────────<br><b>Ví dụ:</b>
<br>一体何があったんですか。<br>→ (Rốt cuộc là đã có chuyện gì xảy ra vậy?)
<br><br>一体彼は誰なんだ。<br>→ (Không hiểu anh ta là ai nữa?)
<br><br>一体どうしてこんなことになったのだろう。<br>→ (Rốt cuộc tại sao lại ra nông
nỗi này?)
<br>──────────<br><b>Ngữ pháp tương tự:</b><br>
Các câu hỏi thông thường (<b>N5/N4</b>):  一体 chỉ thêm vào để nhấn mạnh.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('34.  じゃない  /  じゃないか  - Có lẽ; rất có thể; xác nhận thông tin; bày tỏ sự ngạc nhiên', 'Common', '     <b>Công thức:</b> V/Adj/N-thể thường +  じゃない /  じゃないか
<br>──────────<br><b>Cách dùng:</b>
<br>Xác nhận điều gì đó mà mình nghĩ người nghe cũng biết ("Chẳng phải là... sao?").
<br><br>Bày tỏ sự ngạc nhiên hoặc phát hiện ra điều gì đó ("Ồ, ... kìa!").
<br><br>Đưa ra lời đề nghị, rủ rê ("Chúng ta hãy... đi!").
<br><br>Thể hiện sự phán đoán, có lẽ ("Hình như là...").
<br>──────────<br><b>Ý nghĩa:</b> Tùy thuộc vào ngữ cảnh và ngữ điệu.
<br>──────────<br><b>Chú ý:</b> Thường dùng trong văn nói. Ngữ điệu rất quan trọng.
<br>──────────<br><b>Ví dụ:</b>
<br>あ、雨が降ってるじゃないか。<br>→ (A, trời đang mưa kìa!)
<br><br>これ、おいしいじゃない。<br>→ (Cái này ngon đấy chứ!)
<br><br>そろそろ行こうじゃないか。<br>→ (Chúng ta đi thôi nào!)
<br>──────────<br><b>Ngữ pháp tương tự:</b><br>
～でしょう (<b>N4</b>): Có lẽ, phải không?
<br><br>～かもしれない (<b>N4</b>): Có lẽ là, có thể là.
<br><br>～ね (<b>N5</b>): ... nhỉ? (xác nhận nhẹ nhàng).') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('35.  か何か  (かなにか) - Hay gì đó ~', 'Common', '     <b>Công thức:</b> N +  か何か
<br>──────────<br><b>Cách dùng:</b> Dùng khi muốn đưa ra một ví dụ nhưng không chắc chắn hoặc không muốn nói cụ thể, mang ý "hoặc một thứ gì đó tương tự".
<br>──────────<br><b>Ý nghĩa:</b> ... hay gì đó.
<br>──────────<br><b>Chú ý:</b> Thể hiện sự mơ hồ, không xác định.
<br>──────────<br><b>Ví dụ:</b>
<br>喉が渇いたから、ジュースか何か飲みたい。<br>→ (Vì khát nước nên tôi muốn uống nước trái cây hay gì đó.)
<br><br>机の上に、本か何かが置いてある。<br>→ (Trên bàn có đặt sách hay thứ gì đó.)
<br>──────────<br><b>Ngữ pháp tương tự:</b><br>
～とか (<b>N4</b>): ... hoặc là..., như là... (liệt kê ví dụ).
<br><br>～など (<b>N4</b>): ... vân vân..., như là... (liệt kê ví dụ).') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('36.  かける  - Dở; chưa xong; đang làm ~', 'Common', '     <b>Công thức:</b> V-ます (bỏ  ます) +  かける /  かけの + N
<br>──────────<br><b>Cách dùng:</b> Diễn tả một hành động đã được bắt đầu nhưng chưa kết thúc, đang còn dang dở.
<br>──────────<br><b>Ý nghĩa:</b> Đang làm dở..., chưa xong...
<br>──────────<br><b>Chú ý:</b> Nhấn mạnh trạng thái "dở dang".
<br>──────────<br><b>Ví dụ:</b>
<br>この本はまだ読みかけだ。<br>→ (Quyển sách này tôi vẫn đang đọc dở.)
<br><br>彼女は何か言いかけたが、やめた。<br>→ (Cô ấy định nói gì đó nhưng lại thôi.)
<br><br>テーブルの上に食べかけのパンがある。<br>→ (Trên bàn có mẩu bánh mì đang
ăn dở.)
<br>──────────<br><b>Ngữ pháp tương tự:</b><br>
～始める (<b>N4</b>): Bắt đầu... (nhấn mạnh thời điểm bắt đầu).
<br><br>～途中だ (<b>N3</b>): Đang giữa chừng...') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('37.  から〜にかけて  - Suốt; từ [A] đến [B] (khoảng)', 'Common', '     <b>Công thức:</b> N1 (Thời gian/Địa điểm) +  から + N2 (Thời gian/Địa điểm) +  にかけて
<br>──────────<br><b>Cách dùng:</b> Chỉ một khoảng không gian hoặc thời gian giữa hai điểm A và B, nhưng không xác định chính xác điểm bắt đầu và kết thúc như  から～まで.
<br>──────────<br><b>Ý nghĩa:</b> Từ khoảng... đến khoảng...; Suốt từ... đến...
<br>──────────<br><b>Chú ý:</b> Mang tính chất "khoảng", không chính xác tuyệt đối.
<br>──────────<br><b>Ví dụ:</b>
<br>今夜から明日の朝にかけて、雨が降るでしょう。<br>→ (Từ đêm nay đến sáng mai, có lẽ trời sẽ mưa.)
<br><br>関東地方から東北地方にかけて、大きな地震があった。<br>→ (Đã có một trận động đất lớn xảy ra ở khu vực từ Kanto đến Tohoku.)
<br>──────────<br><b>Ngữ pháp tương tự:</b><br>
から～まで (<b>N5</b>): Từ... đến... (chính xác).
<br><br>～ごろ (<b>N5</b>): Khoảng (dùng cho mốc thời gian).
<br><br>～あいだ (<b>N4</b>): Trong khoảng (chỉ một khoảng thời gian liên tục).') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('38.  代わりに  (かわりに) - Thay vì; thay thế cho; đổi lại; để đáp lại', 'Common', '     <b>Công thức:</b>
<br>N +  の +  代わりに
<br><br>V-る / V-た +  代わりに
<br>──────────<br><b>Cách dùng:</b>
<br>Diễn tả sự thay thế: làm B thay cho A, dùng B thay cho A.
<br><br>Diễn tả sự bù đắp, đổi lại: có mặt lợi này thì cũng có mặt hại kia, hoặc làm gì đó để đổi lại.
<br>──────────<br><b>Ý nghĩa:</b> Thay cho..., đổi lại..., bù lại...
<br>──────────<br><b>Chú ý:</b> Phân biệt hai ý nghĩa dựa vào ngữ cảnh.
<br>──────────<br><b>Ví dụ:</b>
<br>父の代わりに、私が会議に出席しました。<br>→ (Tôi đã đi họp thay cho bố.)
<br><br>映画を見に行く代わりに、家で DVD を見よう。<br>→ (Thay vì đi xem phim,
hãy xem DVD ở nhà đi.)
<br><br>この部屋は狭い代わりに、家賃が安い。<br>→ (Căn phòng này nhỏ, bù lại thì tiền thuê nhà rẻ.)
<br>──────────<br><b>Ngữ pháp tương tự:</b><br>
～なくて /  ～ずに (<b>N4/N3</b>): Mà không... (làm B mà không làm A).') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('39.  結果  (けっか) - Kết quả là; sau khi ~', 'Common', '     <b>Công thức:</b> V-た / N +  の +  結果
<br>──────────<br><b>Cách dùng:</b> Diễn tả kết quả phát sinh từ một hành động, sự kiện hoặc quá trình đã xảy ra trước đó.
<br>──────────<br><b>Ý nghĩa:</b> Kết quả là..., sau khi...
<br>──────────<br><b>Chú ý:</b> Thường dùng để trình bày một kết quả khách quan, có thể tốt hoặc xấu.
<br>──────────<br><b>Ví dụ:</b>
<br>色々考えた結果、留学することに決めた。<br>→ (Sau khi suy nghĩ rất nhiều, kết quả là tôi đã quyết định đi du học.)
<br><br>検査の結果、異常はありませんでした。<br>→ (Kết quả kiểm tra là không có gì bất thường.)
<br>──────────<br><b>Ngữ pháp tương tự:</b><br>
～て /  ～で (<b>N5/N4</b>): Vì... nên... (chỉ nguyên nhân-kết quả đơn giản).
<br><br>～ため (<b>N4</b>): Vì... nên... (chỉ nguyên nhân).
<br><br>～おかげで /  ～せいで (<b>N3</b>): Nhờ... / Tại... (chỉ nguyên nhân với sắc thái tích cực/tiêu cực).') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('40.  結局  (けっきょく) - Rốt cuộc; cuối cùng; sau cùng ~', 'Common', '     <b>Công thức:</b>  結局、+ Câu.
<br>──────────<br><b>Cách dùng:</b> Là một trạng từ, dùng để nêu lên kết luận cuối cùng sau một quá trình (suy nghĩ, thảo luận, diễn biến sự việc...), thường là một kết quả không có gì thay đổi hoặc không như mong đợi ban đầu.
<br>──────────<br><b>Ý nghĩa:</b> Rốt cuộc thì..., cuối cùng thì...
<br>──────────<br><b>Chú ý:</b> Thường đứng ở đầu câu.
<br>──────────<br><b>Ví dụ:</b>
<br>色々迷ったが、結局何も買わなかった。<br>→ (Đã phân vân rất nhiều, nhưng rốt cuộc tôi chẳng mua gì cả.)
<br><br>彼らは長い間話し合ったが、結局意見が合わなかった。<br>→ (Họ đã thảo luận rất lâu, nhưng cuối cùng ý kiến vẫn không thống nhất.)
<br>──────────<br><b>Ngữ pháp tương tự:</b><br>
やっと (<b>N4</b>): Cuối cùng thì (sau nỗ lực, đạt được kết quả mong muốn).
<br><br>ついに (<b>N3</b>): Cuối cùng thì (chỉ một kết quả quan trọng, sau thời gian dài).
<br><br>最後は (<b>N4</b>): Cuối cùng thì (chỉ thứ tự).') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('41.  決して～ない  (けっして～ない) - Không bao giờ; tuyệt đối không ~', 'Common', '     <b>Công thức:</b>  決して + V-ない / Adj-くない / Adj-じゃない / N +  ではない
<br>──────────<br><b>Cách dùng:</b> Dùng để phủ định một cách mạnh mẽ, diễn tả ý chí hoặc sự cam kết rằng sẽ không bao giờ làm điều gì đó hoặc điều gì đó tuyệt đối không phải là sự thật.
<br>──────────<br><b>Ý nghĩa:</b> Nhấn mạnh sự phủ định tuyệt đối.
<br>──────────<br><b>Chú ý:</b> Luôn đi kèm với dạng phủ định. Mang tính trang trọng và nhấn mạnh hơn so với  全然～ない.
<br>──────────<br><b>Ví dụ:</b>
<br>私は決してあなたを忘れません。<br>→ (Tôi sẽ không bao giờ quên bạn.)
<br><br>彼の言うことは決して信じてはいけない。<br>→ (Tuyệt đối không được tin
những lời anh ta nói.)
<br><br>それは決して簡単なことではない。<br>→ (Đó tuyệt đối không phải là việc đơn giản.)
<br>──────────<br><b>Ngữ pháp tương tự:</b><br>
絶対に～ない (<b>N4</b>): Tuyệt đối không (nhấn mạnh ý chí).
<br><br>全然～ない (<b>N5</b>): Hoàn toàn không.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('42.  切れない  (きれない) - Không thể làm; quá nhiều để hoàn thành', 'Common', '     <b>Công thức:</b> V-ます (bỏ  ます) +  切れない (きれない)
<br>──────────<br><b>Cách dùng:</b> Diễn tả rằng một hành động không thể được hoàn thành trọn vẹn, thường là do số lượng quá lớn hoặc quá khó khăn để làm hết.
<br>──────────<br><b>Ý nghĩa:</b> Không thể... hết được.
<br>──────────<br><b>Chú ý:</b> Là dạng phủ định của V-きる (<b>N3</b>).
<br>──────────<br><b>Ví dụ:</b>
<br>ご飯が多くて、一人では食べ切れない。<br>→ (Cơm nhiều quá, một mình tôi không thể ăn hết được.)
<br><br>こんなにたくさんの仕事は、一日ではやり切れない。<br>→ (Nhiều công việc thế này thì một ngày không thể làm hết được.)
<br>──────────<br><b>Ngữ pháp tương tự:</b><br>
～ことができない (<b>N4</b>): Không thể làm (nói chung về khả năng).
<br><br>～終わらない (<b>N4</b>): Không kết thúc.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('43.  きり  /  っきり  - Chỉ; kể từ khi; sau khi ~', 'Common', '     <b>Công thức:</b>
<br>N +  きり /  っきり (Chỉ)
<br><br>V-た +  きり /  っきり (Kể từ khi)
<br>──────────<br><b>Cách dùng:</b>
<br>Nghĩa 1 (Chỉ): Giống với  だけ, nhưng thường nhấn mạnh số lượng ít ỏi. (Vd:
二人きり - chỉ có hai người).
<br><br>Nghĩa 2 (Kể từ khi): Diễn tả một hành động xảy ra và sau đó trạng thái đó cứ kéo dài, không có sự thay đổi hoặc hành động tiếp theo như mong đợi.
<br>──────────<br><b>Ý nghĩa:</b> Chỉ / Kể từ khi... thì không...
<br>──────────<br><b>Chú ý:</b> Với nghĩa 2, vế sau thường mang ý phủ định hoặc không như mong đợi.  っきり thường dùng trong văn nói.
<br>──────────<br><b>Ví dụ:</b>
<br>彼とは一度会ったきり、それから連絡がない。<br>→ (Tôi chỉ gặp anh ta một lần, kể từ đó không có liên lạc gì.)
<br><br>息子は部屋に入ったきり、出てこない。<br>→ (Con trai tôi vào phòng rồi cứ ở trong đó, không ra ngoài.)
<br><br>今朝コーヒーを一杯飲んだきり、何も食べていない。<br>→ (Sáng nay chỉ uống một cốc cà phê, từ đó chưa ăn gì cả.)
<br>──────────<br><b>Ngữ pháp tương tự:</b><br>
だけ (<b>N5</b>): Chỉ (nghĩa 1).
<br><br>しか～ない (<b>N4</b>): Chỉ (nghĩa 1, luôn đi với phủ định).
<br><br>～てから (<b>N5</b>): Sau khi (nghĩa 2, không có hàm ý "không thay đổi").') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('44.  切る  (きる) - Làm gì đó hoàn toàn đến cuối cùng', 'Common', '     <b>Công thức:</b> V-ます (bỏ  ます) +  切る (きる)
<br>──────────<br><b>Cách dùng:</b> Diễn tả việc hoàn thành một hành động một cách trọn vẹn, hoàn toàn, không còn sót lại; hoặc làm gì đó một cách dứt khoát.
<br>──────────<br><b>Ý nghĩa:</b> ... hết / ... hoàn toàn / ... dứt khoát.
<br>──────────<br><b>Chú ý:</b> Trái nghĩa với  ～切れない (<b>N3</b>).
<br>──────────<br><b>Ví dụ:</b>
<br>長い小説を３日間で読み切った。<br>→ (Tôi đã đọc hết cuốn tiểu thuyết dài trong 3 ngày.)
<br><br>彼は決心して、彼女との関係を断ち切った。<br>→ (Anh ấy đã quyết tâm và cắt đứt quan hệ với cô ấy.)
<br><br>もう疲れ切った。<br>→ (Tôi đã hoàn toàn kiệt sức rồi.)
<br>──────────<br><b>Ngữ pháp tương tự:</b><br>
全部～する (<b>N5</b>): Làm tất cả.
<br><br>～終わる (<b>N4</b>): Làm xong.
<br><br>～上げる (<b>N3</b>): Làm xong (nhấn mạnh sự hoàn chỉnh).') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('45.  っけ  - (Xác nhận điều đang cố nhớ)', 'Common', '     <b>Công thức:</b> V-た / Adj-かった / N/Adj-な +  だった +  っけ
<br>──────────<br><b>Cách dùng:</b> Là một hậu tố dùng trong văn nói thân mật, khi người nói đang cố gắng nhớ lại một thông tin nào đó và muốn tự xác nhận hoặc hỏi người nghe để xác nhận.
<br>──────────<br><b>Ý nghĩa:</b> ... nhỉ? / Có phải là...?
<br>──────────<br><b>Chú ý:</b> Mang tính thân mật, không dùng trong văn viết trang trọng.
<br>──────────<br><b>Ví dụ:</b>
<br>明日の会議は何時からだっけ？(Cuộc họp ngày mai bắt đầu từ mấy giờ nhỉ?)
<br><br>あの人の名前、何て言ったっけ。<br>→ (Tên người kia là gì nhỉ?)
<br><br>子供のころ、よくここで遊んだっけ。<br>→ (Hồi nhỏ, hình như mình hay chơi ở
đây thì phải.)
<br>──────────<br><b>Ngữ pháp tương tự:</b><br>
～ね (<b>N5</b>): ... nhỉ? (xác nhận nhẹ nhàng).
<br><br>～でしょう (<b>N4</b>): Phải không? / Chắc là... (phỏng đoán, xác nhận).') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('46.  込む  (こむ) - Làm gì đó sâu / Đi vào trong', 'Common', '     <b>Công thức:</b> V-ます (bỏ  ます) +  込む
<br>──────────<br><b>Cách dùng:</b>
<br>Nghĩa 1: Diễn tả hành động đi vào bên trong một không gian nào đó (飛び込
む - nhảy vào,  駆け込む - chạy vào).
<br><br>Nghĩa 2: Diễn tả hành động được thực hiện một cách kỹ lưỡng, sâu sắc, hoặc trong một thời gian dài (考え込む - suy nghĩ đăm chiêu,  話し込む - mải nói chuyện).
<br>──────────<br><b>Ý nghĩa:</b> ... vào / ... sâu, kỹ.
<br>──────────<br><b>Chú ý:</b> Nghĩa cụ thể phụ thuộc vào động từ đi trước.
<br>──────────<br><b>Ví dụ:</b>
<br>子供たちが川に飛び込んだ。<br>→ (Lũ trẻ nhảy ùm xuống sông.)
<br><br>電車に駆け込んだ。<br>→ (Tôi chạy vội vào tàu điện.)
<br><br>彼は深く考え込んでいるようだ。<br>→ (Anh ấy có vẻ đang chìm sâu trong suy
nghĩ.)
<br>──────────<br><b>Ngữ pháp tương tự:</b><br>
～続ける (<b>N4</b>): Tiếp tục làm... (nghĩa 2).
<br><br>中に入る (<b>N5</b>): Đi vào trong (nghĩa 1).') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('47.  こそ  - Chính; chính vì ~', 'Common', '     <b>Công thức:</b> N / Cụm từ +  こそ
<br>──────────<br><b>Cách dùng:</b> Dùng để nhấn mạnh danh từ hoặc cụm từ đứng trước nó, hàm ý "chính là cái này/người này/lúc này... chứ không phải cái khác".
<br>──────────<br><b>Ý nghĩa:</b> Nhấn mạnh "chính là...".
<br>──────────<br><b>Chú ý:</b> Làm nổi bật đối tượng được nói đến.
<br>──────────<br><b>Ví dụ:</b>
<br>あなたこそ、私が探していた人です。<br>→ (Chính bạn là người mà tôi đang tìm kiếm.)
<br><br>今年こそ、日本語能力試験 N1 に合格したい。<br>→ (Chính năm nay tôi muốn đỗ N1.)
<br><br>愛情があるからこそ、厳しく叱るのです。<br>→ (Chính vì có tình yêu thương nên mới la mắng nghiêm khắc.)
<br>──────────<br><b>Ngữ pháp tương tự:</b><br>
～は (<b>N5</b>): (Trợ từ chủ đề,  こそ nhấn mạnh hơn).') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('48.  こと  - (Phải) làm / (Không được) làm', 'Common', '     <b>Công thức:</b> V-る / V-ない +  こと
<br>──────────<br><b>Cách dùng:</b> Dùng để đưa ra mệnh lệnh, quy tắc, hướng dẫn hoặc lời khuyên mạnh mẽ, thường xuất hiện trong các văn bản quy định, nội quy, hoặc lời dặn dò.
<br>──────────<br><b>Ý nghĩa:</b> Phải... / Không được...
<br>──────────<br><b>Chú ý:</b> Thường dùng ở cuối câu trong văn viết hoặc các thông báo.
<br>──────────<br><b>Ví dụ:</b>
<br>図書館では静かにすること。<br>→ (Ở thư viện phải giữ yên lặng.)
<br><br>廊下を走らないこと。<br>→ (Không được chạy trên hành lang.)
<br><br>明日８時までに来ること。<br>→ (Ngày mai phải đến trước 8 giờ.)
<br>──────────<br><b>Ngữ pháp tương tự:</b><br>
～なさい (<b>N4</b>): Hãy làm... (mệnh lệnh từ trên xuống dưới).
<br><br>～てください (<b>N5</b>): Xin hãy... (yêu cầu lịch sự).
<br><br>～なければならない (<b>N4</b>): Phải làm... (nghĩa vụ).') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('49.  ことから  - Từ sự thật là ~; Vì ~', 'Common', '     <b>Công thức:</b> V/Adj/N-thể thường +  ことから
<br>──────────<br><b>Cách dùng:</b> Dùng để giải thích nguồn gốc, lý do hoặc căn cứ của một sự việc, tên gọi, hoặc phán đoán, dựa trên một sự thật hoặc một sự kiện nào đó.
<br>──────────<br><b>Ý nghĩa:</b> Vì lý do là..., từ việc...
<br>──────────<br><b>Chú ý:</b> Thường dùng để giải thích nguồn gốc tên gọi, hoặc đưa ra lý do mang tính khách quan.
<br>──────────<br><b>Ví dụ:</b>
<br>富士山が見えることから、この町は富士見町と名付けられた。<br>→ (Vì có thể nhìn thấy núi Phú Sĩ nên thị trấn này được đặt tên là Fujimichou.)
<br><br>彼がいつも遅刻することから、信用できないと思われている。<br>→ (Từ việc anh ta luôn đi trễ, anh ta bị cho là không đáng tin.)
<br>──────────<br><b>Ngữ pháp tương tự:</b><br>
～ので (<b>N4</b>): Bởi vì (chỉ nguyên nhân khách quan).
<br><br>～から (<b>N5</b>): Bởi vì (chỉ nguyên nhân chủ quan/khách quan).
<br><br>～ため (<b>N4</b>): Bởi vì (chỉ nguyên nhân, hơi trang trọng).') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('50.  ことになっている  - Được quy định là; dự kiến là ~', 'Common', '     <b>Công thức:</b> V-る / V-ない +  ことになっている
<br>──────────<br><b>Cách dùng:</b> Diễn tả một quy tắc, quy định, lịch trình, kế hoạch hoặc một sự việc đã được quyết định (thường là bởi người khác hoặc một tổ chức) và mọi người được mong đợi sẽ tuân theo.
<br>──────────<br><b>Ý nghĩa:</b> Có quy định là..., theo dự định thì...
<br>──────────<br><b>Chú ý:</b> Nhấn mạnh rằng đó là một quy định/kế hoạch đã có sẵn, không phải quyết định của người nói tại thời điểm nói.
<br>──────────<br><b>Ví dụ:</b>
<br>この寮では、１２時までに帰らなければならないことになっている。
(Ở ký túc xá này, có quy định là phải về trước 12 giờ.)
<br><br>明日、ここで会議が行われることになっている。<br>→ (Theo kế hoạch, ngày mai sẽ có một cuộc họp được tổ chức ở đây.)
<br><br>法律で、２０歳未満はお酒を飲んではいけないことになっている。
(Theo luật, người dưới 20 tuổi không được uống rượu.)
<br>──────────<br><b>Ngữ pháp tương tự:</b><br>
～ことになった (<b>N4</b>): Đã được quyết định là... (nhấn mạnh thời điểm quyết định).
<br><br>～予定だ (<b>N4</b>): Dự định là... (chỉ kế hoạch).
<br><br>～決まり (<b>N3/N2</b>): Quy định, quyết định.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('51.  ことはない  - Không cần phải ~; không có khả năng ~', 'Common', '     <b>Công thức:</b> V-る +  ことはない
<br>──────────<br><b>Cách dùng:</b>
<br>Nghĩa 1: Diễn tả rằng không có sự cần thiết phải làm một việc gì đó. (Tương đương  ～なくてもいい nhưng mạnh hơn).
<br><br>Nghĩa 2: Diễn tả rằng không có khả năng, không thể xảy ra một việc gì đó.
<br>──────────<br><b>Ý nghĩa:</b> Không cần phải... / Không thể nào...
<br>──────────<br><b>Chú ý:</b> Phân biệt nghĩa dựa vào ngữ cảnh.
<br>──────────<br><b>Ví dụ:</b>
<br>心配することはない。きっとうまくいくよ。<br>→ (Không cần phải lo lắng đâu. Chắc chắn sẽ ổn cả thôi.)
<br><br>ただの風邪だから、そんなに心配することはない。<br>→ (Chỉ là cảm cúm thông thường thôi, không cần phải lo lắng đến thế.)
<br><br>彼が約束を破ることはないと思う。<br>→ (Tôi nghĩ không có khả năng anh ấy thất hứa đâu.)
<br>──────────<br><b>Ngữ pháp tương tự:</b><br>
～なくてもいい (<b>N4</b>): Không cần phải... (nghĩa 1).
<br><br>～はずがない (<b>N3</b>): Chắc chắn không... (nghĩa 2).
<br><br>～わけがない (<b>N3</b>): Lẽ nào lại... (nghĩa 2).') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('52.  ことは～が  - Mặc dù; nhưng ~', 'Common', '     <b>Công thức:</b> V/Adj-thể thường +  ことは + (V/Adj-thể thường) +  が /  けど
<br>──────────<br><b>Cách dùng:</b> Dùng để thừa nhận một sự thật nào đó (thường lặp lại động từ/tính từ) nhưng ngay sau đó đưa ra một ý kiến, sự thật trái ngược hoặc một vấn đề khác liên quan.
<br>──────────<br><b>Ý nghĩa:</b> ... thì đúng là ... thật, nhưng ...
<br>──────────<br><b>Chú ý:</b> Thường lặp lại từ để nhấn mạnh sự thừa nhận trước khi đưa ra ý kiến phản bác/bổ sung.
<br>──────────<br><b>Ví dụ:</b>
<br>このギターは、高いことは高いが、とてもいい音がする。<br>→ (Cây đàn ghi- ta này đắt thì đắt thật, nhưng âm thanh rất hay.)
<br><br>日本語が話せることは話せるが、まだ自信がない。<br>→ (Nói tiếng Nhật thì tôi nói được đấy, nhưng vẫn chưa tự tin lắm.)
<br>──────────<br><b>Ngữ pháp tương tự:</b><br>
～けれど /  ～けど (<b>N4</b>): Nhưng...
<br><br>～が (<b>N5</b>): Nhưng...
<br><br>～ものの (<b>N2</b>): Mặc dù... (N2, trang trọng hơn).') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('53.  くらい  /  ぐらい  - Khoảng; xấp xỉ; đến mức ~', 'Common', '     <b>Công thức:</b> N / V-thể thường / Adj +  くらい /  ぐらい
<br>──────────<br><b>Cách dùng:</b>
<br>Nghĩa 1: Biểu thị sự ước lượng, xấp xỉ về số lượng, thời gian, mức độ.
<br><br>Nghĩa 2: Biểu thị mức độ (cao hoặc thấp) của một hành động, trạng thái.
<br><br>Nghĩa 3: Biểu thị sự coi nhẹ, xem thường ("chỉ cỡ...").
<br>──────────<br><b>Ý nghĩa:</b> Khoảng..., chừng..., đến mức..., cỡ như...
<br>──────────<br><b>Chú ý:</b> Rất phổ biến và linh hoạt.  ぐらい thường dùng trong văn nói hơn.
<br>──────────<br><b>Ví dụ:</b>
<br>ここから駅まで 10 分くらいです。<br>→ (Từ đây đến ga mất khoảng 10 phút.)
<br><br>疲れてもう一歩も歩けないくらいだ。<br>→ (Tôi mệt đến mức không thể bước
thêm một bước nào nữa.)
<br><br>これくらいの傷なら、大丈夫だ。<br>→ (Vết thương cỡ này thì không sao đâu.)
<br>──────────<br><b>Ngữ pháp tương tự:</b><br>
～ほど (<b>N3</b>): Đến mức (thường dùng trong so sánh/ví von).
<br><br>約 (やく) (<b>N4/N3</b>): Khoảng (dùng với số lượng).
<br><br>～だけ (<b>N5/N3</b>): Chỉ / Đến mức.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('54.  くせに  - Vậy mà; dù; mặc dù; bất chấp ~', 'Common', '     <b>Công thức:</b> V/Adj/N-thể thường +  くせに
<br>──────────<br><b>Cách dùng:</b> Dùng để biểu thị sự đối lập giữa hai vế câu, đồng thời thể hiện thái độ chỉ trích, bất mãn, khinh thường hoặc coi nhẹ của người nói đối với đối tượng được nói đến.
<br>──────────<br><b>Ý nghĩa:</b> Dù... vậy mà... (mang sắc thái tiêu cực, chỉ trích).
<br>──────────<br><b>Chú ý:</b> Mang hàm ý tiêu cực mạnh, thường dùng với người thân hoặc người dưới, tránh dùng với người trên.
<br>──────────<br><b>Ví dụ:</b>
<br>知っているくせに、教えてくれない。<br>→ (Biết vậy mà không chỉ cho.)
<br><br>子供のくせに、生意気なことを言うな。<br>→ (Chỉ là con nít vậy mà đừng nói
những lời xấc xược.)
<br><br>お金がないくせに、高いものを買おうとする。<br>→ (Không có tiền vậy mà cứ định mua đồ đắt tiền.)
<br>──────────<br><b>Ngữ pháp tương tự:</b><br>
～のに (<b>N4</b>): Mặc dù... (ít chỉ trích hơn, chỉ sự bất ngờ hoặc tiếc nuối).') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('55.  まるで  - Như thể; như là; giống hệt như ~', 'Common', '     <b>Công thức:</b>  まるで + N +  の +  ようだ / V +  ようだ /  みたいだ
<br>──────────<br><b>Cách dùng:</b> Dùng để nhấn mạnh sự giống nhau giữa hai sự vật, sự việc, thường là so sánh ví von, đôi khi mang tính cường điệu.
<br>──────────<br><b>Ý nghĩa:</b> Cứ như là..., giống hệt như...
<br>──────────<br><b>Chú ý:</b> Thường đi kèm với  ～ようだ hoặc  ～みたいだ.
<br>──────────<br><b>Ví dụ:</b>
<br>合格した！まるで夢のようだ。<br>→ (Đậu rồi! Cứ như là một giấc mơ vậy.)
<br><br>あの雲はまるで犬のような形をしている。<br>→ (Đám mây kia có hình dạng
giống hệt như một chú chó.)
<br><br>彼はまるで何でも知っているかのように話す。<br>→ (Anh ta nói chuyện cứ như thể là biết tuốt mọi thứ.)
<br>──────────<br><b>Ngữ pháp tương tự:</b><br>
～ようだ (<b>N4</b>): Hình như, dường như.
<br><br>～みたいだ (<b>N4</b>): Trông có vẻ, giống như (thân mật hơn).
<br><br>～かのようだ (<b>N3</b>): Cứ như thể là (nhấn mạnh sự ví von).') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('56.  まさか  - Không đời nào; không thể nào; bạn đùa à', 'Common', '     <b>Công thức:</b>  まさか + Câu (thường có  ～とは /  ～だろうか /  ～ないだろう)
<br>──────────<br><b>Cách dùng:</b> Là một trạng từ, dùng để diễn tả sự ngạc nhiên tột độ, sự không tin hoặc sự phủ nhận mạnh mẽ trước một sự việc nào đó.
<br>──────────<br><b>Ý nghĩa:</b> Không thể nào..., không ngờ...
<br>──────────<br><b>Chú ý:</b> Thể hiện sự bất ngờ lớn.
<br>──────────<br><b>Ví dụ:</b>
<br>まさか彼が試験に落ちるとは思わなかった。<br>→ (Không ngờ anh ấy lại trượt kỳ thi.)
<br><br>まさか、宝くじに当たるとは！(Không thể nào, tôi lại trúng số ư!)
<br><br>まさか、こんな所であなたに会えるなんて。<br>→ (Không thể tin được lại có
thể gặp bạn ở một nơi như thế này.)
<br>──────────<br><b>Ngữ pháp tương tự:</b><br>
信じられない (<b>N4</b>): Không thể tin được.
<br><br>～はずがない (<b>N3</b>): Chắc chắn không thể...
<br><br>～わけがない (<b>N3</b>): Lẽ nào lại...') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('57.  めったに～ない  - Hầu như không; hiếm khi', 'Common', '     <b>Công thức:</b>  めったに + V-ない
<br>──────────<br><b>Cách dùng:</b> Dùng để diễn tả tần suất xảy ra của một hành động, sự việc là rất thấp, rất hiếm.
<br>──────────<br><b>Ý nghĩa:</b> Hiếm khi..., hầu như không...
<br>──────────<br><b>Chú ý:</b> Luôn đi kèm với dạng phủ định.
<br>──────────<br><b>Ví dụ:</b>
<br>彼はめったに遅刻しない。<br>→ (Anh ấy hiếm khi đi muộn.)
<br><br>私はめったに外食しない。<br>→ (Tôi hầu như không ăn ngoài.)
<br><br>こんな機会はめったにないから、大切にしよう。<br>→ (Cơ hội như thế này
hiếm có lắm, nên hãy trân trọng nó.)
<br>──────────<br><b>Ngữ pháp tương tự:</b><br>
あまり～ない (<b>N5</b>): Không... lắm (tần suất cao hơn  めったに).
<br><br>ほとんど～ない (<b>N4</b>): Hầu như không (có thể dùng cho cả tần suất và số lượng).') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('58.  も～ば～も  - Cả ~ và ~; cũng; hoặc/hoặc', 'Common', '     <b>Công thức:</b> N1 +  も + V-ば/Adj-ければ/N/Adj-な +  なら + N2 +  も + V/Adj/N.
<br>──────────<br><b>Cách dùng:</b> Dùng để liệt kê hai (hoặc nhiều hơn) sự vật, sự việc, trạng thái, nhấn mạnh rằng cả hai đều tồn tại hoặc có tính chất đó.
<br>──────────<br><b>Ý nghĩa:</b> ... cũng... mà ... cũng...
<br>──────────<br><b>Chú ý:</b> Dùng để liệt kê song song.
<br>──────────<br><b>Ví dụ:</b>
<br>彼は勉強もできれば、スポーツもできる。<br>→ (Anh ấy vừa học giỏi mà chơi thể thao cũng giỏi.)
<br><br>この店は値段も安ければ、味もいい。<br>→ (Quán này giá vừa rẻ mà vị cũng ngon.)
<br><br>雨も降っていれば、風も吹いている。<br>→ (Trời vừa mưa mà gió cũng thổi.)
<br>──────────<br><b>Ngữ pháp tương tự:</b><br>
～も～も (<b>N4</b>): Cả... và... (dùng với danh từ).
<br><br>～し～し (<b>N4</b>): Vừa... vừa... (liệt kê lý do/sự thật).') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('59.  もしかしたら  - Có lẽ; có thể; biết đâu; có khả năng ~', 'Common', '     <b>Công thức:</b>  もしかしたら + Câu +  かもしれない
<br>──────────<br><b>Cách dùng:</b> Là một trạng từ, dùng để diễn tả một khả năng hoặc sự phỏng đoán, nhưng với mức độ chắc chắn không cao.
<br>──────────<br><b>Ý nghĩa:</b> Có lẽ..., biết đâu..., có thể…
<br>──────────<br><b>Chú ý:</b> Thường đi kèm với  ～かもしれない. Mức độ chắc chắn thấp hơn  多分.
<br>──────────<br><b>Ví dụ:</b>
<br>もしかしたら、彼はもう帰ったかもしれない。<br>→ (Biết đâu anh ấy đã về rồi cũng nên.)
<br><br>連絡がないけど、もしかしたら何かあったのかもしれない。<br>→ (Không thấy liên lạc gì, có lẽ đã xảy ra chuyện gì đó chăng.)
<br>──────────<br><b>Ngữ pháp tương tự:</b><br>
多分 (<b>N5</b>): Có lẽ (mức độ chắc chắn cao hơn).
<br><br>きっと (<b>N4</b>): Chắc chắn là (mức độ chắc chắn cao nhất).
<br><br>～かもしれない (<b>N4</b>): Có lẽ là... (kết hợp với  もしかしたら).') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('60.  もしも〜たら  /  〜ば  - Nếu; trong trường hợp; giả sử ~', 'Common', '     <b>Công thức:</b>  もしも + V-たら / Adj-かったら / N/Adj-な +  だったら / V-ば / Adj-ければ / N/Adj-な +  なら
<br>──────────<br><b>Cách dùng:</b> Dùng để nhấn mạnh một tình huống giả định hoặc điều kiện. Mạnh hơn và mang tính giả định cao hơn so với chỉ dùng  ～たら hoặc  ～ば.
<br>──────────<br><b>Ý nghĩa:</b> Nếu...; Giả sử...
<br>──────────<br><b>Chú ý:</b>  もしも chỉ dùng để nhấn mạnh, không bắt buộc phải có.
<br>──────────<br><b>Ví dụ:</b>
<br>もしも１億円あったら、何をしますか。<br>→ (Nếu có 100 triệu yên, bạn sẽ làm gì?)
<br><br>もしもあなたが鳥だったら、どこへ飛んでいきたいですか。<br>→ (Nếu bạn là một chú chim, bạn muốn bay đi đâu?)
<br>──────────<br><b>Ngữ pháp tương tự:</b><br>
もし (<b>N4</b>): Nếu (ít nhấn mạnh hơn).
<br><br>～たら (<b>N4</b>): Nếu...
<br><br>～ば (<b>N4</b>): Nếu...') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('61.  向け  (むけ) - Dành cho; nhắm đến ~', 'Common', '     <b>Công thức:</b> N +  向けだ /  向けの + N
<br>──────────<br><b>Cách dùng:</b> Chỉ ra đối tượng hoặc mục đích cụ thể mà một sản phẩm, chương trình, hoặc thông tin được tạo ra để hướng tới.
<br>──────────<br><b>Ý nghĩa:</b> Dành cho..., hướng tới...
<br>──────────<br><b>Chú ý:</b> Nhấn mạnh vào "đối tượng mục tiêu" đã được xác định trước khi tạo ra sản phẩm/thông tin đó.
<br>──────────<br><b>Ví dụ:</b>
<br>この本は子供向けに書かれています。<br>→ (Quyển sách này được viết dành cho trẻ em.)
<br><br>これは初心者向けのパソコン教室です。<br>→ (Đây là lớp học máy tính dành cho người mới bắt đầu.)
<br>──────────<br><b>Ngữ pháp tương tự:</b><br>
～向き (<b>N3</b>): Phù hợp với (chỉ tính phù hợp vốn có).
<br><br>～のために (<b>N4</b>): Vì..., cho... (chỉ mục đích/lợi ích).
<br><br>～用 (よう) (<b>N3</b>): Dùng cho... (chỉ công dụng).') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('62.  向き  (むき) - Phù hợp với ~', 'Common', '     <b>Công thức:</b> N +  向きだ /  向きの + N
<br>──────────<br><b>Cách dùng:</b> Chỉ ra rằng một cái gì đó phù hợp hoặc thích hợp với một đối tượng, mục đích, hoặc tình huống cụ thể, dựa trên đặc tính vốn có của nó.
<br>──────────<br><b>Ý nghĩa:</b> Hợp với..., phù hợp với...
<br>──────────<br><b>Chú ý:</b> Khác với  ～向け,  ～向き nói về sự "phù hợp" tự nhiên, không nhất thiết là mục đích tạo ra ban đầu.
<br>──────────<br><b>Ví dụ:</b>
<br>この仕事は体力がある人向きだ。<br>→ (Công việc này phù hợp với người có thể lực.)
<br><br>このデザインは若い人向きですね。<br>→ (Thiết kế này hợp với người trẻ nhỉ.)
<br>──────────<br><b>Ngữ pháp tương tự:</b><br>
～向け (<b>N3</b>): Dành cho (chỉ đối tượng mục tiêu).
<br><br>～に合う (<b>N4</b>): Hợp với..., vừa với...
<br><br>～にいい (<b>N5</b>): Tốt cho...') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('63.  むしろ  - Đúng hơn; thay vào đó; tốt hơn ~', 'Common', '     <b>Công thức:</b>  むしろ + B (Thường dùng trong cấu trúc A  より B)
<br>──────────<br><b>Cách dùng:</b> Là một trạng từ, dùng khi so sánh hai lựa chọn (A và B), và muốn nhấn mạnh rằng B là lựa chọn thích hợp hơn, chính xác hơn, hoặc tốt hơn A.
<br>──────────<br><b>Ý nghĩa:</b> ... thì đúng hơn / ... còn hơn là...
<br>──────────<br><b>Chú ý:</b> Thường đi kèm với  ～より để so sánh.
<br>──────────<br><b>Ví dụ:</b>
<br>難しいと言うより、むしろ面倒くさい。<br>→ (Nói là khó thì đúng hơn là phiền phức.)
<br><br>私は暑いのより、むしろ寒いほうが好きだ。<br>→ (Tôi thích lạnh còn hơn là nóng.)
<br>──────────<br><b>Ngữ pháp tương tự:</b><br>
～より (<b>N5</b>): Hơn là (cơ bản).
<br><br>代わりに (<b>N3</b>): Thay vào đó.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('64.  ながらも  - Nhưng; mặc dù; bất chấp ~', 'Common', '     <b>Công thức:</b> V-ます (bỏ  ます) / N / Adj-い / Adj-な +  ながらも
<br>──────────<br><b>Cách dùng:</b> Dùng để nối hai vế câu có ý nghĩa tương phản, đối lập, tương tự như  ～のに hay  ～けれども. Thường mang sắc thái trang trọng hoặc văn viết hơn một chút.
<br>──────────<br><b>Ý nghĩa:</b> Mặc dù... nhưng...
<br>──────────<br><b>Chú ý:</b> Vế trước và vế sau thường có cùng chủ ngữ.
<br>──────────<br><b>Ví dụ:</b>
<br>残念ながらも、試合に負けてしまった。<br>→ (Mặc dù rất tiếc nhưng chúng tôi đã thua trận đấu.)
<br><br>彼は学生でありながらも、会社を経営している。<br>→ (Anh ấy dù là sinh viên nhưng vẫn đang kinh doanh công ty.)
<br><br>狭いながらも、楽しい我が家。<br>→ (Dù chật hẹp nhưng đây là ngôi nhà vui vẻ của tôi.)
<br>──────────<br><b>Ngữ pháp tương tự:</b><br>
～のに (<b>N4</b>): Mặc dù (thường chỉ sự bất ngờ/tiếc nuối).
<br><br>～けれど /  ～けど (<b>N4</b>): Nhưng.
<br><br>～が (<b>N5</b>): Nhưng.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('65.  ないことはない  - Có thể làm; không phải là không thể ~', 'Common', '     <b>Công thức:</b> V-ない (bỏ  ない) +  ないことはない
<br>──────────<br><b>Cách dùng:</b> Là một dạng phủ định kép, dùng để khẳng định một cách yếu ớt hoặc dè dặt. Nó ngụ ý rằng "không phải là không thể", tức là "có thể" nhưng có thể là khó, không muốn, hoặc không chắc chắn lắm.
<br>──────────<br><b>Ý nghĩa:</b> Không phải là không... / Cũng có thể...
<br>──────────<br><b>Chú ý:</b> Thể hiện sự khẳng định không mạnh mẽ.
<br>──────────<br><b>Ví dụ:</b>
<br>納豆は、食べられないことはないが、あまり好きじゃない。<br>→ (Natto thì không phải là không ăn được, nhưng tôi không thích lắm.)
<br><br>今から行けば、間に合わないことはないだろう。<br>→ (Nếu đi bây giờ thì có lẽ không phải là không kịp.)
<br>──────────<br><b>Ngữ pháp tương tự:</b><br>
～できる (<b>N5</b>): Có thể.
<br><br>～可能性がある (<b>N3</b>): Có khả năng.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('66.  ないと  - Phải làm; trừ khi/nếu bạn không ~', 'Common', '     <b>Công thức:</b> V-ない +  と
<br>──────────<br><b>Cách dùng:</b> Là dạng nói tắt, thân mật của  ～ないといけない hoặc  ～なければならない, diễn tả ý nghĩa "phải làm" một việc gì đó.
<br>──────────<br><b>Ý nghĩa:</b> Phải...
<br>──────────<br><b>Chú ý:</b> Rất phổ biến trong văn nói hàng ngày.
<br>──────────<br><b>Ví dụ:</b>
<br>もう寝ないと。<br>→ (Phải ngủ thôi.)
<br><br>明日早く起きないと。<br>→ (Mai phải dậy sớm.)
<br><br>宿題をしないと。<br>→ (Phải làm bài tập.)
<br>──────────<br><b>Ngữ pháp tương tự:</b><br>
～なければならない (<b>N4</b>): Phải làm (đầy đủ, trang trọng hơn).
<br><br>～なくてはいけない (<b>N4</b>): Phải làm (đầy đủ).') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('67.  なかなか  - Rất; khá; mãi mà không ~', 'Common', '     <b>Công thức:</b>
<br>なかなか + Adj / Adv (Khá, rất)
<br><br>なかなか + V-ない (Mãi mà không)
<br>──────────<br><b>Cách dùng:</b>
<br>Nghĩa 1 (Đi với khẳng định): Diễn tả mức độ "khá, rất", thường là cao hơn so với dự kiến.
<br><br>Nghĩa 2 (Đi với phủ định): Diễn tả một việc gì đó khó xảy ra, tốn thời gian, hoặc không diễn ra một cách dễ dàng.
<br>──────────<br><b>Ý nghĩa:</b> Khá, rất / Mãi mà không...
<br>──────────<br><b>Chú ý:</b> Phân biệt nghĩa dựa vào việc nó đi với khẳng định hay phủ định.
<br>──────────<br><b>Ví dụ:</b>
<br>このレストランはなかなかおいしい。<br>→ (Nhà hàng này khá là ngon đấy.)
<br><br>バスがなかなか来ない。<br>→ (Xe buýt mãi mà không đến.)
<br><br>彼はなかなかやるね。<br>→ (Anh ta cũng khá cừ đấy nhỉ.)
<br>──────────<br><b>Ngữ pháp tương tự:</b><br>
とても (<b>N5</b>): Rất (nghĩa 1).
<br><br>かなり (<b>N4</b>): Khá (nghĩa 1).
<br><br>ぜんぜん～ない (<b>N5</b>): Hoàn toàn không (nghĩa 2, nhưng  なかなか～ない
ngụ ý sự khó khăn/tốn thời gian).') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('68.  なんか  /  なんて  /  など  - Đưa ra ví dụ; thể hiện sự khiêm tốn; xem nhẹ ~', 'Common', '     <b>Công thức:</b> N +  なんか /  なんて /  など
<br>──────────<br><b>Cách dùng:</b>
<br>など  (<b>N4</b>): Dùng để liệt kê ví dụ ("...vân vân", "... như là"). Trang trọng hơn.
<br><br>なんか  /  なんて: Dùng trong văn nói, có nhiều sắc thái:
<br>     Liệt kê ví dụ (giống  など nhưng thân mật hơn).
<br>     Thể hiện sự khiêm tốn (私なんか - người như tôi thì...).
<br>     Thể hiện sự xem nhẹ, coi thường (あいつなんか - hạng như hắn ta thì...).
<br>     なんて: Còn dùng để thể hiện sự ngạc nhiên hoặc trích dẫn.
<br>──────────<br><b>Ý nghĩa:</b> Như là..., hạng như..., cái thứ như...
<br>──────────<br><b>Chú ý:</b>  なんか và  なんて thường dùng trong văn nói và mang nhiều sắc thái cảm xúc.
<br>──────────<br><b>Ví dụ:</b>
<br>ケーキなんかどうですか。<br>→ (Bánh ngọt hay gì đó thì sao?)
<br><br>私なんかに、そんなことはできません。<br>→ (Người như tôi thì không thể làm
việc đó được đâu.)
<br><br>試験なんて大嫌いだ。<br>→ (Tôi ghét cay ghét đắng cái thứ gọi là thi cử.)
<br>──────────<br><b>Ngữ pháp tương tự:</b><br>
～とか (<b>N4</b>): ... hoặc là..., như là...
<br><br>～や～など (<b>N5</b>): ... và ... vân vân...') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('69.  直す  (なおす) - Làm lại; làm lại từ đầu', 'Common', '     <b>Công thức:</b> V-ます (bỏ  ます) +  直す
<br>──────────<br><b>Cách dùng:</b> Ghép vào sau động từ để diễn tả việc thực hiện lại hành động đó một lần nữa, thường là để sửa chữa, cải thiện hoặc làm cho đúng.
<br>──────────<br><b>Ý nghĩa:</b> ... lại.
<br>──────────<br><b>Chú ý:</b> Thường đi với các động từ như  書く,  言う,  考える,  見る,  やる...
<br>──────────<br><b>Ví dụ:</b>
<br>作文に間違いが多かったので、書き直した。<br>→ (Vì bài văn có nhiều lỗi nên tôi đã viết lại.)
<br><br>この部分は分かりにくいので、言い直してください。<br>→ (Phần này khó hiểu nên xin hãy nói lại.)
<br><br>もう一度考え直します。<br>→ (Tôi sẽ suy nghĩ lại một lần nữa.)
<br>──────────<br><b>Ngữ pháp tương tự:</b><br>
もう一度する (<b>N5</b>): Làm lại một lần nữa.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('70.  なるべく  - Càng nhiều càng tốt / Cố gắng hết sức', 'Common', '     <b>Công thức:</b>  なるべく + V / Adj / Adv
<br>──────────<br><b>Cách dùng:</b> Là một trạng từ, diễn tả sự cố gắng làm một việc gì đó ở mức độ tốt nhất, nhiều nhất, hoặc sớm nhất có thể trong phạm vi cho phép.
<br>──────────<br><b>Ý nghĩa:</b> Hết sức có thể, càng... càng tốt.
<br>──────────<br><b>Chú ý:</b> Thể hiện sự nỗ lực trong giới hạn.
<br>──────────<br><b>Ví dụ:</b>
<br>なるべく早く来てください。<br>→ (Xin hãy đến sớm nhất có thể.)
<br><br>なるべく多くの人に参加してほしい。<br>→ (Tôi muốn càng nhiều người tham
gia càng tốt.)
<br><br>なるべく野菜を食べるようにしています。<br>→ (Tôi đang cố gắng ăn rau nhiều nhất có thể.)
<br>──────────<br><b>Ngữ pháp tương tự:</b><br>
できるだけ (<b>N4/N3</b>): Hết sức có thể (rất giống nhau, có thể thay thế).') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('71.  なぜなら  - Bởi vì; lý do là; nếu bạn muốn biết tại sao', 'Common', '     <b>Công thức:</b> Câu 1.  なぜなら、Câu 2 (lý do) +  からだ /  ためだ.
<br>──────────<br><b>Cách dùng:</b> Dùng để đưa ra lý do hoặc nguyên nhân cho một sự việc đã được nêu ở câu trước. Thường mang tính trang trọng hoặc dùng trong văn viết, giải thích.
<br>──────────<br><b>Ý nghĩa:</b> Bởi vì..., lý do là...
<br>──────────<br><b>Chú ý:</b> Thường đi kèm với  ～からだ hoặc  ～ためだ ở cuối câu giải thích.
<br>──────────<br><b>Ví dụ:</b>
<br>来週、私は学校を休みます。なぜなら、国へ帰るからです。<br>→ (Tuần sau tôi sẽ nghỉ học. Bởi vì tôi sẽ về nước.)
<br><br>彼は人気がある。なぜなら、親切で正直だからだ。<br>→ (Anh ấy được yêu mến. Lý do là vì anh ấy tốt bụng và trung thực.)
<br>──────────<br><b>Ngữ pháp tương tự:</b><br>
～から (<b>N5</b>): Vì... (phổ biến nhất).
<br><br>～ので (<b>N4</b>): Vì... (khách quan hơn  から).
<br><br>どうしてかというと (<b>N3</b>): Nếu hỏi tại sao thì là vì... (tương tự, nhấn mạnh sự giải thích).') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('72.  んだって  - Tôi nghe nói rằng; nghe nói ~', 'Common', '     <b>Công thức:</b> V/Adj/N-thể thường +  んだって
<br>──────────<br><b>Cách dùng:</b> Dùng trong văn nói thân mật để truyền đạt lại thông tin đã nghe được từ người khác. Tương tự  ～そうだ (truyền 聞).
<br>──────────<br><b>Ý nghĩa:</b> Nghe nói là…
<br>──────────<br><b>Chú ý:</b> Là dạng rút gọn của  ～のだそうだ hoặc  ～のだと聞いた. Rất thân mật.
<br>──────────<br><b>Ví dụ:</b>
<br>田中さん、結婚するんだって。<br>→ (Tớ nghe nói anh Tanaka sắp cưới đấy.)
<br><br>明日は雨が降るんだって。<br>→ (Nghe nói mai trời mưa đấy.)
<br><br>あの店のケーキ、美味しいんだって。<br>→ (Nghe nói bánh ngọt ở quán kia
ngon lắm.)
<br>──────────<br><b>Ngữ pháp tương tự:</b><br>
～そうだ (N4 - Truyền 聞): Nghe nói là... (phổ biến hơn, ít thân mật hơn).
<br><br>～ということだ (<b>N3</b>): Nghe nói là... / Có nghĩa là... (trang trọng hơn).') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('73.  に違いない  (にちがいない) - Chắc chắn là; không nghi ngờ gì ~', 'Common', '     <b>Công thức:</b> V/Adj/N-thể thường +  に違いない
<br>──────────<br><b>Cách dùng:</b> Diễn tả sự phán đoán chắc chắn của người nói dựa trên một căn cứ nào đó. Mức độ chắc chắn cao.
<br>──────────<br><b>Ý nghĩa:</b> Chắc chắn là..., nhất định là...
<br>──────────<br><b>Chú ý:</b> Mang tính chủ quan nhưng dựa trên cơ sở.
<br>──────────<br><b>Ví dụ:</b>
<br>窓が開いている。誰かが部屋に入ったに違いない。<br>→ (Cửa sổ đang mở. Chắc chắn là có ai đó đã vào phòng.)
<br><br>彼は一日中勉強しているから、試験に合格するに違いない。<br>→ (Vì anh ấy học cả ngày nên chắc chắn sẽ đỗ kỳ thi.)
<br>──────────<br><b>Ngữ pháp tương tự:</b><br>
～だろう (<b>N4</b>): Có lẽ là... (mức độ chắc chắn thấp hơn).
<br><br>～はずだ (<b>N4</b>): Chắc chắn là... (dựa trên logic, quy luật).
<br><br>きっと (<b>N4</b>): Chắc chắn là... (trạng từ).') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('74.  に反して  (にはんして) - Chống lại; trái với; ngược lại với ~', 'Common', '     <b>Công thức:</b> N +  に反して /  に反する + N
<br>──────────<br><b>Cách dùng:</b> Diễn tả một sự việc, hành động xảy ra trái ngược với dự đoán, kỳ vọng, mong muốn, quy tắc hoặc ý chí.
<br>──────────<br><b>Ý nghĩa:</b> Trái với...
<br>──────────<br><b>Chú ý:</b> Thường đi với các danh từ như  予想 (dự đoán),  期待 (kỳ vọng),  命令
(mệnh lệnh),  法律 (pháp luật)...
<br>──────────<br><b>Ví dụ:</b>
<br>私の予想に反して、試合は簡単に終わった。<br>→ (Trái với dự đoán của tôi, trận đấu đã kết thúc một cách dễ dàng.)
<br><br>親の期待に反して、彼は大学に行かなかった。<br>→ (Trái với kỳ vọng của bố mẹ, anh ấy đã không vào đại học.)
<br>──────────<br><b>Ngữ pháp tương tự:</b><br>
～のに (<b>N4</b>): Mặc dù... (chỉ sự tương phản nói chung).
<br><br>～と違って (<b>N4</b>): Khác với...') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('75.  にかけて  /  にかけては  - Về (lĩnh vực); Xét về (mặt); Giỏi về ~', 'Common', '     <b>Công thức:</b> N (Lĩnh vực/Kỹ năng) +  にかけては + (N2 +  は/も) +  ～
<br>──────────<br><b>Cách dùng:</b> Dùng để chỉ một lĩnh vực, phương diện cụ thể mà ai đó hoặc cái gì đó đặc biệt giỏi, vượt trội.
<br>──────────<br><b>Ý nghĩa:</b> Xét về mặt..., nói về khoản..., thì...
<br>──────────<br><b>Chú ý:</b> Nhấn mạnh sự xuất sắc trong một lĩnh vực cụ thể. Khác với  から～にかけて
(N3 - Từ... đến...).
<br>──────────<br><b>Ví dụ:</b>
<br>数学にかけては、彼に勝てる人はいない。<br>→ (Xét về môn Toán thì không ai thắng nổi cậu ấy.)
<br><br>足の速さにかけては、彼女がクラスで一番だ。<br>→ (Nói về tốc độ chạy thì cô ấy là số một trong lớp.)
<br>──────────<br><b>Ngữ pháp tương tự:</b><br>
～について (<b>N4</b>): Về... (chỉ chủ đề nói chung).
<br><br>～に関しては (<b>N3</b>): Liên quan đến... (trang trọng hơn).') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('76.  に関する  /  に関して  (にかんする  /  にかんして) - Về; liên quan đến ~', 'Common', '     <b>Công thức:</b> N +  に関して /  に関する + N
<br>──────────<br><b>Cách dùng:</b> Dùng để chỉ chủ đề, đối tượng được nói đến, đề cập đến. Trang trọng hơn  ～について.
<br>──────────<br><b>Ý nghĩa:</b> Về..., liên quan đến...
<br>──────────<br><b>Chú ý:</b>  に関する dùng để bổ nghĩa cho danh từ đứng sau.  に関して dùng như trạng từ.
<br>──────────<br><b>Ví dụ:</b>
<br>この問題に関して、何か意見がありますか。<br>→ (Về vấn đề này, có ai có ý kiến gì không?)
<br><br>環境問題に関するレポートを書いた。<br>→ (Tôi đã viết một bản báo cáo liên quan đến vấn đề môi trường.)
<br>──────────<br><b>Ngữ pháp tương tự:</b><br>
～について (<b>N4</b>): Về... (phổ biến hơn, ít trang trọng hơn).') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('77.  にかわって  /  にかわり  - Thay vì; thay thế; thay mặt ~', 'Common', '     <b>Công thức:</b> N +  にかわって /  にかわり
<br>──────────<br><b>Cách dùng:</b> Diễn tả sự thay thế: người này làm thay người kia, vật này được dùng thay vật kia.
<br>──────────<br><b>Ý nghĩa:</b> Thay cho..., thay mặt...
<br>──────────<br><b>Chú ý:</b> Thường dùng khi có sự thay đổi vai trò hoặc công cụ.
<br>──────────<br><b>Ví dụ:</b>
<br>今日は父にかわって、私が店番をします。<br>→ (Hôm nay tôi sẽ trông cửa hàng thay cho bố.)
<br><br>社長にかわり、ご挨拶申し上げます。<br>→ (Thay mặt giám đốc, tôi xin có đôi lời phát biểu.)
<br><br>今は、電話にかわってメールが主な連絡手段になった。<br>→ (Bây giờ, email đã trở thành phương tiện liên lạc chính thay cho điện thoại.)
<br>──────────<br><b>Ngữ pháp tương tự:</b><br>
～代わりに (<b>N3</b>): Thay vì, đổi lại (phạm vi rộng hơn).') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('78.  に比べて  (にくらべて) - So với; so sánh với ~', 'Common', '     <b>Công thức:</b> N +  に比べて /  に比べると
<br>──────────<br><b>Cách dùng:</b> Dùng để đưa ra một đối tượng làm tiêu chuẩn để so sánh với một đối tượng khác.
<br>──────────<br><b>Ý nghĩa:</b> So với...
<br>──────────<br><b>Chú ý:</b> Là cách nói trực tiếp về sự so sánh.
<br>──────────<br><b>Ví dụ:</b>
<br>去年に比べて、今年は雨が多い。<br>→ (So với năm ngoái thì năm nay mưa nhiều.)
<br><br>電話はメールに比べて、早く連絡が取れる。<br>→ (So với email thì điện thoại có thể liên lạc nhanh hơn.)
<br>──────────<br><b>Ngữ pháp tương tự:</b><br>
～より (<b>N5</b>): Hơn là...
<br><br>～ほど～ない (<b>N3</b>): Không... bằng...') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('79.  に慣れる  (になれる) - Quen với ~', 'Common', '     <b>Công thức:</b> N +  に慣れる / V-る +  の +  に慣れる
<br>──────────<br><b>Cách dùng:</b> Diễn tả trạng thái đã trở nên quen thuộc, thích nghi được với một môi trường, công việc, hoặc thói quen nào đó.
<br>──────────<br><b>Ý nghĩa:</b> Quen với...
<br>──────────<br><b>Chú ý:</b> Đây là một cụm động từ phổ biến, thường được học như một mẫu câu.
<br>──────────<br><b>Ví dụ:</b>
<br>日本の生活に慣れましたか。<br>→ (Bạn đã quen với cuộc sống ở Nhật chưa?)
<br><br>新しい仕事になかなか慣れない。<br>→ (Tôi mãi mà không quen được với công
việc mới.)
<br><br>毎日早く起きるのに慣れた。<br>→ (Tôi đã quen với việc dậy sớm mỗi ngày.)
<br>──────────<br><b>Ngữ pháp tương tự:</b><br>
～ようになる (<b>N4</b>): Trở nên có thể... (chỉ sự thay đổi khả năng/thói quen).') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('80.  において  /  における  - Ở; tại (nơi); về; đối với; liên quan đến ~', 'Common', '     <b>Công thức:</b> N (Nơi chốn/Thời gian/Lĩnh vực) +  において /  における + N
<br>──────────<br><b>Cách dùng:</b> Là cách nói trang trọng của  ～で hoặc  ～に, dùng để chỉ địa điểm, thời gian hoặc lĩnh vực mà một sự việc xảy ra hoặc tồn tại.
<br>──────────<br><b>Ý nghĩa:</b> Tại..., ở..., trong..., về...
<br>──────────<br><b>Chú ý:</b> Mang tính trang trọng, thường dùng trong văn viết, thông báo, bài phát biểu.
<br>──────────<br><b>Ví dụ:</b>
<br>会議は第一会議室において行われます。<br>→ (Cuộc họp sẽ được tổ chức tại phòng họp số 1.)
<br><br>現代社会における問題について話し合った。<br>→ (Chúng tôi đã thảo luận về các vấn đề trong xã hội hiện đại.)
<br>──────────<br><b>Ngữ pháp tương tự:</b><br>
～で (<b>N5</b>): Tại, ở (chỉ nơi diễn ra hành động).
<br><br>～に (<b>N5</b>): Vào, ở (chỉ thời gian, địa điểm tồn tại).') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('81.  にしたがって  /  にしたがい  - Theo; cùng với; do đó ~', 'Common', '     <b>Công thức:</b> N / V-る +  にしたがって /  にしたがい
<br>──────────<br><b>Cách dùng:</b>
<br>Nghĩa 1: Diễn tả sự thay đổi song song: Khi một sự việc thay đổi (vế trước), thì một sự việc khác cũng thay đổi theo (vế sau). (Tương tự  ～につれて).
<br><br>Nghĩa 2: Diễn tả sự tuân theo một chỉ thị, quy tắc, hoặc lời khuyên nào đó.
<br>──────────<br><b>Ý nghĩa:</b> Cùng với... / Theo như...
<br>──────────<br><b>Chú ý:</b>  にしたがい trang trọng hơn  にしたがって.
<br>──────────<br><b>Ví dụ:</b>
<br>北へ行くにしたがって、紅葉は早くなる。<br>→ (Càng đi về phía Bắc, lá đỏ càng đến sớm.)
<br><br>予定表にしたがい、旅行の準備をします。<br>→ (Tôi sẽ chuẩn bị cho chuyến đi theo như lịch trình.)
<br><br>指示にしたがって、動いてください。<br>→ (Hãy hành động theo chỉ thị.)
<br>──────────<br><b>Ngữ pháp tương tự:</b><br>
～につれて (<b>N3</b>): Cùng với (Chỉ dùng cho nghĩa 1).
<br><br>～どおりに (<b>N4</b>): Theo như (Chỉ dùng cho nghĩa 2).
<br><br>～ば～ほど (<b>N3</b>): Càng... càng... (Nghĩa 1).') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('82.  にしても  - Ngay cả khi; mặc dù; bất kể ~', 'Common', '     <b>Công thức:</b> V/Adj/N-thể thường +  にしても
<br>──────────<br><b>Cách dùng:</b>
<br>Nghĩa 1: Diễn tả ý "ngay cả khi/dù là" (Tương tự  ～ても).
<br><br>Nghĩa 2: Dùng để đưa ra một ví dụ cực đoan hoặc một trường hợp, và khẳng định rằng dù ở trường hợp đó thì vế sau vẫn đúng.
<br><br>Nghĩa 3: A にしても B にしても: Dù là A hay B thì...
<br>──────────<br><b>Ý nghĩa:</b> Dù là... thì cũng...
<br>──────────<br><b>Chú ý:</b>  にしろ /  にせよ (<b>N2</b>) có ý nghĩa tương tự nhưng trang trọng hơn.
<br>──────────<br><b>Ví dụ:</b>
<br>行くにしても、行かないにしても、早く決めてください。<br>→ (Dù đi hay không đi thì cũng hãy quyết định sớm đi.)
<br><br>いくら好きだにしても、毎日食べると飽きる。<br>→ (Dù thích đến mấy đi nữa, ăn mỗi ngày cũng chán.)
<br>──────────<br><b>Ngữ pháp tương tự:</b><br>
～ても (<b>N4</b>): Dù... thì cũng...
<br><br>～たって (<b>N3</b>): Dù... thì cũng... (văn nói).') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('83.  にしては  - Đối với; xét đến việc ~', 'Common', '     <b>Công thức:</b> V/Adj/N-thể thường +  にしては
<br>──────────<br><b>Cách dùng:</b> Dùng khi muốn nói rằng một sự việc nào đó khác biệt (tốt hơn hoặc kém hơn) so với những gì người ta thường mong đợi từ một tiêu chuẩn hoặc sự thật được nêu ở vế trước.
<br>──────────<br><b>Ý nghĩa:</b> So với (tiêu chuẩn)... thì... (khá là...)
<br>──────────<br><b>Chú ý:</b> Diễn tả sự bất ngờ, khác biệt so với tiêu chuẩn thông thường.
<br>──────────<br><b>Ví dụ:</b>
<br>初めてにしては、上手にできましたね。<br>→ (Xét việc lần đầu làm thì cậu đã làm rất giỏi đấy nhỉ.)
<br><br>彼は外国人にしては、日本語がぺらぺらだ。<br>→ (Đối với một người nước ngoài thì anh ấy nói tiếng Nhật rất trôi chảy.)
<br><br>子供にしては、難しいことをよく知っている。<br>→ (Đối với một đứa trẻ thì nó biết khá nhiều chuyện khó.)
<br>──────────<br><b>Ngữ pháp tương tự:</b><br>
～わりに (<b>N3</b>): So với... thì... (rất giống nhau).
<br><br>～のに (<b>N4</b>): Mặc dù... (chỉ sự tương phản đơn thuần).') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('84.  に対して  (にたいして) - Đối với; chống lại; về; trái ngược với ~', 'Common', '     <b>Công thức:</b> N +  に対して /  に対する + N
<br>──────────<br><b>Cách dùng:</b>
<br>Nghĩa 1: Chỉ đối tượng mà hành động hoặc thái độ hướng đến.
<br><br>Nghĩa 2: Chỉ sự đối lập, tương phản rõ rệt giữa hai sự vật, sự việc.
<br>──────────<br><b>Ý nghĩa:</b> Đối với... / Trái ngược với...
<br>──────────<br><b>Chú ý:</b> Phân biệt hai nghĩa dựa vào ngữ cảnh.
<br>──────────<br><b>Ví dụ:</b>
<br>目上の人に対しては、丁寧な言葉を使いなさい。<br>→ (Đối với người trên, hãy dùng lời lẽ lịch sự.)
<br><br>父の意見に対して、私は反対です。<br>→ (Tôi phản đối ý kiến của bố.)
<br><br>大阪はにぎやかなのに対して、私の故郷は静かだ。<br>→ (Osaka náo nhiệt,
trái lại quê tôi thì yên tĩnh.)
<br>──────────<br><b>Ngữ pháp tương tự:</b><br>
～について (<b>N4</b>): Về... (nghĩa 1).
<br><br>～に (<b>N5</b>): Đến/Với (nghĩa 1).
<br><br>～は～が、～は～ (<b>N5/N4</b>): Cấu trúc so sánh (nghĩa 2).') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('85.  にとって  - Đối với; cho; về; theo như... thì; về ~', 'Common', '     <b>Công thức:</b> N +  にとって
<br>──────────<br><b>Cách dùng:</b> Dùng để chỉ ra quan điểm, góc nhìn hoặc sự đánh giá từ phía một người hoặc một sự vật nào đó.
<br>──────────<br><b>Ý nghĩa:</b> Đối với (ai đó) thì... (là quan trọng/khó/dễ...).
<br>──────────<br><b>Chú ý:</b> Thường đi với các từ chỉ sự đánh giá, cảm nhận (重要だ,  難しい,  嬉しい...). Không dùng cho hành động trực tiếp.
<br>──────────<br><b>Ví dụ:</b>
<br>私にとって、家族は一番大切です。<br>→ (Đối với tôi, gia đình là quan trọng nhất.)
<br><br>この問題は子供にとっては難しすぎる。<br>→ (Vấn đề này quá khó đối với trẻ con.)
<br>──────────<br><b>Ngữ pháp tương tự:</b><br>
～には (<b>N3</b>): Đối với (mục đích).
<br><br>～に対して (<b>N3</b>): Đối với (hành động/thái độ).') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('86.  について  - Về; liên quan đến; về; trên ~', 'Common', '     <b>Công thức:</b> N +  について /  についての + N
<br>──────────<br><b>Cách dùng:</b> Dùng để chỉ chủ đề hoặc nội dung của một hành động như nói chuyện, suy nghĩ, điều tra, viết lách... Đây là cách nói cơ bản và phổ biến nhất.
<br>──────────<br><b>Ý nghĩa:</b> Về...
<br>──────────<br><b>Chú ý:</b>  についての dùng để bổ nghĩa cho danh từ đứng sau.
<br>──────────<br><b>Ví dụ:</b>
<br>日本の文化について勉強したいです。<br>→ (Tôi muốn học về văn hóa Nhật Bản.)
<br><br>この件について、詳しく説明してください。<br>→ (Xin hãy giải thích chi tiết về vụ việc này.)
<br><br>経済についての本を読んでいます。<br>→ (Tôi đang đọc sách về kinh tế.)
<br>──────────<br><b>Ngữ pháp tương tự:</b><br>
～に関して (<b>N3</b>): Về, liên quan đến (trang trọng hơn).') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('87.  につれて  - Cùng với; tỷ lệ thuận với; với; khi… thì ~', 'Common', '     <b>Công thức:</b> N / V-る +  につれて
<br>──────────<br><b>Cách dùng:</b> Diễn tả sự thay đổi của vế sau diễn ra một cách tự nhiên, song song và cùng chiều hướng với sự thay đổi của vế trước.
<br>──────────<br><b>Ý nghĩa:</b> Càng... thì càng... / Cùng với...
<br>──────────<br><b>Chú ý:</b> Chỉ dùng cho những thay đổi theo một chiều (cùng tăng hoặc cùng giảm) và thường là những thay đổi mang tính tự nhiên, dần dần.
<br>──────────<br><b>Ví dụ:</b>
<br>年を取るにつれて、体が弱くなってきた。<br>→ (Càng lớn tuổi, cơ thể càng yếu đi.)
<br><br>台風が近づくにつれて、雨や風が強くなってきた。<br>→ (Cùng với việc bão đến gần, mưa và gió càng mạnh lên.)
<br>──────────<br><b>Ngữ pháp tương tự:</b><br>
～にしたがって (<b>N3</b>): Cùng với (gần giống, nhưng  にしたがって còn có nghĩa "theo như").
<br><br>～ば～ほど (<b>N3</b>): Càng... càng... (nhấn mạnh sự lặp lại hoặc mức độ).') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('88.  には  - Với mục đích; để ~', 'Common', '     <b>Công thức:</b> V-る +  には
<br>──────────<br><b>Cách dùng:</b> Dùng để chỉ mục đích hoặc mục tiêu của hành động, và vế sau thường nêu lên phương pháp, điều kiện cần thiết, hoặc sự đánh giá để đạt được mục đích đó.
<br>──────────<br><b>Ý nghĩa:</b> Để..., Muốn... thì…
<br>──────────<br><b>Chú ý:</b> Thường dùng khi muốn nói về cách thức hoặc điều kiện để làm gì đó.
<br>──────────<br><b>Ví dụ:</b>
<br>日本語が上手になるには、毎日練習することが大切だ。<br>→ (Để giỏi tiếng Nhật thì việc luyện tập mỗi ngày là rất quan trọng.)
<br><br>駅へ行くには、どのバスに乗ればいいですか。<br>→ (Để đi đến ga thì nên đi chuyến xe buýt nào ạ?)
<br>──────────<br><b>Ngữ pháp tương tự:</b><br>
～ために (<b>N4</b>): Để... (chỉ mục đích nói chung).
<br><br>V-る +  のに (<b>N4</b>): Để... (chỉ sự hữu ích/cần thiết).') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('89.  によると  /  によれば  - Theo ~', 'Common', '     <b>Công thức:</b> N (Nguồn thông tin) +  によると /  によれば
<br>──────────<br><b>Cách dùng:</b> Dùng để chỉ nguồn gốc của thông tin mà người nói nghe được hoặc đọc được.
<br>──────────<br><b>Ý nghĩa:</b> Theo... thì...
<br>──────────<br><b>Chú ý:</b> Vế sau thường đi với các cấu trúc truyền đạt thông tin như  ～そうだ,  ～ということだ.  によれば trang trọng hơn một chút.
<br>──────────<br><b>Ví dụ:</b>
<br>天気予報によると、明日は晴れるそうだ。<br>→ (Theo dự báo thời tiết thì nghe nói ngày mai trời sẽ nắng.)
<br><br>新聞によれば、事故の原因はまだ分かっていないということだ。<br>→ (Theo báo chí thì nghe nói nguyên nhân vụ tai nạn vẫn chưa được làm rõ.)
<br>──────────<br><b>Ngữ pháp tương tự:</b><br>
～では (<b>N5/N4</b>): Theo như... (đơn giản).
<br><br>～そうだ (<b>N4</b>): Nghe nói là...') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('90.  によって  /  による  - Bằng cách; do; vì; bởi vì ~', 'Common', '     <b>Công thức:</b> N +  によって /  による + N
<br>──────────<br><b>Cách dùng:</b> Là một cấu trúc rất đa năng, có thể diễn tả:
<br><br>Phương tiện, cách thức: Bằng... (手段)
<br><br>Nguyên nhân, lý do: Do..., Vì... (原因・理由)
<br><br>Tác nhân trong câu bị động: Bởi... (受け身)
<br><br>Sự khác biệt tùy thuộc vào: Tùy vào... (場合)
<br><br>Người tạo ra: Bởi... (Tác giả, người phát minh...)
<br>──────────<br><b>Ý nghĩa:</b> Tùy thuộc vào ngữ cảnh.
<br>──────────<br><b>Chú ý:</b> Cần xác định rõ nghĩa dựa trên ngữ cảnh câu.
<br>──────────<br><b>Ví dụ:</b>
<br>インターネットによって、世界中の情報を得られる。<br>→ (Bằng internet, chúng ta có thể có được thông tin trên toàn thế giới.)
<br><br>地震によって、多くの家が壊れた。<br>→ (Do động đất, nhiều nhà cửa đã bị phá hủy.)
<br><br>この本は有名な作家によって書かれた。<br>→ (Quyển sách này được viết bởi một tác giả nổi tiếng.)
<br><br>人によって、考え方が違う。<br>→ (Tùy vào mỗi người mà cách suy nghĩ khác nhau.)
<br>──────────<br><b>Ngữ pháp tương tự:</b><br>
～で (<b>N5</b>): Bằng (phương tiện).
<br><br>～から /  ～ので (<b>N5/N4</b>): Vì (nguyên nhân).
<br><br>Câu bị động (<b>N4</b>): Bị/Được... bởi...
<br><br>～場合は (<b>N4</b>): Trong trường hợp...') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('91.  のでしょうか  - (Dùng để hỏi một cách lịch sự)', 'Common', '     <b>Công thức:</b> V/Adj/N-thể thường +  のでしょうか
<br>──────────<br><b>Cách dùng:</b> Là một cách hỏi rất lịch sự và mềm mại, thường được dùng khi muốn hỏi xin lời giải thích, ý kiến, hoặc khi muốn hỏi một cách gián tiếp, đặc biệt là với người trên hoặc trong tình huống cần sự lịch sự.
<br>──────────<br><b>Ý nghĩa:</b> Liệu có phải là... không ạ? / Có thể cho tôi biết... không ạ?
<br>──────────<br><b>Chú ý:</b> Lịch sự và mềm mại hơn  ～んですか.
<br>──────────<br><b>Ví dụ:</b>
<br>この問題について、どう考えたらいいのでしょうか。<br>→ (Về vấn đề này, tôi nên suy nghĩ như thế nào ạ?)
<br><br>会場にはどうやって行くのが一番早いのでしょうか。<br>→ (Để đến hội trường thì đi bằng cách nào là nhanh nhất ạ?)
<br>──────────<br><b>Ngữ pháp tương tự:</b><br>
～んですか (<b>N4</b>): ... à? (hỏi xin giải thích, ít lịch sự hơn).
<br><br>～ですか (<b>N5</b>): ... à? (câu hỏi cơ bản).') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('92.  を中心に  (をちゅうしんに) - Tập trung vào; lấy làm trung tâm', 'Common', '     <b>Công thức:</b> N +  を中心に /  を中心として /  を中心にした + N
<br>──────────<br><b>Cách dùng:</b> Diễn tả rằng danh từ đứng trước là trung tâm, là điểm chính hoặc là đối tượng tập trung của một hành động, sự việc hoặc một khu vực nào đó.
<br>──────────<br><b>Ý nghĩa:</b> Lấy... làm trung tâm, tập trung vào...
<br>──────────<br><b>Chú ý:</b>  を中心として và  を中心にした trang trọng hơn.
<br>──────────<br><b>Ví dụ:</b>
<br>東京を中心に、関東地方は人口が多い。<br>→ (Lấy Tokyo làm trung tâm, vùng Kanto có dân số đông đúc.)
<br><br>この会議は環境問題を中心にして、話し合います。<br>→ (Cuộc họp này sẽ thảo luận tập trung vào vấn đề môi trường.)
<br>──────────<br><b>Ngữ pháp tương tự:</b><br>
～について (<b>N4</b>): Về...
<br><br>～に関して (<b>N3</b>): Liên quan đến...') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('93.  をはじめ  /  をはじめとして  - Ví dụ; bắt đầu với ~', 'Common', '     <b>Công thức:</b> N +  をはじめ /  をはじめとして /  をはじめとする + N
<br>──────────<br><b>Cách dùng:</b> Dùng để đưa ra một ví dụ tiêu biểu, quan trọng nhất khi muốn liệt kê nhiều thứ khác nhau.
<br>──────────<br><b>Ý nghĩa:</b> Trước hết là..., tiêu biểu là..., bắt đầu với...
<br>──────────<br><b>Chú ý:</b> Sau nó thường ngụ ý rằng còn có những thứ khác nữa.
<br>──────────<br><b>Ví dụ:</b>
<br>日本には富士山をはじめ、美しい山がたくさんあります。<br>→ (Ở Nhật Bản, tiêu biểu là núi Phú Sĩ, có rất nhiều ngọn núi đẹp.)
<br><br>会議には、田中さんをはじめとして、多くの専門家が出席した。<br>→ (Trong cuộc họp, bắt đầu với ông Tanaka, có rất nhiều chuyên gia đã tham dự.)
<br>──────────<br><b>Ngữ pháp tương tự:</b><br>
～とか (<b>N4</b>): ... hoặc là..., như là...
<br><br>～など (<b>N4</b>): ... vân vân..., như là...
<br><br>～や～など (<b>N5</b>): ... và ... vân vân...') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('94.  を込めて  (をこめて) - Tràn đầy; chứa đựng ~', 'Common', '     <b>Công thức:</b> N (Chỉ cảm xúc) +  を込めて
<br>──────────<br><b>Cách dùng:</b> Diễn tả một hành động được thực hiện với tất cả tình cảm, tâm tư, hoặc nỗ lực được dồn vào trong đó.
<br>──────────<br><b>Ý nghĩa:</b> Với tất cả..., tràn đầy..., chứa đựng...
<br>──────────<br><b>Chú ý:</b> Thường đi với các danh từ chỉ tình cảm như  心 (tấm lòng),  愛 (tình yêu),  感謝 (lòng biết ơn),  祈り (lời cầu nguyện)...
<br>──────────<br><b>Ví dụ:</b>
<br>感謝の気持ちを込めて、プレゼントを贈ります。<br>→ (Tôi gửi món quà này với tất cả lòng biết ơn.)
<br><br>彼女は心を込めて、手紙を書いた。<br>→ (Cô ấy đã viết lá thư với tất cả tấm lòng.)
<br>──────────<br><b>Ngữ pháp tương tự:</b><br>
(Không có cấu trúc ngữ pháp trực tiếp tương đương, đây là một cách diễn đạt đặc thù).') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('G5.  を通じて  /  を通して  (をつうじて  /  をとおして) - Thông qua; qua; trong suốt;
bằng ~', 'Common', '     <b>Công thức:</b> N +  を通じて /  を通して
<br>──────────<br><b>Cách dùng:</b>
<br>Nghĩa 1: Diễn tả một phương tiện, một cách thức, hoặc một người trung gian mà thông qua đó một hành động được thực hiện hoặc thông tin được truyền đạt.
<br><br>Nghĩa 2: Diễn tả một khoảng thời gian kéo dài "trong suốt".
<br>──────────<br><b>Ý nghĩa:</b> Thông qua... / Suốt...
<br>──────────<br><b>Chú ý:</b>  を通じて thường dùng cho những thứ trừu tượng hoặc không thể kiểm soát.
を通して thường dùng khi có sự chủ động hơn.
<br>──────────<br><b>Ví dụ:</b>
<br>インターネットを通じて、世界中の友達ができた。<br>→ (Thông qua internet, tôi đã kết bạn được với bạn bè trên khắp thế giới.)
<br><br>友人を通して、彼と知り合った。<br>→ (Tôi quen anh ấy qua một người bạn.)
<br><br>この地域は一年を通じて暖かい。<br>→ (Vùng này ấm áp suốt cả năm.)
<br>──────────<br><b>Ngữ pháp tương tự:</b><br>
～で (<b>N5</b>): Bằng... (nghĩa 1).
<br><br>～中 (じゅう) (<b>N3</b>): Suốt... (nghĩa 2).
<br><br>～あいだずっと (<b>N4</b>): Suốt trong khoảng... (nghĩa 2).') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('96.  おかげで  - Nhờ có; do; bởi vì ~', 'Common', '     <b>Công thức:</b> V/Adj/N-thể thường +  おかげで
<br>──────────<br><b>Cách dùng:</b> Dùng để chỉ nguyên nhân dẫn đến một kết quả tốt, tích cực, đồng thời thể hiện lòng biết ơn hoặc sự đánh giá cao đối với nguyên nhân đó.
<br>──────────<br><b>Ý nghĩa:</b> Nhờ có..., nhờ vào...
<br>──────────<br><b>Chú ý:</b> Luôn dùng cho kết quả tốt. Trái nghĩa với  ～せいで (<b>N3</b>).
<br>──────────<br><b>Ví dụ:</b>
<br>先生のおかげで、試験に合格できました。<br>→ (Nhờ có thầy cô mà em đã đỗ kỳ thi.)
<br><br>あなたが手伝ってくれたおかげで、仕事が早く終わった。<br>→ (Nhờ bạn giúp mà công việc đã xong sớm.)
<br>──────────<br><b>Ngữ pháp tương tự:</b><br>
～から (<b>N5</b>): Vì... (trung tính).
<br><br>～ので (<b>N4</b>): Vì... (trung tính).
<br><br>～せいで (<b>N3</b>): Tại vì... (kết quả xấu).') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('97.  っぱなし  - Để (cái gì đó) nguyên; để suốt ~', 'Common', '     <b>Công thức:</b> V-ます (bỏ  ます) +  っぱなし
<br>──────────<br><b>Cách dùng:</b> Diễn tả một trạng thái cứ tiếp diễn mà không được xử lý hoặc kết thúc như bình thường, thường mang hàm ý tiêu cực, chỉ sự bỏ mặc, bất cẩn hoặc phàn nàn.
<br>──────────<br><b>Ý nghĩa:</b> Cứ để nguyên..., ...suốt.
<br>──────────<br><b>Chú ý:</b> Thường mang sắc thái tiêu cực, phê phán.
<br>──────────<br><b>Ví dụ:</b>
<br>テレビをつけっぱなしで寝てしまった。<br>→ (Tôi đã để tivi bật suốt và ngủ quên mất.)
<br><br>ドアを開けっぱなしにしないでください。<br>→ (Xin đừng để cửa mở suốt như vậy.)
<br><br>電気を消し忘れて、つけっぱなしだった。<br>→ (Tôi quên tắt điện, cứ để nó bật suốt.)
<br>──────────<br><b>Ngữ pháp tương tự:</b><br>
～まま (<b>N4</b>): Cứ để nguyên (ít mang sắc thái tiêu cực hơn, chỉ trạng thái).') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('98.  っぽい  - Giống như; hơi; có vẻ; dễ làm; thường làm ~', 'Common', '     <b>Công thức:</b> N / V-ます (bỏ  ます) / Adj-い (bỏ  い) +  っぽい
<br>──────────<br><b>Cách dùng:</b>
<br>Nghĩa 1: Diễn tả cảm giác "giống như", "có vẻ như" N, thường dùng cho màu sắc, đặc tính (đôi khi mang nghĩa không tốt hoặc trẻ con). (子供っぽい - như trẻ con,  安っぽい - trông rẻ tiền).
<br><br>Nghĩa 2: Diễn tả xu hướng "dễ", "hay" làm gì đó. (忘れっぽい - hay quên,
怒りっぽい - hay nổi giận).
<br>──────────<br><b>Ý nghĩa:</b> Trông như..., có vẻ..., hay...
<br>──────────<br><b>Chú ý:</b> Khi đi với danh từ, thường mang nghĩa "ra vẻ", "giống" nhưng không hoàn toàn.
<br>──────────<br><b>Ví dụ:</b>
<br>あの黒っぽい服を取ってください。<br>→ (Hãy lấy cho tôi cái bộ quần áo trông hơi đen kia.)
<br><br>彼は怒りっぽい人だ。<br>→ (Anh ta là người hay nổi giận.)
<br><br>年を取ると忘れっぽくなる。<br>→ (Khi có tuổi thì trở nên hay quên.)
<br>──────────<br><b>Ngữ pháp tương tự:</b><br>
～みたい (<b>N4</b>): Giống như (văn nói).
<br><br>～らしい (<b>N4</b>): Đúng kiểu..., ra dáng...
<br><br>～がち (<b>N3</b>): Hay... (thường chỉ thói quen xấu).
<br><br>～気味 (<b>N3</b>): Hơi... (chỉ mức độ nhẹ).') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('99.  さえ  - Ngay cả; đến mức; thậm chí ~', 'Common', '     <b>Công thức:</b> N (+ Trợ từ) +  さえ
<br>──────────<br><b>Cách dùng:</b> Dùng để đưa ra một ví dụ cực đoan, nhằm nhấn mạnh rằng đến cả trường hợp đó cũng như vậy (thì những trường hợp khác là đương nhiên).
<br>──────────<br><b>Ý nghĩa:</b> Ngay cả...
<br>──────────<br><b>Chú ý:</b> Nhấn mạnh hơn  ～も. Có thể đi với trợ từ (にさえ,  でさえ...).
<br>──────────<br><b>Ví dụ:</b>
<br>ひらがなさえ書けないのに、漢字は無理だ。<br>→ (Ngay cả Hiragana còn không viết được thì Kanji là không thể.)
<br><br>自分の名前さえ忘れました。<br>→ (Tôi thậm chí quên cả tên mình.)
<br><br>子供でさえ知っている。<br>→ (Ngay cả trẻ con cũng biết.)
<br>──────────<br><b>Ngữ pháp tương tự:</b><br>
～も (<b>N5</b>): Cũng, ngay cả (ít nhấn mạnh hơn).
<br><br>～だって (<b>N4</b>): Ngay cả (văn nói).') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('100.  さえ～ば  - Chỉ cần; miễn là ~', 'Common', '     <b>Công thức:</b>
<br>N +  さえ + V-ば / Adj-ければ / Adj-な +  なら / N +  なら
<br><br>V-ます (bỏ  ます) +  さえ +  すれば
<br>──────────<br><b>Cách dùng:</b> Dùng để chỉ ra một điều kiện tối thiểu và duy nhất, nếu điều kiện đó được đáp ứng thì vế sau sẽ xảy ra.
<br>──────────<br><b>Ý nghĩa:</b> Chỉ cần... thì...
<br>──────────<br><b>Chú ý:</b> Nhấn mạnh rằng chỉ cần điều kiện đó là đủ.
<br>──────────<br><b>Ví dụ:</b>
<br>あなたさえいれば、何もいらない。<br>→ (Chỉ cần có anh thì em không cần gì cả.)
<br><br>体さえ丈夫なら、どんな仕事もできる。<br>→ (Chỉ cần cơ thể khỏe mạnh thì việc gì cũng có thể làm được.)
<br><br>薬を飲みさえすれば、治りますよ。<br>→ (Chỉ cần uống thuốc là sẽ khỏi thôi.)
<br>──────────<br><b>Ngữ pháp tương tự:</b><br>
～だけ (<b>N5</b>): Chỉ.
<br><br>～ば /  ～たら (<b>N4</b>): Nếu...') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('101.  際に  (さいに) - Khi; vào lúc; trong trường hợp ~', 'Common', '     <b>Công thức:</b> N +  の +  際に / V-る / V-た +  際に
<br>──────────<br><b>Cách dùng:</b> Là cách nói trang trọng của  ～とき, dùng để chỉ thời điểm hoặc trường hợp một hành động nào đó diễn ra. Thường dùng trong các thông báo, hướng dẫn, văn bản trang trọng.
<br>──────────<br><b>Ý nghĩa:</b> Khi..., vào lúc..., trong trường hợp...
<br>──────────<br><b>Chú ý:</b> Trang trọng hơn  ～とき.
<br>──────────<br><b>Ví dụ:</b>
<br>お申し込みの際には、印鑑が必要です。<br>→ (Khi đăng ký, cần có con dấu.)
<br><br>図書館を利用する際には、カードを提示してください。<br>→ (Khi sử dụng
thư viện, xin hãy xuất trình thẻ.)
<br><br>緊急の際には、このボタンを押してください。<br>→ (Trong trường hợp khẩn cấp, hãy nhấn nút này.)
<br>──────────<br><b>Ngữ pháp tương tự:</b><br>
～とき (<b>N5</b>): Khi (phổ biến, dùng trong mọi tình huống).
<br><br>～場合 (<b>N4</b>): Trong trường hợp (nhấn mạnh tình huống giả định).') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('102.  最中に  (さいちゅうに) - Trong khi; trong lúc; giữa lúc ~', 'Common', '     <b>Công thức:</b> N +  の +  最中に / V-ている +  最中に
<br>──────────<br><b>Cách dùng:</b> Diễn tả một hành động hoặc sự việc khác xảy ra đúng vào lúc cao điểm, giữa lúc một hành động/sự việc khác đang diễn ra. Thường là những hành động chen ngang, bất ngờ hoặc gây cản trở.
<br>──────────<br><b>Ý nghĩa:</b> Đúng vào lúc..., đang giữa lúc...
<br>──────────<br><b>Chú ý:</b> Nhấn mạnh việc xảy ra "đúng vào giữa lúc" và thường có yếu tố bất ngờ/làm gián đoạn.
<br>──────────<br><b>Ví dụ:</b>
<br>食事の最中に、電話が鳴った。<br>→ (Đúng lúc đang ăn cơm thì điện thoại reo.)
<br><br>会議をしている最中に、停電になった。<br>→ (Đang giữa lúc họp thì mất điện.)
<br>──────────<br><b>Ngữ pháp tương tự:</b><br>
～間に (<b>N4</b>): Trong lúc (chỉ một hành động khác xảy ra trong khoảng thời gian).
<br><br>～うちに (<b>N3</b>): Trong khi (nhấn mạnh sự thay đổi hoặc làm trước khi thay đổi).
<br><br>～ているところだ (<b>N4</b>): Đang đúng lúc làm...') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('103.  さらに  - Hơn nữa; lại; ngày càng nhiều ~', 'Common', '     <b>Công thức:</b>  さらに + Câu / Adj / Adv
<br>──────────<br><b>Cách dùng:</b> Là một trạng từ, dùng để bổ sung thêm thông tin, hoặc chỉ mức độ tăng tiến, mạnh hơn nữa.
<br>──────────<br><b>Ý nghĩa:</b> Hơn nữa, thêm vào đó, còn... hơn nữa.
<br>──────────<br><b>Chú ý:</b> Dùng để thêm vào hoặc nhấn mạnh mức độ.
<br>──────────<br><b>Ví dụ:</b>
<br>彼は英語が話せる。さらに、フランス語も話せる。<br>→ (Anh ấy nói được tiếng Anh. Hơn nữa, còn nói được cả tiếng Pháp.)
<br><br>雨が降り出し、さらに風も強くなった。<br>→ (Trời bắt đầu mưa, và gió lại càng mạnh hơn.)
<br>──────────<br><b>Ngữ pháp tương tự:</b><br>
もっと (<b>N5</b>): Hơn nữa (ít trang trọng hơn).
<br><br>その上 (<b>N3</b>): Thêm vào đó.
<br><br>しかも (<b>N3</b>): Hơn nữa, vả lại.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('104.  さて  - Nào; bây giờ; vậy thì ~', 'Common', '     <b>Công thức:</b>  さて、+ Câu.
<br>──────────<br><b>Cách dùng:</b> Là một liên từ, dùng để bắt đầu một câu chuyện, chuyển sang một chủ đề mới, hoặc thu hút sự chú ý trước khi nói điều gì đó quan trọng hoặc đặt câu hỏi.
<br>──────────<br><b>Ý nghĩa:</b> Nào, bây giờ thì..., vậy thì...
<br>──────────<br><b>Chú ý:</b> Thường đứng ở đầu câu, dùng để chuyển tiếp.
<br>──────────<br><b>Ví dụ:</b>
<br>さて、次の問題に移りましょう。<br>→ (Nào, chúng ta hãy chuyển sang vấn đề tiếp theo.)
<br><br>さて、今日の会議を始めます。<br>→ (Bây giờ, chúng ta sẽ bắt đầu cuộc họp hôm nay.)
<br>──────────<br><b>Ngữ pháp tương tự:</b><br>
では (<b>N5</b>): Vậy thì...
<br><br>それでは (<b>N5</b>): Vậy thì... (lịch sự hơn).
<br><br>ところで (<b>N3</b>): Nhân tiện (dùng để chuyển chủ đề đột ngột).') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('105.  せいで  - Vì; do; kết quả của ~', 'Common', '     <b>Công thức:</b> V/Adj/N-thể thường +  せいで /  せいだ /  せいか
<br>──────────<br><b>Cách dùng:</b> Dùng để chỉ nguyên nhân dẫn đến một kết quả xấu, tiêu cực. Thường mang sắc thái đổ lỗi, trách móc.  ～せいか dùng khi không chắc chắn về nguyên nhân.
<br>──────────<br><b>Ý nghĩa:</b> Tại vì..., do... (kết quả xấu).
<br>──────────<br><b>Chú ý:</b> Luôn dùng cho kết quả xấu. Trái nghĩa với  ～おかげで (<b>N3</b>).
<br>──────────<br><b>Ví dụ:</b>
<br>あなたのせいで、私は遅刻しました。<br>→ (Tại bạn mà tôi đã đi muộn.)
<br><br>寝不足のせいか、頭が痛い。<br>→ (Có lẽ tại vì thiếu ngủ nên tôi bị đau đầu.)
<br>──────────<br><b>Ngữ pháp tương tự:</b><br>
～から (<b>N5</b>): Vì... (trung tính).
<br><br>～ので (<b>N4</b>): Vì... (trung tính).
<br><br>～おかげで (<b>N3</b>): Nhờ... (kết quả tốt).') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('106.  せいぜい  - Nhiều nhất; tốt nhất; hết mức ~', 'Common', '     <b>Công thức:</b>  せいぜい + Số lượng / Mức độ
<br>──────────<br><b>Cách dùng:</b> Là một trạng từ, dùng để chỉ mức độ tối đa có thể đạt được, nhưng thường mang hàm ý rằng mức đó không cao lắm, ít hơn so với mong đợi.
<br>──────────<br><b>Ý nghĩa:</b> Tối đa cũng chỉ..., nhiều nhất là...
<br>──────────<br><b>Chú ý:</b> Thường mang sắc thái đánh giá thấp hoặc giới hạn.
<br>──────────<br><b>Ví dụ:</b>
<br>ここから駅まで歩いても、せいぜい１０分だろう。<br>→ (Từ đây đi bộ đến ga thì nhiều nhất cũng chỉ mất 10 phút thôi.)
<br><br>この仕事はせいぜい３日で終わる。<br>→ (Công việc này nhiều nhất 3 ngày là xong.)
<br>──────────<br><b>Ngữ pháp tương tự:</b><br>
多くても (N3/N4): Nhiều nhất là...
<br><br>最大 (さいだい) (<b>N3</b>): Tối đa.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('107.  しばらく  - Một lát; một lúc; trong lúc này', 'Common', '     <b>Công thức:</b>  しばらく + V /  しばらくです
<br>──────────<br><b>Cách dùng:</b> Là một trạng từ, chỉ một khoảng thời gian tương đối (không quá ngắn cũng không quá dài).
<br>──────────<br><b>Ý nghĩa:</b> Một lúc, một lát, một thời gian.
<br>──────────<br><b>Chú ý:</b> Có thể dùng với  久しぶり (お久しぶりです - Lâu rồi không gặp).
<br>──────────<br><b>Ví dụ:</b>
<br>しばらくお待ちください。<br>→ (Xin vui lòng đợi một lát.)
<br><br>彼はしばらく黙っていた。<br>→ (Anh ấy đã im lặng một lúc.)
<br><br>ご無沙汰しております。しばらくですね。<br>→ (Lâu rồi không liên lạc. Cũng
một thời gian rồi nhỉ.)
<br>──────────<br><b>Ngữ pháp tương tự:</b><br>
ちょっと (<b>N5</b>): Một chút, một lát (ngắn hơn).
<br><br>しばらくぶり (<b>N3</b>): Lâu rồi mới...') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('108.  しかない  - Không còn cách nào khác ngoài ~', 'Common', '     <b>Công thức:</b> V-る +  しかない
<br>──────────<br><b>Cách dùng:</b> Diễn tả rằng không có lựa chọn nào khác, chỉ có một cách duy nhất là phải làm V.
<br>──────────<br><b>Ý nghĩa:</b> Chỉ còn cách..., đành phải...
<br>──────────<br><b>Chú ý:</b> Thể hiện sự bắt buộc hoặc không có lựa chọn.
<br>──────────<br><b>Ví dụ:</b>
<br>バスがないから、歩くしかない。<br>→ (Vì không có xe buýt nên chỉ còn cách đi bộ.)
<br><br>もう時間がない。急ぐしかない。<br>→ (Không còn thời gian nữa. Chỉ còn cách khẩn trương thôi.)
<br><br>やってみるしかないだろう。<br>→ (Chắc là chỉ còn cách làm thử thôi.)
<br>──────────<br><b>Ngữ pháp tương tự:</b><br>
～だけ (<b>N5</b>): Chỉ.
<br><br>～なければならない (<b>N4</b>): Phải làm...') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('109.  そのために  - Do đó; vì lý do đó; bởi vì ~', 'Common', '     <b>Công thức:</b> Câu 1.  そのために、Câu 2.
<br>──────────<br><b>Cách dùng:</b> Là một liên từ, dùng để nối hai câu, chỉ ra rằng Câu 1 là nguyên nhân hoặc mục đích dẫn đến kết quả hoặc hành động ở Câu 2.
<br>──────────<br><b>Ý nghĩa:</b> Vì vậy..., do đó..., để làm điều đó...
<br>──────────<br><b>Chú ý:</b> Có thể chỉ cả nguyên nhân và mục đích.
<br>──────────<br><b>Ví dụ:</b>
<br>彼は一生懸命勉強した。そのため（に）、試験に合格した。<br>→ (Anh ấy đã học rất chăm chỉ. Do đó, anh ấy đã đỗ kỳ thi.)
<br><br>来年留学したい。そのために、今から貯金している。<br>→ (Tôi muốn đi du học vào năm tới. Vì vậy, tôi đang tiết kiệm tiền từ bây giờ.)
<br>──────────<br><b>Ngữ pháp tương tự:</b><br>
だから (<b>N5</b>): Vì vậy (phổ biến).
<br><br>それで (<b>N4</b>): Do đó, vậy nên.
<br><br>～ために (<b>N4</b>): Vì, để.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('110.  それとも  - Hoặc; hoặc là ~', 'Common', '     <b>Công thức:</b> Câu hỏi 1  か。それとも Câu hỏi 2  か。
<br>──────────<br><b>Cách dùng:</b> Là một liên từ, dùng để nối hai câu hỏi, đưa ra hai hoặc nhiều lựa chọn để người nghe chọn một.
<br>──────────<br><b>Ý nghĩa:</b> Hay là..., hoặc là...
<br>──────────<br><b>Chú ý:</b> Chỉ dùng trong câu hỏi lựa chọn.
<br>──────────<br><b>Ví dụ:</b>
<br>コーヒーにしますか。それとも紅茶にしますか。<br>→ (Bạn dùng cà phê hay là dùng trà?)
<br><br>バスで行きますか。それとも電車で行きますか。<br>→ (Bạn đi bằng xe buýt hay là đi bằng tàu điện?)
<br>──────────<br><b>Ngữ pháp tương tự:</b><br>
または (<b>N3</b>): Hoặc là (dùng trong câu trần thuật hoặc câu hỏi, trang trọng).
<br><br>～か～か (<b>N5</b>): ... hay ... (cách nối cơ bản).') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('111.  そうもない  /  そうにない  - Rất khó có thể; không có dấu hiệu ~', 'Common', '     <b>Công thức:</b> V-ます (bỏ  ます) +  そうもない /  そうにない
<br>──────────<br><b>Cách dùng:</b> Dùng để diễn tả khả năng xảy ra một việc gì đó là rất thấp, gần như không thể, dựa trên tình hình hiện tại. Đây là dạng phủ định mạnh của  ～そうだ (trông có vẻ).
<br>──────────<br><b>Ý nghĩa:</b> Khó mà..., trông không có vẻ gì là...
<br>──────────<br><b>Chú ý:</b> Phủ định mạnh hơn  ～ないだろう.
<br>──────────<br><b>Ví dụ:</b>
<br>今日中にこの仕事は終わりそうもない。<br>→ (Trong hôm nay, công việc này khó mà xong được.)
<br><br>空はまだ暗い。雨はまだやみそうにない。<br>→ (Trời vẫn còn tối. Mưa trông không có vẻ gì là tạnh.)
<br>──────────<br><b>Ngữ pháp tương tự:</b><br>
～ないだろう (<b>N4</b>): Chắc là không...
<br><br>～そうだ (N4 - Dạng khẳng định): Trông có vẻ...') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('112.  すでに  - Đã làm/xảy ra; đã là trường hợp ~', 'Common', '     <b>Công thức:</b>  すでに + V-た / V-ている / N
<br>──────────<br><b>Cách dùng:</b> Là một trạng từ, diễn tả một hành động hoặc trạng thái đã xảy ra hoặc đã tồn tại trước một thời điểm nhất định. Trang trọng hơn  もう.
<br>──────────<br><b>Ý nghĩa:</b> Đã... rồi.
<br>──────────<br><b>Chú ý:</b> Thường dùng trong văn viết hoặc các tình huống trang trọng.
<br>──────────<br><b>Ví dụ:</b>
<br>私が駅に着いた時、電車はすでに出てしまった。<br>→ (Khi tôi đến ga thì tàu đã chạy mất rồi.)
<br><br>この件については、すでに報告しました。<br>→ (Về vụ việc này, tôi đã báo cáo rồi.)
<br>──────────<br><b>Ngữ pháp tương tự:</b><br>
もう (<b>N5</b>): Đã... rồi (phổ biến hơn, dùng trong văn nói).') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('113.  すなわち  - Nói cách khác; cụ thể là ~', 'Common', '     <b>Công thức:</b> A  すなわち B
<br>──────────<br><b>Cách dùng:</b> Là một liên từ, dùng để nối hai vế, trong đó vế sau (B) giải thích, định nghĩa, hoặc nói lại vế trước (A) bằng một cách khác, rõ ràng hơn. Thường dùng trong văn viết, giải thích trang trọng.
<br>──────────<br><b>Ý nghĩa:</b> Tức là..., nói cách khác là...
<br>──────────<br><b>Chú ý:</b> Trang trọng hơn  つまり.
<br>──────────<br><b>Ví dụ:</b>
<br>母の兄、すなわち私の伯父は、医者です。<br>→ (Anh trai của mẹ tôi, tức là bác tôi, là bác sĩ.)
<br><br>日本の首都、すなわち東京は、世界でも有数の大都市だ。<br>→ (Thủ đô của Nhật Bản, tức là Tokyo, là một trong những thành phố lớn hàng đầu thế giới.)
<br>──────────<br><b>Ngữ pháp tương tự:</b><br>
つまり (<b>N3</b>): Tức là..., tóm lại là... (phổ biến hơn, ít trang trọng hơn).') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('114.  数量  +  は  (すうりょう  +  は) - Ít nhất ~', 'Common', '     <b>Công thức:</b> Số lượng +  は
<br>──────────<br><b>Cách dùng:</b> Dùng sau một từ chỉ số lượng để nhấn mạnh rằng đó là mức tối thiểu, có thể còn nhiều hơn nữa.
<br>──────────<br><b>Ý nghĩa:</b> Ít nhất..., có đến...
<br>──────────<br><b>Chú ý:</b> Nhấn mạnh con số đó là mức sàn.
<br>──────────<br><b>Ví dụ:</b>
<br>パーティーには３０人は来るだろう。<br>→ (Bữa tiệc chắc sẽ có ít nhất 30 người đến.)
<br><br>このプロジェクトを完成させるには、１年はかかる。<br>→ (Để hoàn thành dự án này, cần ít nhất 1 năm.)
<br>──────────<br><b>Ngữ pháp tương tự:</b><br>
少なくとも (<b>N3</b>): Ít nhất là... (trạng từ).
<br><br>～以上 (<b>N4</b>): ... trở lên, ít nhất là...') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('115.  たものだ  - Đã từng làm; thường làm ~', 'Common', '     <b>Công thức:</b> V-た +  ものだ
<br>──────────<br><b>Cách dùng:</b> Dùng để hồi tưởng lại những thói quen, hành động thường xuyên xảy ra trong quá khứ, thường mang theo một chút cảm xúc hoài niệm.
<br>──────────<br><b>Ý nghĩa:</b> (Ngày xưa) thường... / Đã từng...
<br>──────────<br><b>Chú ý:</b> Nhấn mạnh sự hồi tưởng, hoài niệm về quá khứ. Khác với V-るものだ (bản chất, lẽ thường).
<br>──────────<br><b>Ví dụ:</b>
<br>子供のころ、よくこの川で泳いだものだ。<br>→ (Hồi nhỏ, tôi thường hay bơi ở con sông này.)
<br><br>学生時代は、毎晩遅くまで勉強したものだ。<br>→ (Thời sinh viên, tôi thường học đến khuya mỗi tối.)
<br>──────────<br><b>Ngữ pháp tương tự:</b><br>
よく～した (<b>N5/N4</b>): Thường làm... (ít hoài niệm hơn).') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('116.  たとたん  /  たとたんに  - Ngay sau khi; vừa mới ~', 'Common', '     <b>Công thức:</b> V-た +  とたん /  とたんに
<br>──────────<br><b>Cách dùng:</b> Diễn tả rằng ngay sau khi hành động 1 vừa kết thúc thì hành động 2 xảy ra gần như đồng thời. Vế 2 thường là một sự việc bất ngờ, không có chủ ý của người nói.
<br>──────────<br><b>Ý nghĩa:</b> Vừa mới... thì lập tức...
<br>──────────<br><b>Chú ý:</b> Vế sau thường là sự việc bất ngờ, không thể hiện ý chí.
<br>──────────<br><b>Ví dụ:</b>
<br>ドアを開けたとたん、猫が飛び出してきた。<br>→ (Vừa mới mở cửa ra thì con mèo phóng ra.)
<br><br>彼は椅子に座ったとたん、寝てしまった。<br>→ (Anh ta vừa mới ngồi xuống ghế thì ngủ thiếp đi.)
<br>──────────<br><b>Ngữ pháp tương tự:</b><br>
～たら (<b>N4</b>): Sau khi/Nếu (không nhấn mạnh sự đồng thời/bất ngờ).
<br><br>～てすぐ (<b>N4</b>): Ngay sau khi (không nhất thiết phải bất ngờ).') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('117.  たびに  - Mỗi khi; mỗi lần ~', 'Common', '     <b>Công thức:</b> N +  の +  たびに / V-る +  たびに
<br>──────────<br><b>Cách dùng:</b> Diễn tả rằng cứ mỗi lần hành động V hoặc sự việc N xảy ra, thì một hành động hoặc sự việc khác cũng lặp lại theo.
<br>──────────<br><b>Ý nghĩa:</b> Cứ mỗi lần... thì lại...
<br>──────────<br><b>Chú ý:</b> Nhấn mạnh sự lặp lại đồng thời.
<br>──────────<br><b>Ví dụ:</b>
<br>この歌を聞くたびに、故郷を思い出す。<br>→ (Mỗi lần nghe bài hát này, tôi lại nhớ về quê hương.)
<br><br>旅行のたびに、お土産をたくさん買ってしまう。<br>→ (Cứ mỗi lần đi du lịch, tôi lại lỡ mua rất nhiều quà.)
<br>──────────<br><b>Ngữ pháp tương tự:</b><br>
～とき (<b>N5</b>): Khi... (không nhất thiết phải lặp lại).
<br><br>いつも (<b>N5</b>): Luôn luôn.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('118.  ために  - Cho; để; vì lợi ích của; bởi vì; kết quả của ~', 'Common', '     <b>Công thức:</b>
<br>N +  の +  ために / V-る +  ために (Mục đích)
<br><br>V-thể thường / Adj-い / Adj-な / N +  の +  ために (Nguyên nhân)
<br>──────────<br><b>Cách dùng:</b>
<br>Nghĩa 1 (Mục đích): Diễn tả mục đích, mục tiêu của hành động.
<br><br>Nghĩa 2 (Nguyên nhân): Diễn tả nguyên nhân, lý do (thường dùng trong văn viết hoặc tình huống trang trọng, có thể là kết quả tốt hoặc xấu).
<br>──────────<br><b>Ý nghĩa:</b> Để... / Vì...
<br>──────────<br><b>Chú ý:</b> Cần phân biệt hai nghĩa. Phổ biến và quan trọng.
<br>──────────<br><b>Ví dụ:</b>
<br>家族のために、毎日働いています。<br>→ (Tôi làm việc mỗi ngày vì gia đình.) -
Mục đích
<br><br>日本へ留学するために、日本語を勉強しています。<br>→ (Tôi học tiếng Nhật để đi du học Nhật Bản.) - Mục đích
<br><br>大雪のために、電車が遅れた。<br>→ (Vì tuyết lớn nên tàu đã bị trễ.) - Nguyên nhân
<br>──────────<br><b>Ngữ pháp tương tự:</b><br>
～ように (<b>N4</b>): Để... (mục đích, thường là khả năng/trạng thái).
<br><br>～には (<b>N3</b>): Để... (chỉ mục đích và phương pháp).
<br><br>～から /  ～ので (<b>N5/N4</b>): Vì... (nguyên nhân).
<br><br>～おかげで /  ～せいで (<b>N3</b>): Nhờ... / Tại... (nguyên nhân).') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('119.  確かに  (たしかに) - Chắc chắn; nhất định ~ / Quả thật là ~', 'Common', '     <b>Công thức:</b>  確かに + Câu / Adj / Adv
<br>──────────<br><b>Cách dùng:</b>
<br>Nghĩa 1: Diễn tả sự chắc chắn, tin tưởng vào điều gì đó.
<br><br>Nghĩa 2: Dùng để thừa nhận một sự thật nào đó ("Đúng là..."), thường để làm đệm trước khi nói một ý kiến khác hoặc phản bác nhẹ.
<br>──────────<br><b>Ý nghĩa:</b> Chắc chắn là... / Đúng là... nhưng...
<br>──────────<br><b>Chú ý:</b> Có thể dùng với  ～が /  ～けど ở vế sau khi dùng nghĩa 2.
<br>──────────<br><b>Ví dụ:</b>
<br>彼は確かにそう言いました。<br>→ (Anh ấy chắc chắn đã nói như vậy.)
<br><br>確かにこのレストランは高いけれど、とても美味しい。<br>→ (Đúng là nhà
hàng này đắt thật, nhưng rất ngon.)
<br>──────────<br><b>Ngữ pháp tương tự:</b><br>
きっと (<b>N4</b>): Chắc chắn là...
<br><br>もちろん (<b>N4</b>): Dĩ nhiên là...
<br><br>～が (<b>N5</b>): Nhưng...') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('120.  たて  - Vừa mới làm xong; mới làm ~', 'Common', '     <b>Công thức:</b> V-ます (bỏ  ます) +  たて +  だ /  の + N
<br>──────────<br><b>Cách dùng:</b> Diễn tả một hành động vừa mới được hoàn thành, nhấn mạnh sự tươi mới, nóng hổi, hoặc vừa mới ra lò.
<br>──────────<br><b>Ý nghĩa:</b> Mới..., vừa mới...
<br>──────────<br><b>Chú ý:</b> Thường dùng với các động từ liên quan đến nấu nướng, sản xuất, hoặc những việc vừa hoàn thành (焼きたて - mới nướng,  炊きたて - mới nấu,  ペンキ塗りたて
- mới sơn).
<br>──────────<br><b>Ví dụ:</b>
<br>焼きたてのパンは美味しい。<br>→ (Bánh mì mới nướng rất ngon.)
<br><br>ペンキ塗りたて。触らないでください。<br>→ (Mới sơn. Xin đừng chạm vào.)
<br>──────────<br><b>Ngữ pháp tương tự:</b><br>
～ばかり (<b>N4</b>): Vừa mới... (nhấn mạnh cảm giác chủ quan về thời gian).
<br><br>～たところだ (<b>N4</b>): Vừa mới... (nhấn mạnh thời điểm ngay sau khi kết thúc).') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('121.  たとえ～ても  - Ngay cả khi ~; Dù cho ~', 'Common', '     <b>Công thức:</b>  たとえ + V-ても / Adj-くても / N/Adj-な +  でも
<br>──────────<br><b>Cách dùng:</b> Dùng để nhấn mạnh một tình huống giả định (dù là khó xảy ra hoặc cực đoan), và khẳng định rằng dù tình huống đó có xảy ra đi nữa thì kết quả ở vế sau vẫn không thay đổi.
<br>──────────<br><b>Ý nghĩa:</b> Ngay cả nếu..., dù cho... thì cũng...
<br>──────────<br><b>Chú ý:</b> Mang tính giả định mạnh hơn  ～ても.
<br>──────────<br><b>Ví dụ:</b>
<br>たとえ両親に反対されても、私は彼と結婚します。<br>→ (Dù cho bố mẹ có phản đối, tôi vẫn sẽ kết hôn với anh ấy.)
<br><br>たとえどんなに難しくても、諦めません。<br>→ (Dù cho có khó khăn đến mấy, tôi cũng sẽ không bỏ cuộc.)
<br>──────────<br><b>Ngữ pháp tương tự:</b><br>
～ても (<b>N4</b>): Dù... thì cũng...
<br><br>どんなに～ても (<b>N3</b>): Dù... đến đâu...
<br><br>いくら～ても (<b>N3</b>): Dù... bao nhiêu...') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('122.  例えば  (たとえば) - Ví dụ; chẳng hạn ~', 'Common', '     <b>Công thức:</b>  例えば + Câu / N
<br>──────────<br><b>Cách dùng:</b> Là một trạng từ, dùng để đưa ra một ví dụ cụ thể để minh họa cho điều đang nói.
<br>──────────<br><b>Ý nghĩa:</b> Ví dụ như..., chẳng hạn như...
<br>──────────<br><b>Chú ý:</b> Là một từ nối rất phổ biến.
<br>──────────<br><b>Ví dụ:</b>
<br>日本には美しい都市がたくさんあります。例えば、京都や奈良などです。<br>→ (Nhật Bản có rất nhiều thành phố đẹp. Ví dụ như Kyoto hay Nara.)
<br><br>好きな果物はたくさんあります。例えば、りんご、バナナ、みかんです。<br>→ (Tôi thích rất nhiều loại trái cây. Chẳng hạn như táo, chuối, quýt.)
<br>──────────<br><b>Ngữ pháp tương tự:</b><br>
～ような (<b>N4</b>): Như là... (dùng để bổ nghĩa danh từ).
<br><br>～とか (<b>N4</b>): Hoặc là..., như là...') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('123.  たって  - Ngay cả khi; mặc dù; dù thế nào đi nữa ~', 'Common', '     <b>Công thức:</b> V-たって / Adj-くたって / N/Adj-な +  だって
<br>──────────<br><b>Cách dùng:</b> Là dạng văn nói, thân mật của  ～ても /  ～でも. Diễn tả ý nghĩa "dù... thì cũng...".
<br>──────────<br><b>Ý nghĩa:</b> Dù... thì cũng...
<br>──────────<br><b>Chú ý:</b> Chỉ dùng trong văn nói thân mật.
<br>──────────<br><b>Ví dụ:</b>
<br>今から急いだって、もう間に合わないよ。<br>→ (Bây giờ dù có vội thì cũng không kịp nữa đâu.)
<br><br>嫌いだったって、食べなければならない。<br>→ (Dù ghét thì cũng phải ăn.)
<br>──────────<br><b>Ngữ pháp tương tự:</b><br>
～ても /  ～でも (<b>N4</b>): Dù... thì cũng... (phổ biến, lịch sự hơn).
<br><br>～にしても (<b>N3</b>): Dù... thì cũng...') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('124.  てばかりいる  - Chỉ; không gì khác ngoài ~', 'Common', '     <b>Công thức:</b> V-て +  ばかりいる
<br>──────────<br><b>Cách dùng:</b> Diễn tả rằng ai đó chỉ làm đi làm lại một hành động nào đó, thường mang sắc thái phàn nàn, chỉ trích hoặc không hài lòng.
<br>──────────<br><b>Ý nghĩa:</b> Cứ ... suốt, chỉ toàn là...
<br>──────────<br><b>Chú ý:</b> Mang hàm ý tiêu cực, chỉ sự lặp lại quá nhiều.
<br>──────────<br><b>Ví dụ:</b>
<br>彼は寝てばかりいる。<br>→ (Anh ta cứ ngủ suốt.)
<br><br>ゲームをしてばかりいないで、勉強しなさい。<br>→ (Đừng có chơi game suốt
nữa, học đi!)
<br>──────────<br><b>Ngữ pháp tương tự:</b><br>
～ばかり (<b>N4</b>): Chỉ... (có thể dùng với N, V-る...).
<br><br>～だけ (<b>N5</b>): Chỉ...') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('125.  てごらん  /  てごらんなさい  - (Hãy) thử; (hãy) nhìn', 'Common', '     <b>Công thức:</b> V-て +  ごらん /  ごらんなさい
<br>──────────<br><b>Cách dùng:</b> Là một dạng mệnh lệnh hoặc gợi ý nhẹ nhàng, thường được dùng bởi người lớn (bố mẹ, thầy cô) nói với trẻ em hoặc người dưới, có nghĩa là "hãy thử làm...".
<br>──────────<br><b>Ý nghĩa:</b> Hãy thử... xem.
<br>──────────<br><b>Chú ý:</b>  ごらんなさい lịch sự hơn  ごらん. Không dùng với người trên.
<br>──────────<br><b>Ví dụ:</b>
<br>分からなかったら、先生に聞いてごらん。<br>→ (Nếu không hiểu thì hãy thử hỏi thầy xem.)
<br><br>ほら、きれいな花が咲いてごらん。<br>→ (Này, nhìn hoa đẹp nở kìa.)
<br>──────────<br><b>Ngữ pháp tương tự:</b><br>
～てみなさい (<b>N3/N2</b>): Hãy thử làm xem (mạnh hơn một chút).
<br><br>～てみてください (<b>N4</b>): Xin hãy thử làm xem (lịch sự).
<br><br>～てください (<b>N5</b>): Xin hãy...') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('126.  てはじめて  - Mãi cho đến khi; chỉ sau khi [x] tôi mới ~', 'Common', '     <b>Công thức:</b> V-て +  はじめて
<br>──────────<br><b>Cách dùng:</b> Nhấn mạnh rằng chỉ sau khi trải qua hành động V, người nói mới nhận ra, hiểu ra hoặc có được một kinh nghiệm nào đó lần đầu tiên.
<br>──────────<br><b>Ý nghĩa:</b> Chỉ sau khi... thì mới...
<br>──────────<br><b>Chú ý:</b> Nhấn mạnh sự nhận thức/kinh nghiệm có được sau một sự kiện.
<br>──────────<br><b>Ví dụ:</b>
<br>日本に来てはじめて、寿司を食べました。<br>→ (Chỉ sau khi đến Nhật tôi mới ăn sushi lần đầu.)
<br><br>病気になってはじめて、健康のありがたみが分かった。<br>→ (Chỉ sau khi bị bệnh tôi mới hiểu được sự quý giá của sức khỏe.)
<br>──────────<br><b>Ngữ pháp tương tự:</b><br>
～てから (<b>N5</b>): Sau khi...
<br><br>～後で (<b>N5</b>): Sau khi...') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('127.  てからでないと  /  てからでなければ  - Phải làm trước; không thể làm nếu không
làm trước ~', 'Common', '     <b>Công thức:</b> V-て +  からでないと /  からでなければ + V-ない /  できない /  難
しい...
<br>──────────<br><b>Cách dùng:</b> Diễn tả rằng hành động ở vế sau không thể thực hiện được nếu hành động ở vế trước chưa được hoàn thành.
<br>──────────<br><b>Ý nghĩa:</b> Nếu chưa... thì không thể...
<br>──────────<br><b>Chú ý:</b> Vế sau luôn ở dạng phủ định hoặc diễn tả sự khó khăn.
<br>──────────<br><b>Ví dụ:</b>
<br>宿題をしてからでないと、遊びに行けません。<br>→ (Nếu chưa làm xong bài tập thì không thể đi chơi được.)
<br><br>よく考えてからでなければ、返事はできない。<br>→ (Nếu chưa suy nghĩ kỹ thì không thể trả lời được.)
<br>──────────<br><b>Ngữ pháp tương tự:</b><br>
～てから (<b>N5</b>): Sau khi...
<br><br>～ないと (<b>N3</b>): Phải...') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('128.  てしょうがない・てしかたがない  - Không thể không; rất; cực kỳ ~', 'Common', '     <b>Công thức:</b> V-て / Adj-くて / Adj-な +  で +  しょうがない /  しかたがない
<br>──────────<br><b>Cách dùng:</b> Dùng để diễn tả một cảm xúc, trạng thái hoặc mong muốn mạnh mẽ đến mức không thể kiềm chế hay kiểm soát được.
<br>──────────<br><b>Ý nghĩa:</b> Rất..., cực kỳ..., không chịu được...
<br>──────────<br><b>Chú ý:</b> Thường dùng cho cảm xúc, cảm giác tự nhiên.  しょうがない thân mật hơn.
<br>──────────<br><b>Ví dụ:</b>
<br>嬉しくてしょうがない。<br>→ (Tôi vui không chịu được.)
<br><br>眠くてしかたがない。<br>→ (Tôi buồn ngủ không chịu được.)
<br><br>会いたくてしょうがない。<br>→ (Tôi muốn gặp không chịu được.)
<br>──────────<br><b>Ngữ pháp tương tự:</b><br>
～てたまらない (<b>N3</b>): ... không chịu được (tương tự, nhấn mạnh cảm giác).
<br><br>とても (<b>N5</b>): Rất.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('129.  て済む  (てすむ) - Đủ bằng cách ~; giải quyết bằng cách ~', 'Common', '     <b>Công thức:</b> V-て +  済む / N +  で +  済む
<br>──────────<br><b>Cách dùng:</b> Diễn tả rằng một vấn đề có thể được giải quyết hoặc chỉ cần/đủ bằng cách làm V hoặc chỉ cần N, không cần đến những biện pháp phức tạp hay tốn kém hơn. Thường dùng ở dạng phủ định (～ないで済む - không cần làm cũng xong) hoặc với  だけ (～だけで済む - chỉ cần... là xong).
<br>──────────<br><b>Ý nghĩa:</b> Chỉ cần... là xong / Không cần... cũng xong.
<br>──────────<br><b>Chú ý:</b> Nhấn mạnh sự đơn giản hoặc tiết kiệm (thời gian, tiền bạc, công sức).
<br>──────────<br><b>Ví dụ:</b>
<br>謝るだけで済む問題ではない。<br>→ (Đây không phải là vấn đề chỉ cần xin lỗi là xong.)
<br><br>軽い怪我だったので、病院に行かないで済んだ。<br>→ (Vì là vết thương nhẹ nên không cần đến bệnh viện cũng xong.)
<br>──────────<br><b>Ngữ pháp tương tự:</b><br>
～だけでいい (<b>N5</b>): Chỉ cần... là đủ.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('130.  てはいけないから  - Để không ~; Vì không được ~', 'Common', '     <b>Công thức:</b> V-ては +  いけない /  ならない +  から
<br>──────────<br><b>Cách dùng:</b> Dùng để giải thích lý do cho một hành động hoặc một lời khuyên, trong đó lý do là "vì không được phép" hoặc "vì sẽ gây ra hậu quả xấu" nếu làm V.
<br>──────────<br><b>Ý nghĩa:</b> Vì không được...
<br>──────────<br><b>Chú ý:</b> Đây là sự kết hợp của  ～てはいけない (N5 - Cấm đoán) và  から (N5 - Vì).
<br>──────────<br><b>Ví dụ:</b>
<br>危ないから、入ってはいけないから、柵があります。<br>→ (Vì nguy hiểm, và vì không được vào, nên có hàng rào.)
<br><br>大事な試験だから、遅刻してはいけないから、早く寝ます。<br>→ (Vì là kỳ thi quan trọng, và vì không được đi muộn, nên tôi sẽ ngủ sớm.)
<br>──────────<br><b>Ngữ pháp tương tự:</b><br>
～ないように (<b>N4</b>): Để không... (chỉ mục đích).
<br><br>～てはいけない (<b>N5</b>): Không được...') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('131.  ている場合じゃない  (ているばあいじゃない) - Đây không phải là lúc để làm ~', 'Common', '     <b>Công thức:</b> V-ている +  場合ではない /  場合じゃない
<br>──────────<br><b>Cách dùng:</b> Diễn tả rằng tình hình hiện tại đang rất cấp bách, nghiêm trọng hoặc không phù hợp để thực hiện hành động V.
<br>──────────<br><b>Ý nghĩa:</b> Không phải lúc để...
<br>──────────<br><b>Chú ý:</b> Thể hiện sự không phù hợp về mặt thời điểm/tình huống.
<br>──────────<br><b>Ví dụ:</b>
<br>地震だ！のんびりしている場合じゃない。早く逃げろ！(Động đất kìa! Đây không phải là lúc để thong thả. Nhanh chạy đi!)
<br><br>もうすぐ試験なのに、遊んでいる場合じゃないよ。<br>→ (Sắp thi đến nơi rồi, đây không phải là lúc để chơi đâu.)
<br>──────────<br><b>Ngữ pháp tương tự:</b><br>
～場合ではない (<b>N4</b>): Không phải là trường hợp...') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('132.  的  (てき) - Mang tính ~; Thuộc về ~', 'Common', '     <b>Công thức:</b> N +  的 (てき) +  な + N / N +  的 (てき) +  に + V/Adj
<br>──────────<br><b>Cách dùng:</b> Là một hậu tố, thêm vào sau danh từ (thường là danh từ gốc Hán) để biến danh từ đó thành:
<br><br>Tính từ  な: Khi đi với  な, nó bổ nghĩa cho danh từ, mang ý nghĩa "mang tính
chất...", "thuộc về...".
<br><br>Trạng từ: Khi đi với  に, nó bổ nghĩa cho động từ/tính từ, mang ý nghĩa "về mặt...", "một cách...".
<br>──────────<br><b>Ý nghĩa:</b> Biến danh từ thành tính từ hoặc trạng từ.
<br>──────────<br><b>Chú ý:</b> Rất hữu ích để tạo từ mới.
<br>──────────<br><b>Ví dụ:</b>
<br>彼は科学的な方法で問題を解決した。<br>→ (Anh ấy đã giải quyết vấn đề bằng phương pháp mang tính khoa học.)
<br><br>国際的に有名な歌手。<br>→ (Ca sĩ nổi tiếng mang tầm quốc tế.)
<br><br>個人的には、私はその意見に賛成です。<br>→ (Về mặt cá nhân thì tôi đồng ý
với ý kiến đó.)
<br>──────────<br><b>Ngữ pháp tương tự:</b><br>
～らしい (<b>N4</b>): Ra dáng..., đúng kiểu...
<br><br>～っぽい (<b>N3</b>): Trông như..., có vẻ...
<br><br>～のような (<b>N4</b>): Giống như...') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('133.  ても始まらない  (てもはじまらない) - Dù có ~ cũng vô ích; không có ích gì ~', 'Common', '     <b>Công thức:</b> V-ても +  始まらない (はじまらない)
<br>──────────<br><b>Cách dùng:</b> Diễn tả rằng dù có làm hành động V (thường là than vãn, hối tiếc, lo lắng), thì cũng chẳng giải quyết được gì, chẳng có gì bắt đầu hay thay đổi được, tức là vô ích.
<br>──────────<br><b>Ý nghĩa:</b> Dù có... cũng chẳng được gì.
<br>──────────<br><b>Chú ý:</b> Nhấn mạnh sự vô ích của việc làm gì đó sau khi sự việc đã xảy ra hoặc không thể thay đổi.
<br>──────────<br><b>Ví dụ:</b>
<br>終わったことを今さら悔やんでも始まらない。<br>→ (Việc đã qua rồi, bây giờ có hối hận cũng chẳng được gì.)
<br><br>心配しても始まらない。まずは行動しよう。<br>→ (Có lo lắng cũng vô ích. Trước hết hãy hành động đi.)
<br>──────────<br><b>Ngữ pháp tương tự:</b><br>
～ても無駄だ (N3/N4): Dù có... cũng vô ích.
<br><br>～てもしょうがない (<b>N3</b>): Dù có... cũng chẳng làm được gì.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('134.  ても構わない  (てもかまわない) - Không sao nếu ~; Không phiền nếu ~', 'Common', '     <b>Công thức:</b> V-ても / Adj-くても / N/Adj-な +  でも +  構わない (かまわない)
<br>──────────<br><b>Cách dùng:</b> Dùng để cho phép ai đó làm gì, diễn tả rằng việc đó không thành vấn đề, không gây phiền hà. Lịch sự và mềm mại hơn  ～てもいい.
<br>──────────<br><b>Ý nghĩa:</b> ... cũng không sao / ... cũng được.
<br>──────────<br><b>Chú ý:</b>  構わない có nghĩa là "không bận tâm, không phiền".
<br>──────────<br><b>Ví dụ:</b>
<br>もし都合が悪ければ、明日来ても構いません。<br>→ (Nếu không tiện thì ngày mai bạn đến cũng không sao ạ.)
<br><br>ここに座っても構いませんか。<br>→ (Tôi ngồi đây có được không ạ?)
<br>──────────<br><b>Ngữ pháp tương tự:</b><br>
～てもいい (<b>N4</b>): ... cũng được (phổ biến nhất).
<br><br>～ても大丈夫だ (<b>N4</b>): ... cũng không sao.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('135.  てもしょうがない  /  てもしかたがない  - Vô ích ~; không có ích gì ~; không thể
làm gì khác', 'Common', '     <b>Công thức:</b> V-ても +  しょうがない /  しかたがない
<br>──────────<br><b>Cách dùng:</b> Tương tự  ～ても始まらない, diễn tả rằng dù có làm V thì cũng vô ích, không mang lại kết quả gì, hoặc không thể thay đổi được tình hình.
<br>──────────<br><b>Ý nghĩa:</b> Dù có... cũng chẳng được gì / cũng đành chịu.
<br>──────────<br><b>Chú ý:</b>  しかたがない trang trọng hơn  しょうがない.
<br>──────────<br><b>Ví dụ:</b>
<br>今更急いでもしょうがない。もう間に合わない。<br>→ (Bây giờ có vội cũng chẳng được gì. Đã không kịp nữa rồi.)
<br><br>済んでしまったことは、悔やんでもしかたがない。<br>→ (Việc đã qua rồi, có hối tiếc cũng đành chịu.)
<br>──────────<br><b>Ngữ pháp tương tự:</b><br>
～ても無駄だ (N3/N4): Dù có... cũng vô ích.
<br><br>～ても始まらない (<b>N3</b>): Dù có... cũng chẳng được gì.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('136.  と言えば  (といえば) - Nói đến; khi bạn nói về; nếu là trường hợp ~', 'Common', '     <b>Công thức:</b> N / V/Adj/N-thể thường +  と言えば
<br>──────────<br><b>Cách dùng:</b> Dùng để lấy một từ hoặc chủ đề vừa được nhắc đến trong cuộc hội thoại để đưa ra một ý nghĩ, liên tưởng hoặc thông tin liên quan.
<br>──────────<br><b>Ý nghĩa:</b> Nhắc đến... thì... / Nói về... thì...
<br>──────────<br><b>Chú ý:</b> Dùng để phát triển câu chuyện dựa trên một từ khóa.
<br>──────────<br><b>Ví dụ:</b>
<br>A:  来週、京都へ行きます。<br>→ (Tuần sau tôi đi Kyoto.) <br> B:  京都と言えば、
紅葉の季節ですね。<br>→ (Nhắc đến Kyoto thì là mùa lá đỏ nhỉ.)
<br><br>日本料理と言えば、やはり寿司でしょう。<br>→ (Nói về món ăn Nhật thì chắc chắn là sushi rồi.)
<br>──────────<br><b>Ngữ pháp tương tự:</b><br>
～というと (<b>N3</b>): Nói đến... (thường để hỏi xác nhận hoặc đưa ra liên tưởng tức thì).
<br><br>～について (<b>N4</b>): Về...') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('137.  といい  /  たらいい  - Sẽ tốt nếu; nên; tôi hy vọng ~', 'Common', '     <b>Công thức:</b> V-thể thường +  といい (のに /  なあ) / V-たら +  いい (のに /  なあ)
<br>──────────<br><b>Cách dùng:</b> Dùng để diễn tả mong muốn, hy vọng của người nói (cho bản thân hoặc người khác). Cũng có thể dùng để đưa ra gợi ý nhẹ nhàng.
<br>──────────<br><b>Ý nghĩa:</b> Ước gì..., giá mà..., nên...
<br>──────────<br><b>Chú ý:</b> Khi đi với  のに/なあ thường thể hiện sự tiếc nuối hoặc mong ước mạnh mẽ.
<br>──────────<br><b>Ví dụ:</b>
<br>明日、晴れるといいな。<br>→ (Ước gì ngày mai trời nắng nhỉ.)
<br><br>もっと早く着いたらいいのに。<br>→ (Giá mà đến sớm hơn thì tốt.)
<br><br>疲れたら、少し休むといい。<br>→ (Nếu mệt thì nên nghỉ một chút.)
<br>──────────<br><b>Ngữ pháp tương tự:</b><br>
～ばいい (<b>N3</b>): Nên... / Giá mà...
<br><br>～たい (<b>N5</b>): Muốn...
<br><br>～てほしい (<b>N4</b>): Muốn ai đó làm...') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('138.  といっても  - Mặc dù nói là; tuy nói là ~', 'Common', '     <b>Công thức:</b> N / V/Adj-thể thường +  といっても
<br>──────────<br><b>Cách dùng:</b> Dùng để bổ sung, điều chỉnh hoặc làm rõ một phát biểu đã đưa ra trước đó, thường là để nói rằng mức độ không cao hoặc phạm vi không rộng như người nghe có thể hình dung.
<br>──────────<br><b>Ý nghĩa:</b> Tuy nói là... nhưng thực ra...
<br>──────────<br><b>Chú ý:</b> Dùng để đính chính, làm giảm nhẹ ý nghĩa của vế trước.
<br>──────────<br><b>Ví dụ:</b>
<br>日本料理が好きだといっても、寿司しか食べられません。<br>→ (Tuy nói là thích món Nhật nhưng tôi chỉ ăn được sushi thôi.)
<br><br>彼は社長だといっても、社員は３人だけです。<br>→ (Tuy nói anh ấy là giám đốc nhưng nhân viên chỉ có 3 người.)
<br>──────────<br><b>Ngữ pháp tương tự:</b><br>
～けれど (<b>N4</b>): Nhưng...
<br><br>～のに (<b>N4</b>): Mặc dù...') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('139.  ということだ  - Tôi nghe nói; có nghĩa là; nói cách khác ~', 'Common', '     <b>Công thức:</b> V/Adj/N-thể thường +  ということだ
<br>──────────<br><b>Cách dùng:</b>
<br>Nghĩa 1 (Truyền đạt): Dùng để truyền đạt lại thông tin nghe được. (Tương tự
～そうだ).
<br><br>Nghĩa 2 (Giải thích/Kết luận): Dùng để giải thích ý nghĩa hoặc đưa ra kết luận từ một sự việc. (Tương tự  つまり).
<br>──────────<br><b>Ý nghĩa:</b> Nghe nói là... / Có nghĩa là...
<br>──────────<br><b>Chú ý:</b> Trang trọng hơn  ～んだって.
<br>──────────<br><b>Ví dụ:</b>
<br>天気予報によると、明日は雨が降るということだ。<br>→ (Theo dự báo thời tiết, nghe nói ngày mai trời sẽ mưa.)
<br><br>試験の結果が悪いということは、もっと勉強しなければならないということだ。<br>→ (Kết quả thi kém, điều đó có nghĩa là phải học nhiều hơn nữa.)
<br>──────────<br><b>Ngữ pháp tương tự:</b><br>
～そうだ (<b>N4</b>): Nghe nói là...
<br><br>～んだって (<b>N3</b>): Nghe nói là... (văn nói).
<br><br>つまり (<b>N3</b>): Tức là...') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('140.  というのは  - Điều này có nghĩa là; ý nghĩa của… là; bởi vì; tức là ~', 'Common', '     <b>Công thức:</b> N / Cụm từ +  というのは + Định nghĩa / Giải thích +  ということだ /
からだ.
<br>──────────<br><b>Cách dùng:</b> Dùng để đưa ra một định nghĩa, giải thích ý nghĩa của một từ ngữ hoặc một sự việc.
<br>──────────<br><b>Ý nghĩa:</b> ... có nghĩa là... / ... là vì...
<br>──────────<br><b>Chú ý:</b> Thường dùng để giải thích thuật ngữ hoặc làm rõ ý.
<br>──────────<br><b>Ví dụ:</b>
<br>「立ち入り禁止」というのは、入ってはいけないという意味です。
(“Tachi-iri kinshi” có nghĩa là không được vào.)
<br><br>彼が来ないというのは、何か理由があるのだろう。<br>→ (Việc anh ấy không đến, tức là có lý do gì đó chăng.)
<br>──────────<br><b>Ngữ pháp tương tự:</b><br>
～は (<b>N5</b>): Là (định nghĩa cơ bản).
<br><br>つまり (<b>N3</b>): Tức là...') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('141.  と言うと  (というと) - Nói đến; khi bạn nói về ~', 'Common', '     <b>Công thức:</b> N / Cụm từ +  と言うと
<br>──────────<br><b>Cách dùng:</b> Tương tự  ～と言えば, dùng để lấy một từ/chủ đề làm điểm xuất phát:
<br><br>Đưa ra liên tưởng tức thì, phổ biến nhất.
<br><br>Hỏi lại để xác nhận ý người nói.
<br>──────────<br><b>Ý nghĩa:</b> Nói đến... thì... / Ý bạn là...?
<br>──────────<br><b>Chú ý:</b> Thường dùng cho những liên tưởng rất phổ biến hoặc để xác nhận.
<br>──────────<br><b>Ví dụ:</b>
<br>日本の食べ物と言うと、まず寿司が思い浮かびます。<br>→ (Nói đến đồ ăn Nhật thì trước hết tôi nghĩ đến sushi.)
<br><br>A:  明日、山田さんが来ます。<br>→ (Mai anh Yamada sẽ đến.) <br> B:  山田さんというと、あの背が高い人ですか。<br>→ (Nói đến anh Yamada, ý bạn là người cao cao đó à?)
<br>──────────<br><b>Ngữ pháp tương tự:</b><br>
～と言えば (<b>N3</b>): Nói đến... (phạm vi rộng hơn).') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('142.  というより  - Hơn là ~', 'Common', '     <b>Công thức:</b> A +  というより + B
<br>──────────<br><b>Cách dùng:</b> Dùng khi muốn nói rằng cách diễn đạt B phù hợp hơn, chính xác hơn so với cách diễn đạt A.
<br>──────────<br><b>Ý nghĩa:</b> Nói là B thì đúng hơn là A.
<br>──────────<br><b>Chú ý:</b> Dùng để sửa lại hoặc đưa ra cách nói thích hợp hơn.
<br>──────────<br><b>Ví dụ:</b>
<br>この部屋は涼しいというより寒いくらいだ。<br>→ (Căn phòng này nói là mát thì đúng hơn là lạnh.)
<br><br>彼は学者というより、むしろ小説家だ。<br>→ (Anh ta nói là học giả thì đúng hơn là một tiểu thuyết gia.)
<br>──────────<br><b>Ngữ pháp tương tự:</b><br>
むしろ (<b>N3</b>): Đúng hơn là..., thà... còn hơn.
<br><br>～より (<b>N5</b>): Hơn là (so sánh cơ bản).') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('143.  とみえる  /  とみえて  - Có vẻ như ~', 'Common', '     <b>Công thức:</b> V/Adj/N-thể thường +  とみえる /  とみえて
<br>──────────<br><b>Cách dùng:</b> Dùng để diễn tả sự phán đoán của người nói dựa trên những gì quan sát được từ bên ngoài (hành động, dáng vẻ, tình hình).
<br>──────────<br><b>Ý nghĩa:</b> Trông có vẻ là..., dường như là...
<br>──────────<br><b>Chú ý:</b> Thường dùng khi phán đoán về người khác.  とみえて có thể đứng giữa câu.
<br>──────────<br><b>Ví dụ:</b>
<br>彼は疲れているとみえる。顔色が悪い。<br>→ (Anh ấy trông có vẻ mệt. Sắc mặt kém.)
<br><br>雨が降ったとみえて、道が濡れている。<br>→ (Trông có vẻ như trời đã mưa, đường sá ướt hết.)
<br>──────────<br><b>Ngữ pháp tương tự:</b><br>
～ようだ (<b>N4</b>): Hình như (phán đoán chung).
<br><br>～そうだ (<b>N4</b>): Trông có vẻ (dựa trên quan sát trực tiếp).
<br><br>～らしい (<b>N4</b>): Có vẻ là (dựa trên thông tin nghe được hoặc đặc tính).') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('144.  とすれば・としたら・とすると  - Trong trường hợp ~; giả sử ~; nếu A thì B', 'Common', '     <b>Công thức:</b> V/Adj/N-thể thường +  とすれば /  としたら /  とすると
<br>──────────<br><b>Cách dùng:</b> Dùng để đưa ra một giả định hoặc một tình huống giả định, rồi dựa vào đó để suy luận, phán đoán hoặc nêu lên hành động tiếp theo.
<br>──────────<br><b>Ý nghĩa:</b> Nếu giả sử là..., nếu là trường hợp...
<br>──────────<br><b>Chú ý:</b> Mang tính giả định mạnh.  としたら thường dùng trong văn nói,  とすれば/とすると trang trọng hơn.
<br>──────────<br><b>Ví dụ:</b>
<br>もし留学するとしたら、どの国へ行きたいですか。<br>→ (Nếu giả sử đi du học thì bạn muốn đi nước nào?)
<br><br>それが本当だとすれば、大変なことになる。<br>→ (Nếu đó là sự thật thì sẽ thành chuyện lớn đấy.)
<br>──────────<br><b>Ngữ pháp tương tự:</b><br>
～ば (<b>N4</b>): Nếu...
<br><br>～たら (<b>N4</b>): Nếu...
<br><br>～なら (<b>N4</b>): Nếu... (dựa trên thông tin có sẵn).') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('145.  と共に  (とともに) - Cùng với; đồng thời với; cũng như ~', 'Common', '     <b>Công thức:</b> N +  と共に / V-る +  と共に
<br>──────────<br><b>Cách dùng:</b>
<br>Nghĩa 1: Cùng với... (Tương tự  と一緒に).
<br><br>Nghĩa 2: Cùng lúc với..., đồng thời với... (Khi A thay đổi thì B cũng thay đổi theo).
<br>──────────<br><b>Ý nghĩa:</b> Cùng với... / Đồng thời...
<br>──────────<br><b>Chú ý:</b> Trang trọng hơn  と一緒に.
<br>──────────<br><b>Ví dụ:</b>
<br>家族と共に日本へ来た。<br>→ (Tôi đã đến Nhật cùng với gia đình.) - Nghĩa 1
<br><br>年を取ると共に、記憶力が悪くなる。<br>→ (Cùng với việc có tuổi, trí nhớ cũng
kém đi.) - Nghĩa 2
<br>──────────<br><b>Ngữ pháp tương tự:</b><br>
と一緒に (<b>N5</b>): Cùng với (Nghĩa 1).
<br><br>～につれて (<b>N3</b>): Cùng với (Nghĩa 2).
<br><br>～にしたがって (<b>N3</b>): Cùng với (Nghĩa 2).') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('146.  途中で  /  途中に  (とちゅうで  /  とちゅうに) - Trên đường; giữa chừng ~', 'Common', '     <b>Công thức:</b> N +  の +  途中で /  途中に; V-る +  途中で /  途中に
<br>──────────<br><b>Cách dùng:</b> Diễn tả một địa điểm hoặc thời điểm "đang trên đường" đi đâu đó hoặc "đang giữa chừng" làm việc gì đó.
<br><br>途中で: Thường chỉ hành động xảy ra tại điểm đó.
<br><br>途中に: Thường chỉ sự tồn tại tại điểm đó.
<br>──────────<br><b>Ý nghĩa:</b> Giữa chừng..., đang trên đường...
<br>──────────<br><b>Chú ý:</b> Rất phổ biến.
<br>──────────<br><b>Ví dụ:</b>
<br>学校へ来る途中で、友達に会いました。<br>→ (Trên đường đến trường, tôi đã gặp bạn.)
<br><br>マラソンの途中で、気分が悪くなった。<br>→ (Giữa chừng cuộc thi marathon, tôi cảm thấy không khỏe.)
<br><br>駅へ行く途中に、コンビニがあります。<br>→ (Trên đường đến ga có cửa hàng tiện lợi.)
<br>──────────<br><b>Ngữ pháp tương tự:</b><br>
～最中に (<b>N3</b>): Đúng vào lúc... (thường bị gián đoạn).
<br><br>～間に (<b>N4</b>): Trong lúc...') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('147.  ところで  - Nhân tiện ~', 'Common', '     <b>Công thức:</b>  ところで、+ Câu.
<br>──────────<br><b>Cách dùng:</b> Là một liên từ, dùng để chuyển chủ đề câu chuyện một cách đột ngột sang một chủ đề khác không liên quan hoặc ít liên quan.
<br>──────────<br><b>Ý nghĩa:</b> Nhân tiện..., à này...
<br>──────────<br><b>Chú ý:</b> Dùng để đổi đề tài.
<br>──────────<br><b>Ví dụ:</b>
<br>今日の会議はこれで終わります。ところで、来週のパーティーはどうしますか。<br>→ (Cuộc họp hôm nay kết thúc ở đây. Nhân tiện, bữa tiệc tuần sau thì sao nhỉ?)
<br><br>彼は元気そうだね。ところで、山田さんは最近どうしてる？(Anh ấy trông khỏe nhỉ. À này, dạo này anh Yamada thế nào?)
<br>──────────<br><b>Ngữ pháp tương tự:</b><br>
さて (<b>N3</b>): Nào, bây giờ (chuyển đề tài ít đột ngột hơn).
<br><br>では (<b>N5</b>): Vậy thì.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('148.  ところが  - Mặc dù vậy; tuy nhiên; mặc dù ~', 'Common', '     <b>Công thức:</b> Câu 1 +  ところが + Câu 2
<br>──────────<br><b>Cách dùng:</b> Là một liên từ, dùng để nối hai câu, trong đó vế sau (Câu 2) thể hiện một kết quả hoặc sự việc bất ngờ, trái ngược hoàn toàn với những gì được dự đoán hoặc mong đợi từ vế trước (Câu 1).
<br>──────────<br><b>Ý nghĩa:</b> Nhưng..., tuy nhiên..., thế nhưng... (chỉ sự bất ngờ).
<br>──────────<br><b>Chú ý:</b> Luôn thể hiện sự bất ngờ, trái với dự đoán.
<br>──────────<br><b>Ví dụ:</b>
<br>彼は勉強しなかった。ところが、試験に合格した。<br>→ (Cậu ta chẳng học hành gì. Thế nhưng lại đỗ kỳ thi.)
<br><br>絶対に間に合うと思った。ところが、電車が遅れて遅刻してしまった
。<br>→ (Tôi đã nghĩ là tuyệt đối sẽ kịp. Tuy nhiên, tàu bị trễ nên tôi đã đi muộn.)
<br>──────────<br><b>Ngữ pháp tương tự:</b><br>
～のに (<b>N4</b>): Mặc dù...
<br><br>～けれど (<b>N4</b>): Nhưng...
<br><br>しかし (<b>N4</b>): Tuy nhiên (trang trọng).') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('149.  とおりに  - Theo cách ~; như ~', 'Common', '     <b>Công thức:</b> N +  の +  とおりに / V-る / V-た +  とおりに
<br>──────────<br><b>Cách dùng:</b> Diễn tả rằng một hành động được thực hiện đúng y như, theo đúng như một chỉ thị, kế hoạch, suy nghĩ, hoặc một hành động khác đã diễn ra.
<br>──────────<br><b>Ý nghĩa:</b> Theo như..., đúng như...
<br>──────────<br><b>Chú ý:</b> Có thể dùng  とおりだ ở cuối câu.
<br>──────────<br><b>Ví dụ:</b>
<br>私が言ったとおりに、書いてください。<br>→ (Hãy viết theo đúng như những gì tôi đã nói.)
<br><br>説明書のとおりに、組み立てた。<br>→ (Tôi đã lắp ráp theo đúng như sách hướng dẫn.)
<br><br>予想したとおりに、彼は来た。<br>→ (Đúng như tôi dự đoán, anh ấy đã đến.)
<br>──────────<br><b>Ngữ pháp tương tự:</b><br>
～ように (<b>N4</b>): Theo như..., giống như... (ít nhấn mạnh sự chính xác hơn).
<br><br>～ままに (<b>N4</b>): Cứ để nguyên như...') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('150.  通す  (とおす) - Làm cho đến cuối; tiếp tục làm; qua ~', 'Common', '     <b>Công thức:</b> V-ます (bỏ  ます) +  通す
<br>──────────<br><b>Cách dùng:</b>
<br>Nghĩa 1: Diễn tả việc làm một hành động từ đầu đến cuối một cách trọn vẹn.
<br><br>Nghĩa 2: Diễn tả việc giữ vững, tiếp tục một hành động hoặc trạng thái mà không bỏ cuộc.
<br>──────────<br><b>Ý nghĩa:</b> ... suốt, ... đến cùng.
<br>──────────<br><b>Chú ý:</b> Có thể dùng với  を通して (N3 - thông qua).
<br>──────────<br><b>Ví dụ:</b>
<br>彼はその本を一日で読み通した。<br>→ (Anh ấy đã đọc suốt quyển sách đó trong một ngày.) - Nghĩa 1
<br><br>困難があっても、最後までやり通すつもりだ。<br>→ (Dù có khó khăn, tôi vẫn định sẽ làm cho đến cùng.) - Nghĩa 2
<br>──────────<br><b>Ngữ pháp tương tự:</b><br>
～切る (<b>N3</b>): Làm hết, làm xong hoàn toàn.
<br><br>～続ける (<b>N4</b>): Tiếp tục làm...') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('151.  として  - Như là; với vai trò là ~', 'Common', '     <b>Công thức:</b> N +  として
<br>──────────<br><b>Cách dùng:</b> Dùng để chỉ tư cách, vai trò, lập trường, hoặc danh nghĩa của một người hoặc vật.
<br>──────────<br><b>Ý nghĩa:</b> Với tư cách là..., như là...
<br>──────────<br><b>Chú ý:</b> Chỉ vai trò hoặc danh nghĩa.
<br>──────────<br><b>Ví dụ:</b>
<br>彼は留学生として日本へ来た。<br>→ (Anh ấy đến Nhật với tư cách là một du học sinh.)
<br><br>これは薬として使われる。<br>→ (Cái này được dùng như là thuốc.)
<br><br>一人の人間として、彼の行動は許せない。<br>→ (Với tư cách là một con người,
tôi không thể tha thứ cho hành động của anh ta.)
<br>──────────<br><b>Ngữ pháp tương tự:</b><br>
～は (<b>N5</b>): Là (chỉ chủ đề, không nhấn mạnh vai trò).') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('152.  とても～ない  - Không thể nào; hầu như không ~', 'Common', '     <b>Công thức:</b>  とても + V-ない / V-れない (Thể khả năng phủ định)
<br>──────────<br><b>Cách dùng:</b> Dùng để nhấn mạnh rằng một hành động nào đó là hoàn toàn không thể thực hiện được, vượt quá khả năng.
<br>──────────<br><b>Ý nghĩa:</b> Không thể nào..., không tài nào...
<br>──────────<br><b>Chú ý:</b> Nhấn mạnh sự bất khả thi.
<br>──────────<br><b>Ví dụ:</b>
<br>こんなにたくさんの料理は、一人ではとても食べられない。<br>→ (Nhiều món ăn thế này thì một mình tôi không tài nào ăn hết được.)
<br><br>1 時間でこのレポートを書くのはとてもできない。<br>→ (Viết bản báo cáo này trong 1 tiếng là không thể nào làm được.)
<br>──────────<br><b>Ngữ pháp tương tự:</b><br>
全然～ない (<b>N5</b>): Hoàn toàn không.
<br><br>決して～ない (<b>N3</b>): Tuyệt đối không.
<br><br>できない (<b>N5</b>): Không thể.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('153.  とは限らない  (とはかぎらない) - Không nhất thiết là vậy; không phải lúc nào
cũng đúng', 'Common', '     <b>Công thức:</b> V/Adj/N-thể thường +  とは限らない
<br>──────────<br><b>Cách dùng:</b> Diễn tả rằng một điều gì đó được cho là đúng, phổ biến hoặc là quy luật chung nhưng không phải lúc nào cũng áp dụng, vẫn có ngoại lệ.
<br>──────────<br><b>Ý nghĩa:</b> Không hẳn là..., không chắc là..., chưa chắc...
<br>──────────<br><b>Chú ý:</b> Dùng để chỉ ra khả năng có ngoại lệ.
<br>──────────<br><b>Ví dụ:</b>
<br>日本人だからといって、みんな寿司が好きだとは限らない。<br>→ (Dù nói là người Nhật nhưng không hẳn là ai cũng thích sushi.)
<br><br>お金持ちが必ずしも幸せだとは限らない。<br>→ (Người giàu không nhất thiết
lúc nào cũng hạnh phúc.)
<br>──────────<br><b>Ngữ pháp tương tự:</b><br>
いつも～わけではない (<b>N3</b>): Không phải lúc nào cũng...') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('154.  つい  - Vô tình; không cố ý; lỡ ~', 'Common', '     <b>Công thức:</b>  つい + V-てしまう / V-る
<br>──────────<br><b>Cách dùng:</b> Là một trạng từ, diễn tả một hành động được thực hiện một cách vô thức, không có chủ ý, thường là do thói quen, sự hấp dẫn hoặc sơ suất. Thường đi kèm với
～てしまう.
<br>──────────<br><b>Ý nghĩa:</b> Lỡ..., vô tình...
<br>──────────<br><b>Chú ý:</b> Thường đi với  ～てしまう để nhấn mạnh sự lỡ làng, nuối tiếc.
<br>──────────<br><b>Ví dụ:</b>
<br>ダイエット中なのに、ついケーキを食べてしまった。<br>→ (Đang ăn kiêng vậy mà tôi lại lỡ ăn bánh kem mất rồi.)
<br><br>秘密だと知っていたのに、つい話してしまった。<br>→ (Dù biết là bí mật nhưng tôi lại lỡ nói ra mất.)
<br>──────────<br><b>Ngữ pháp tương tự:</b><br>
うっかり (<b>N3</b>): Lơ đãng, vô ý.
<br><br>思わず (<b>N3</b>): Bất giác, không kìm được.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('155.  ついに  - Cuối cùng; rốt cuộc ~', 'Common', '     <b>Công thức:</b>  ついに + V-た / V-なかった
<br>──────────<br><b>Cách dùng:</b> Dùng để chỉ kết quả cuối cùng sau một quá trình dài chờ đợi, nỗ lực hoặc biến đổi. Có thể là kết quả tích cực hoặc tiêu cực.
<br>──────────<br><b>Ý nghĩa:</b> Cuối cùng thì...
<br>──────────<br><b>Chú ý:</b> Nhấn mạnh kết quả cuối cùng sau một thời gian dài.
<br>──────────<br><b>Ví dụ:</b>
<br>長年の夢だった自分の店をついに持つことができた。<br>→ (Cuối cùng tôi cũng đã có được cửa hàng của riêng mình, là ước mơ bao năm qua.)
<br><br>彼は何度も挑戦したが、ついに成功しなかった。<br>→ (Anh ấy đã thử thách nhiều lần nhưng cuối cùng đã không thành công.)
<br>──────────<br><b>Ngữ pháp tương tự:</b><br>
やっと (<b>N4</b>): Cuối cùng thì (sau nỗ lực, thường kết quả tốt).
<br><br>結局 (<b>N3</b>): Rốt cuộc thì (thường chỉ kết quả sau khi cân nhắc, đôi khi không như ý).') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('156.  ついでに  - Nhân tiện; đồng thời; trên đường ~', 'Common', '     <b>Công thức:</b> N +  の +  ついでに / V-る / V-た +  ついでに
<br>──────────<br><b>Cách dùng:</b> Diễn tả việc tận dụng cơ hội khi thực hiện một hành động chính (A) để làm thêm một hành động phụ (B).
<br>──────────<br><b>Ý nghĩa:</b> Nhân tiện...
<br>──────────<br><b>Chú ý:</b> Hành động B thường có lợi và liên quan đến hành động A.
<br>──────────<br><b>Ví dụ:</b>
<br>コンビニへ行くついでに、手紙を出してくれませんか。<br>→ (Nhân tiện đi cửa hàng tiện lợi, bạn gửi giúp tôi lá thư được không?)
<br><br>散歩のついでに、牛乳を買ってきた。<br>→ (Nhân tiện đi dạo, tôi đã mua sữa về.)
<br>──────────<br><b>Ngữ pháp tương tự:</b><br>
～ながら (<b>N4</b>): Vừa... vừa... (hai hành động đồng thời).
<br><br>～とき (<b>N5</b>): Khi...') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('157.  つまり  - Nói cách khác; tóm lại; nói tóm lại ~', 'Common', '     <b>Công thức:</b> Câu 1.  つまり、Câu 2.
<br>──────────<br><b>Cách dùng:</b> Là một liên từ, dùng để tóm tắt, giải thích lại hoặc đưa ra kết luận cho những gì đã nói ở vế trước bằng một cách nói khác, dễ hiểu hơn.
<br>──────────<br><b>Ý nghĩa:</b> Tức là..., tóm lại là...
<br>──────────<br><b>Chú ý:</b> Phổ biến và hữu dụng.
<br>──────────<br><b>Ví dụ:</b>
<br>父の兄の子供、つまり私のいとこは、医者です。<br>→ (Con của anh trai bố tôi, tức là anh họ tôi, là bác sĩ.)
<br><br>彼は会議に来なかった。つまり、この計画に反対なのだろう。<br>→ (Anh ta không đến cuộc họp. Tóm lại, có lẽ anh ta phản đối kế hoạch này.)
<br>──────────<br><b>Ngữ pháp tương tự:</b><br>
すなわち (<b>N3</b>): Tức là (trang trọng hơn).') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('158.  つもりだった  - Tôi đã nghĩ ~; tôi tin rằng ~; đã định ~; đã có ý định ~', 'Common', '     <b>Công thức:</b> V-る / V-ない +  つもりだった
<br>──────────<br><b>Cách dùng:</b> Diễn tả một ý định, dự định hoặc một suy nghĩ đã có trong quá khứ, nhưng thực tế đã không xảy ra hoặc khác đi so với dự định đó.
<br>──────────<br><b>Ý nghĩa:</b> Đã định... (nhưng không làm/không thành).
<br>──────────<br><b>Chú ý:</b> Thể hiện sự khác biệt giữa dự định và thực tế.
<br>──────────<br><b>Ví dụ:</b>
<br>昨日は買い物に行くつもりだったが、雨で中止した。<br>→ (Hôm qua tôi đã định đi mua sắm nhưng vì mưa nên đã hủy.)
<br><br>彼は手伝ってくれるつもりだったらしいが、急用ができた。<br>→ (Anh ấy hình như đã định giúp nhưng lại có việc gấp.)
<br>──────────<br><b>Ngữ pháp tương tự:</b><br>
～つもりだ (<b>N4</b>): Định...
<br><br>～ようと思った (<b>N4</b>): Đã nghĩ là sẽ...') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('159.  つもりで  - Với ý định làm ~; Xem như là ~', 'Common', '     <b>Công thức:</b> V-る / V-た / N +  の +  つもりで
<br>──────────<br><b>Cách dùng:</b> Diễn tả việc làm một hành động với một ý định, cảm giác, hoặc giả định nào đó, dù thực tế có thể không hoàn toàn như vậy.
<br>──────────<br><b>Ý nghĩa:</b> Với ý định..., với cảm giác như là..., xem như là...
<br>──────────<br><b>Chú ý:</b> Thể hiện ý định hoặc giả định khi hành động.
<br>──────────<br><b>Ví dụ:</b>
<br>死んだつもりで、一生懸命働いた。<br>→ (Tôi đã làm việc hết sức mình xem như là đã chết rồi.)
<br><br>旅行に行ったつもりで、貯金しよう。<br>→ (Hãy tiết kiệm tiền xem như là đã đi du lịch.)
<br>──────────<br><b>Ngữ pháp tương tự:</b><br>
～として (<b>N3</b>): Với tư cách là...
<br><br>～のようだ (<b>N4</b>): Giống như là...') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('160.  うちに  - Trong khi; trước khi ~', 'Common', '     <b>Công thức:</b> N +  の +  うちに / V-る / V-ない / Adj-い / Adj-な +  うちに
<br>──────────<br><b>Cách dùng:</b>
<br>Nghĩa 1: Diễn tả việc cần làm một hành động nào đó (vế sau) trong khi một trạng thái nào đó (vế trước) vẫn còn, trước khi nó thay đổi.
<br><br>Nghĩa 2: Diễn tả rằng trong khi đang làm/đang ở trạng thái A thì có một sự thay đổi B xảy ra một cách tự nhiên.
<br>──────────<br><b>Ý nghĩa:</b> Trong khi... / Trước khi...
<br>──────────<br><b>Chú ý:</b> Phân biệt hai nghĩa dựa vào vế sau (có ý chí hay không).
<br>──────────<br><b>Ví dụ:</b>
<br>日本にいるうちに、一度富士山に登りたい。<br>→ (Trong khi còn ở Nhật, tôi muốn leo núi Phú Sĩ một lần.) - Nghĩa 1
<br><br>音楽を聞いているうちに、眠ってしまった。<br>→ (Trong khi đang nghe nhạc, tôi đã ngủ quên mất.) - Nghĩa 2
<br>──────────<br><b>Ngữ pháp tương tự:</b><br>
～間に (<b>N4</b>): Trong lúc (nhấn mạnh khoảng thời gian).
<br><br>～最中に (<b>N3</b>): Đúng vào lúc...') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('161.  上で  (うえで) - Khi; sau khi; để; nhằm ~', 'Common', '     <b>Công thức:</b> V-た +  上で / N +  の +  上で
<br>──────────<br><b>Cách dùng:</b>
<br>Nghĩa 1: Diễn tả hành động B được thực hiện sau khi và dựa trên kết quả của hành động A. (Sau khi...).
<br><br>Nghĩa 2: Diễn tả phạm vi, điều kiện hoặc khía cạnh liên quan đến một vấn đề. (Về mặt..., Khi...).
<br>──────────<br><b>Ý nghĩa:</b> Sau khi... / Về mặt...
<br>──────────<br><b>Chú ý:</b> Thường dùng trong bối cảnh trang trọng, công việc.
<br>──────────<br><b>Ví dụ:</b>
<br>よく考えた上で、返事をします。<br>→ (Sau khi suy nghĩ kỹ, tôi sẽ trả lời.) -
Nghĩa 1
<br><br>仕事の上で、大切なことは何ですか。<br>→ (Trong công việc, điều quan trọng là gì?) - Nghĩa 2
<br>──────────<br><b>Ngữ pháp tương tự:</b><br>
～てから (<b>N5</b>): Sau khi (phổ biến hơn).
<br><br>～ために (<b>N4</b>): Để (chỉ mục đích).') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('162.  上に  (うえに) - Hơn nữa; ngoài ra; thêm vào đó; không chỉ… mà còn ~', 'Common', '     <b>Công thức:</b> V/Adj/N-thể thường +  上に
<br>──────────<br><b>Cách dùng:</b> Dùng để bổ sung thêm một thông tin, đặc điểm nữa vào một sự việc đã nêu, và thông tin này cùng chiều hướng (cùng tốt hoặc cùng xấu) với thông tin trước.
<br>──────────<br><b>Ý nghĩa:</b> Không chỉ... mà còn..., thêm vào đó...
<br>──────────<br><b>Chú ý:</b> Dùng để thêm vào một đặc điểm cùng loại.
<br>──────────<br><b>Ví dụ:</b>
<br>このレストランは美味しい上に、値段も安い。<br>→ (Nhà hàng này không chỉ ngon mà giá còn rẻ nữa.)
<br><br>昨日は雨だった上に、風も強かった。<br>→ (Hôm qua không chỉ mưa mà gió cũng mạnh nữa.)
<br>──────────<br><b>Ngữ pháp tương tự:</b><br>
～し～し (<b>N4</b>): Vừa... vừa... (liệt kê lý do/sự thật).
<br><br>～だけでなく (<b>N3</b>): Không chỉ... mà còn...
<br><br>さらに (<b>N3</b>): Hơn nữa (trạng từ).') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('163.  は別として  (はべつとして) - Ngoại trừ; ngoài; không kể; dù có ~ hay không', 'Common', '     <b>Công thức:</b> N +  は別として
<br>──────────<br><b>Cách dùng:</b> Dùng để tách riêng một đối tượng hoặc một vấn đề ra khỏi chủ đề chính đang nói, hàm ý rằng vấn đề đó là ngoại lệ hoặc không cần bàn đến lúc này.
<br>──────────<br><b>Ý nghĩa:</b> Không nói đến..., ngoại trừ..., để ... sang một bên thì...
<br>──────────<br><b>Chú ý:</b> Dùng để nhấn mạnh rằng điều nói sau đó áp dụng cho mọi thứ khác ngoại trừ N.
<br>──────────<br><b>Ví dụ:</b>
<br>味は別として、このレストランは雰囲気がいい。<br>→ (Không bàn đến vị, nhà hàng này có không khí tốt.)
<br><br>冗談は別として、真面目に考えてください。<br>→ (Không nói chuyện đùa nữa, hãy suy nghĩ nghiêm túc đi.)
<br>──────────<br><b>Ngữ pháp tương tự:</b><br>
～はともかく (<b>N2</b>): Khoan hãy nói đến...
<br><br>～以外に (<b>N4</b>): Ngoài... ra.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('164.  はもちろん  - Chưa kể đến; không chỉ ... mà còn ~', 'Common', '     <b>Công thức:</b> N +  はもちろん
<br>──────────<br><b>Cách dùng:</b> Dùng để nói rằng điều N là đương nhiên, rõ ràng, rồi sau đó bổ sung thêm một điều khác cũng đúng (thường là ở mức độ cao hơn hoặc đáng chú ý hơn).
<br>──────────<br><b>Ý nghĩa:</b> ... thì đương nhiên rồi, ... nữa.
<br>──────────<br><b>Chú ý:</b> Tương tự  ～だけでなく nhưng nhấn mạnh hơn tính "đương nhiên" của vế đầu.
<br>──────────<br><b>Ví dụ:</b>
<br>彼は英語はもちろん、フランス語も話せる。<br>→ (Anh ấy tiếng Anh thì đương nhiên rồi, tiếng Pháp cũng nói được nữa.)
<br><br>この店は料理はもちろん、サービスも素晴らしい。<br>→ (Quán này đồ ăn thì khỏi nói rồi, dịch vụ cũng tuyệt vời.)
<br>──────────<br><b>Ngữ pháp tương tự:</b><br>
～だけでなく (<b>N3</b>): Không chỉ... mà còn...
<br><br>～ばかりでなく (<b>N3</b>): Không chỉ... mà còn...') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('165.  は～で有名  (は～でゆうめい) - Nổi tiếng về ~', 'Common', '     <b>Công thức:</b> N1 +  は + N2 +  で有名だ
<br>──────────<br><b>Cách dùng:</b> Dùng để nói rằng một người, một vật, hoặc một địa điểm nào đó (N1) nổi tiếng vì một đặc điểm, sản phẩm, hoặc sự kiện nào đó (N2).
<br>──────────<br><b>Ý nghĩa:</b> ... nổi tiếng vì ...
<br>──────────<br><b>Chú ý:</b> Đây là một cụm từ cố định, phổ biến.
<br>──────────<br><b>Ví dụ:</b>
<br>京都は古いお寺で有名だ。<br>→ (Kyoto nổi tiếng về những ngôi chùa cổ.)
<br><br>この店はラーメンで有名だ。<br>→ (Quán này nổi tiếng về món mì ramen.)
<br>──────────<br><b>Ngữ pháp tương tự:</b><br>
(Đây là một cụm từ, không có ngữ pháp tương đương trực tiếp).') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('166.  わけだ  - Vì lý do đó; thảo nào; đúng như mong đợi; sự thật là ~', 'Common', '     <b>Công thức:</b> V/Adj/N-thể thường +  わけだ
<br>──────────<br><b>Cách dùng:</b> Dùng để đưa ra một kết luận logic, một sự thật đương nhiên hoặc một lời giải thích dựa trên những thông tin đã có.
<br>──────────<br><b>Ý nghĩa:</b> Thảo nào..., hèn chi..., có nghĩa là..., đương nhiên là...
<br>──────────<br><b>Chú ý:</b> Diễn tả sự "hiểu ra", "nhận ra" một cách logic.
<br>──────────<br><b>Ví dụ:</b>
<br>彼は日本に１０年も住んでいる。日本語が上手なわけだ。<br>→ (Anh ấy sống ở Nhật 10 năm rồi. Thảo nào tiếng Nhật giỏi.)
<br><br>１０引く２は８。つまり、８足す２は１０になるわけだ。<br>→ (10 trừ 2 là 8.
Tức là, 8 cộng 2 sẽ bằng 10.)
<br>──────────<br><b>Ngữ pháp tương tự:</b><br>
～はずだ (<b>N4</b>): Chắc chắn là... (dựa trên logic).
<br><br>だから (<b>N5</b>): Vì vậy...
<br><br>なるほど (<b>N4</b>): Quả là vậy, thảo nào.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('167.  わけではない  - Không có nghĩa là; không phải là trường hợp ~', 'Common', '     <b>Công thức:</b> V/Adj/N-thể thường +  わけではない
<br>──────────<br><b>Cách dùng:</b> Dùng để phủ định một phần hoặc phủ định một suy luận/kết luận quá vội vàng, hàm ý rằng "không hẳn là...", "không phải là lúc nào cũng...".
<br>──────────<br><b>Ý nghĩa:</b> Không hẳn là..., không có nghĩa là...
<br>──────────<br><b>Chú ý:</b> Phủ định một cách nhẹ nhàng, chỉ ra rằng có thể có ngoại lệ hoặc hiểu lầm.
<br>──────────<br><b>Ví dụ:</b>
<br>嫌いだわけではないが、あまり食べたくない。<br>→ (Không hẳn là ghét, nhưng tôi không muốn ăn lắm.)
<br><br>日本人なら誰でも納豆が好きだわけではない。<br>→ (Không phải người Nhật
nào cũng thích natto.)
<br>──────────<br><b>Ngữ pháp tương tự:</b><br>
～とは限らない (<b>N3</b>): Không nhất thiết là...') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('168.  わけがない  - Không thể nào; không có khả năng ~', 'Common', '     <b>Công thức:</b> V/Adj/N-thể thường +  わけがない
<br>──────────<br><b>Cách dùng:</b> Dùng để phủ định một cách mạnh mẽ, diễn tả rằng một điều gì đó là hoàn toàn không thể xảy ra, không có lý do gì để nó xảy ra.
<br>──────────<br><b>Ý nghĩa:</b> Lẽ nào lại..., làm sao mà... được, không thể nào...
<br>──────────<br><b>Chú ý:</b> Thể hiện sự phủ định mạnh mẽ dựa trên logic hoặc tình hình.
<br>──────────<br><b>Ví dụ:</b>
<br>あんなに練習したんだから、試合に負けるわけがない。<br>→ (Đã luyện tập nhiều đến thế, không thể nào thua trận được.)
<br><br>彼がそんなことを言うわけがない。<br>→ (Anh ấy không thể nào nói những lời như vậy được.)
<br>──────────<br><b>Ngữ pháp tương tự:</b><br>
～はずがない (<b>N3</b>): Chắc chắn không...
<br><br>～ことはない (<b>N3</b>): Không có khả năng... / Không cần phải...') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('169.  わけにはいかない  - Không thể (làm); Phải (làm) ~', 'Common', '     <b>Công thức:</b>
<br>V-る +  わけにはいかない (Không thể làm V, vì lý do xã hội, đạo đức, tâm lý)
<br><br>V-ない +  わけにはいかない (Không thể không làm V, tức là phải làm V)
<br>──────────<br><b>Cách dùng:</b> Diễn tả sự khó xử, không thể làm (hoặc không thể không làm) một việc gì đó vì áp lực từ hoàn cảnh, quy tắc xã hội, hoặc tình cảm cá nhân, chứ không phải vì không có năng lực.
<br>──────────<br><b>Ý nghĩa:</b> Không thể... / Phải...
<br>──────────<br><b>Chú ý:</b> Diễn tả sự giằng xé nội tâm hoặc sự bắt buộc do hoàn cảnh.
<br>──────────<br><b>Ví dụ:</b>
<br>約束したから、行かないわけにはいかない。<br>→ (Vì đã hứa nên tôi phải đi / không thể không đi.)
<br><br>友達の頼みだから、断るわけにはいかない。<br>→ (Vì là lời nhờ của bạn bè nên tôi không thể từ chối.)
<br>──────────<br><b>Ngữ pháp tương tự:</b><br>
～なければならない (<b>N4</b>): Phải làm...
<br><br>～てはいけない (<b>N5</b>): Không được làm...') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('170.  割に  (わりに) - So với ~; đối với ~; mặc dù ~', 'Common', '     <b>Công thức:</b> V/Adj/N-thể thường +  割に（は）
<br>──────────<br><b>Cách dùng:</b> Dùng để diễn tả sự khác biệt (tốt hơn hoặc kém hơn) so với những gì người ta thường mong đợi từ một tiêu chuẩn, mức độ hoặc sự thật được nêu ở vế trước. Tương tự  ～にしては.
<br>──────────<br><b>Ý nghĩa:</b> So với... thì... (khá là...)
<br>──────────<br><b>Chú ý:</b> Thể hiện sự bất ngờ, khác biệt so với tiêu chuẩn.
<br>──────────<br><b>Ví dụ:</b>
<br>彼は年の割に若く見える。<br>→ (Anh ấy trông trẻ hơn so với tuổi.)
<br><br>このレストランは値段が高い割には、あまり美味しくない。<br>→ (Nhà hàng
này so với giá cả đắt đỏ thì không ngon lắm.)
<br>──────────<br><b>Ngữ pháp tương tự:</b><br>
～にしては (<b>N3</b>): So với... thì... (rất giống nhau).
<br><br>～のに (<b>N4</b>): Mặc dù...') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('171.  わざと  - Cố tình; cố ý ~', 'Common', '     <b>Công thức:</b>  わざと + V
<br>──────────<br><b>Cách dùng:</b> Là một trạng từ, diễn tả một hành động được thực hiện một cách có chủ đích, cố ý, thường mang hàm ý không tốt hoặc để trêu chọc.
<br>──────────<br><b>Ý nghĩa:</b> Cố tình...
<br>──────────<br><b>Chú ý:</b> Nhấn mạnh tính chủ ý của hành động.
<br>──────────<br><b>Ví dụ:</b>
<br>彼はわざと聞こえないふりをした。<br>→ (Anh ta cố tình giả vờ không nghe thấy.)
<br><br>彼女はわざとグラスを落とした。<br>→ (Cô ấy cố tình làm rơi cái ly.)
<br>──────────<br><b>Ngữ pháp tương tự:</b><br>
(Đây là trạng từ, không có ngữ pháp tương đương trực tiếp).') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('172.  わざわざ  - Cất công; mất công ~', 'Common', '     <b>Công thức:</b>  わざわざ + V
<br>──────────<br><b>Cách dùng:</b> Là một trạng từ, diễn tả việc ai đó đã bỏ ra công sức, thời gian đặc biệt để làm một việc gì đó, thường là việc không nhất thiết phải làm hoặc có thể làm đơn giản hơn. Có thể dùng để bày tỏ sự cảm kích hoặc đôi khi là sự ngạc nhiên/phàn nàn nhẹ.
<br>──────────<br><b>Ý nghĩa:</b> Cất công..., có lòng...
<br>──────────<br><b>Chú ý:</b> Thể hiện sự nỗ lực đặc biệt.
<br>──────────<br><b>Ví dụ:</b>
<br>わざわざお越しいただき、ありがとうございます。<br>→ (Cảm ơn anh đã cất công đến đây.)
<br><br>そんなことのために、わざわざ行く必要はない。<br>→ (Không cần phải cất công đi chỉ vì chuyện đó đâu.)
<br>──────────<br><b>Ngữ pháp tương tự:</b><br>
(Đây là trạng từ, không có ngữ pháp tương đương trực tiếp).') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('173.  よりも  - So với; hơn là; hơn ~', 'Common', '     <b>Công thức:</b> A +  は + B +  よりも + C
<br>──────────<br><b>Cách dùng:</b> Dùng trong câu so sánh, tương tự như  ～より nhưng nhấn mạnh hơn sự so sánh, làm nổi bật sự khác biệt.
<br>──────────<br><b>Ý nghĩa:</b> ... hơn ... (nhấn mạnh).
<br>──────────<br><b>Chú ý:</b> Mang tính nhấn mạnh hơn  ～より.
<br>──────────<br><b>Ví dụ:</b>
<br>実践は理論よりも重要だ。<br>→ (Thực hành quan trọng hơn là lý thuyết.)
<br><br>彼は私が思っていたよりもずっと若かった。<br>→ (Anh ấy trẻ hơn rất nhiều so
với tôi nghĩ.)
<br>──────────<br><b>Ngữ pháp tương tự:</b><br>
～より (<b>N5</b>): Hơn (so sánh cơ bản).
<br><br>～のほうが (<b>N4</b>): ... thì ... hơn.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('174.  ようがない  /  ようもない  - Không có cách nào để ~; không thể ~', 'Common', '     <b>Công thức:</b> V-ます (bỏ  ます) +  ようがない /  ようもない
<br>──────────<br><b>Cách dùng:</b> Diễn tả rằng không có phương tiện, cách thức, hoặc khả năng để thực hiện một hành động nào đó.
<br>──────────<br><b>Ý nghĩa:</b> Không có cách nào..., không thể nào...
<br>──────────<br><b>Chú ý:</b> Nhấn mạnh sự bất lực, không có phương pháp.
<br>──────────<br><b>Ví dụ:</b>
<br>手紙に住所が書いてなかったので、返事を出しようがない。<br>→ (Vì trên thư không ghi địa chỉ nên không có cách nào gửi thư trả lời được.)
<br><br>こんなに壊れてしまったら、直しようがない。<br>→ (Nếu hỏng đến mức này thì không có cách nào sửa được.)
<br>──────────<br><b>Ngữ pháp tương tự:</b><br>
～ことができない (<b>N4</b>): Không thể làm...
<br><br>方法がない (<b>N4/N3</b>): Không có cách/phương pháp.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('175.  ような気がする  (ようなきがする) - Có cảm giác rằng; cảm thấy như; có vẻ như;
nghĩ rằng ~', 'Common', '     <b>Công thức:</b> V/Adj/N-thể thường +  ような気がする
<br>──────────<br><b>Cách dùng:</b> Diễn tả một cảm giác, linh cảm, hoặc suy nghĩ không rõ ràng, không chắc chắn của người nói.
<br>──────────<br><b>Ý nghĩa:</b> Có cảm giác là..., hình như là...
<br>──────────<br><b>Chú ý:</b> Thể hiện sự phán đoán không chắc chắn, dựa vào cảm tính.
<br>──────────<br><b>Ví dụ:</b>
<br>誰かが後ろにいるような気がする。<br>→ (Tôi có cảm giác như ai đó đang ở phía sau.)
<br><br>この方法はあまり効果がないような気がする。<br>→ (Tôi cảm thấy hình như phương pháp này không hiệu quả lắm.)
<br>──────────<br><b>Ngữ pháp tương tự:</b><br>
～ようだ (<b>N4</b>): Hình như...
<br><br>～みたいだ (<b>N4</b>): Hình như...
<br><br>多分～だろう (<b>N5/N4</b>): Có lẽ là...') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('176.  ように  - Để; sao cho ~', 'Common', '     <b>Công thức:</b> V-る / V-ない +  ように + V2
<br>──────────<br><b>Cách dùng:</b>
<br>Nghĩa 1 (Mục đích): Diễn tả mục đích, sao cho đạt được một trạng thái hoặc khả năng nào đó. Thường đi với V2 là  言う,  頼む,  祈る,  努力する,  する...
<br><br>Nghĩa 2 (Giống như): Như đã nói/nhìn thấy... (ご覧のように - như quý vị thấy).
<br>──────────<br><b>Ý nghĩa:</b> Để..., sao cho... / Như...
<br>──────────<br><b>Chú ý:</b> Thường dùng cho mục đích liên quan đến trạng thái hoặc khả năng.
<br>──────────<br><b>Ví dụ:</b>
<br>みんなに聞こえるように、もっと大きな声で話してください。<br>→ (Xin hãy nói to hơn để mọi người có thể nghe thấy.) - Nghĩa 1
<br><br>風邪をひかないように、気をつけてください。<br>→ (Hãy cẩn thận để không bị cảm lạnh.) - Nghĩa 1
<br>──────────<br><b>Ngữ pháp tương tự:</b><br>
～ために (<b>N4</b>): Để... (mục đích rõ ràng, hành động có ý chí).
<br><br>～ようにする (<b>N4</b>): Cố gắng để...') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('177.  ように見える  (ようにみえる) - Trông; có vẻ; dường như ~', 'Common', '     <b>Công thức:</b> V/Adj/N-thể thường +  ように見える
<br>──────────<br><b>Cách dùng:</b> Diễn tả sự phán đoán của người nói dựa trên vẻ bề ngoài, những gì quan sát được bằng mắt.
<br>──────────<br><b>Ý nghĩa:</b> Trông có vẻ như là...
<br>──────────<br><b>Chú ý:</b> Nhấn mạnh sự phán đoán qua thị giác.
<br>──────────<br><b>Ví dụ:</b>
<br>彼女はとても疲れているように見える。<br>→ (Cô ấy trông có vẻ rất mệt.)
<br><br>この絵は、遠くから見ると写真のように見える。<br>→ (Bức tranh này, nếu
nhìn từ xa thì trông giống như ảnh chụp.)
<br>──────────<br><b>Ngữ pháp tương tự:</b><br>
～そうだ (<b>N4</b>): Trông có vẻ...
<br><br>～ようだ (<b>N4</b>): Hình như...
<br><br>～みたいだ (<b>N4</b>): Trông có vẻ...') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('178.  ようとしない  - Không cố gắng; không nỗ lực; không định ~', 'Common', '     <b>Công thức:</b> V-ý chí (Thể ý chí) +  としない
<br>──────────<br><b>Cách dùng:</b> Diễn tả rằng ai đó (thường là ngôi thứ ba) không có ý định hoặc không chịu nỗ lực để làm một việc gì đó, thường mang sắc thái phê phán hoặc thất vọng.
<br>──────────<br><b>Ý nghĩa:</b> Không chịu..., không có ý định...
<br>──────────<br><b>Chú ý:</b> Thường dùng cho ngôi thứ ba và mang ý tiêu cực.
<br>──────────<br><b>Ví dụ:</b>
<br>彼は自分の間違いを認めようとしない。<br>→ (Anh ta không chịu thừa nhận lỗi lầm của mình.)
<br><br>子供は薬を飲もうとしない。<br>→ (Đứa trẻ không chịu uống thuốc.)
<br>──────────<br><b>Ngữ pháp tương tự:</b><br>
V-るつもりはない (<b>N4</b>): Không có ý định...') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('179.  ようとする  - Cố gắng; thử; sắp ~', 'Common', '     <b>Công thức:</b> V-ý chí (Thể ý chí) +  とする
<br>──────────<br><b>Cách dùng:</b>
<br>Nghĩa 1: Diễn tả nỗ lực, cố gắng làm gì đó.
<br><br>Nghĩa 2: Diễn tả hành động sắp sửa xảy ra, ngay trước khi bắt đầu.
<br><br>Nghĩa 3 (ようとした): Thường diễn tả một nỗ lực đã thất bại hoặc bị gián đoạn.
<br>──────────<br><b>Ý nghĩa:</b> Định..., cố gắng..., sắp...
<br>──────────<br><b>Chú ý:</b> Rất phổ biến, đặc biệt ở dạng quá khứ.
<br>──────────<br><b>Ví dụ:</b>
<br>電車に乗ろうとした時、ドアが閉まってしまった。<br>→ (Đúng lúc tôi định lên tàu thì cửa đóng lại mất.) - Nghĩa 3
<br><br>いくら説明しようとしても、彼は聞いてくれない。<br>→ (Dù tôi cố gắng giải thích bao nhiêu, anh ấy cũng không nghe.) - Nghĩa 1
<br>──────────<br><b>Ngữ pháp tương tự:</b><br>
～てみる (<b>N4</b>): Thử làm...
<br><br>～つもりだ (<b>N4</b>): Định...') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('180.  ずに  - Mà không làm ~', 'Common', '     <b>Công thức:</b> V-ない (bỏ  ない) +  ずに (Lưu ý:  する →  せずに)
<br>──────────<br><b>Cách dùng:</b> Là cách nói trang trọng hơn hoặc dùng trong văn viết của  ～ないで, có nghĩa là làm một việc gì đó mà không làm V.
<br>──────────<br><b>Ý nghĩa:</b> ... mà không...
<br>──────────<br><b>Chú ý:</b> Trang trọng hơn  ～ないで.
<br>──────────<br><b>Ví dụ:</b>
<br>昨夜は、歯を磨かずに寝てしまった。<br>→ (Tối qua tôi đã đi ngủ mà không đánh răng.)
<br><br>彼は何も言わずに、出て行った。<br>→ (Anh ấy đã bỏ đi mà không nói một lời nào.)
<br><br>辞書を使わずに、新聞を読めるようになりたい。<br>→ (Tôi muốn có thể đọc báo mà không cần dùng từ điển.)
<br>──────────<br><b>Ngữ pháp tương tự:</b><br>
～ないで (<b>N4</b>): ... mà không... (phổ biến hơn trong văn nói).') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('181.  ずにはいられない  - Không thể không cảm thấy; không thể không làm; phải làm ~', 'Common', '     <b>Công thức:</b> V-ない (bỏ  ない) +  ずにはいられない (Lưu ý:  する →  せずにはいられない)
<br>──────────<br><b>Cách dùng:</b> Diễn tả một cảm xúc hoặc hành động mà người nói không thể kiềm chế được, dù có muốn hay không, vẫn phải làm hoặc cảm thấy như vậy.
<br>──────────<br><b>Ý nghĩa:</b> Không thể không..., không thể nhịn được...
<br>──────────<br><b>Chú ý:</b> Diễn tả cảm xúc/hành động tự phát, không kiểm soát được.
<br>──────────<br><b>Ví dụ:</b>
<br>彼の話を聞いて、笑わずにはいられなかった。<br>→ (Nghe câu chuyện của anh ấy, tôi không thể không bật cười.)
<br><br>この状況を見て、心配せずにはいられない。<br>→ (Nhìn tình hình này, tôi không thể không lo lắng.)
<br>──────────<br><b>Ngữ pháp tương tự:</b><br>
～てしまう (<b>N4</b>): Lỡ làm... (có thể ngụ ý không kiểm soát được).
<br><br>～てしょうがない (<b>N3</b>): ... không chịu được (nhấn mạnh cảm xúc).') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('182.  ずつ  - Mỗi; từng; một lần ~', 'Common', '     <b>Công thức:</b> Số lượng +  ずつ
<br>──────────<br><b>Cách dùng:</b> Dùng sau từ chỉ số lượng để diễn tả sự phân chia đều đặn, hoặc sự lặp lại theo từng lượng bằng nhau.
<br>──────────<br><b>Ý nghĩa:</b> Mỗi..., từng...
<br>──────────<br><b>Chú ý:</b> Nhấn mạnh sự phân chia hoặc lặp lại đồng đều.
<br>──────────<br><b>Ví dụ:</b>
<br>子供たちにお菓子を三つずつあげました。<br>→ (Tôi đã cho mỗi đứa trẻ 3 cái kẹo.)
<br><br>毎日漢字を五つずつ覚えています。<br>→ (Mỗi ngày tôi học thuộc 5 chữ Hán.)
<br><br>少しずつ日本語が分かるようになってきた。<br>→ (Tôi đã dần dần hiểu được
tiếng Nhật từng chút một.)
<br>──────────<br><b>Ngữ pháp tương tự:</b><br>
～ごとに (<b>N3</b>): Cứ mỗi... (nhấn mạnh sự lặp lại theo khoảng).') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('1.  ～あげく: Cuối cùng; sau khi ~ (thường là kết quả không tốt).', 'Common', '     <b>Công thức:</b>
<br>Động từ thể  た (V た) +  あげく (に)
<br><br>Danh từ (N) +  の +  あげく (に)
<br>──────────<br><b>Cách dùng:</b> Diễn tả một hành động hoặc tình trạng kéo dài, tốn nhiều công sức, và cuối cùng dẫn đến một kết quả (thường là tiêu cực, đáng tiếc).
<br>──────────<br><b>Ý nghĩa:</b> Nhấn mạnh vào quá trình vất vả và kết quả không mong muốn.
<br>──────────<br><b>Chú ý:</b>
<br>Hiếm khi dùng cho kết quả tốt.
<br><br>Có thể thêm  「に」sau  「あげく」.
<br>──────────<br><b>Ví dụ:</b>
<br>いろいろ悩んだあげく、彼女と別れることにした。
<br>→ Sau khi đã trăn trở rất nhiều, cuối cùng tôi đã quyết định chia tay cô ấy.
<br><br>３時間も待たされたあげく、結局試合は中止になった。
<br>→ Sau khi bị bắt chờ đến 3 tiếng đồng hồ, cuối cùng trận đấu lại bị hủy.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～末（すえ）に  (<b>N2</b>): Cũng có nghĩa là "sau khi", "cuối cùng". Tuy nhiên,
「末に」có thể dùng cho cả kết quả tốt và xấu.
<br><br>～結果（けっか）  (<b>N4/N3</b>): Chỉ đơn thuần nêu lên "kết quả", không mang sắc thái tiêu cực mạnh như  「あげく」.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('2.  あるいは: Hoặc là; có lẽ; có thể ~.', 'Common', '     <b>Công thức:</b>
<br>N1 +  あるいは + N2
<br><br>文 1 +  あるいは +  文 2
<br><br>あるいは +  文
<br>──────────<br><b>Cách dùng:</b>
<br>1.   Nối các lựa chọn tương đương (trang trọng).
<br>2.   Thể hiện sự phỏng đoán, khả năng xảy ra.
<br>──────────<br><b>Ý nghĩa:</b>
<br>1.   Liệt kê các phương án.
<br>2.   Biểu thị sự phỏng đoán.
<br>──────────<br><b>Chú ý:</b>
<br>Trang trọng hơn  「か」 hoặc  「または」.
<br><br>Khi phỏng đoán, mức độ chắc chắn không cao.
<br>──────────<br><b>Ví dụ:</b>
<br>来週の会議は、月曜日あるいは火曜日に行われます。
<br>→ Buổi họp tuần tới sẽ được tổ chức vào thứ Hai hoặc là thứ Ba.
<br><br>あるいは、彼はもうこの町にはいないのかもしれない。
<br>→ Có lẽ, anh ấy đã không còn ở thị trấn này nữa.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>または  (<b>N2</b>): Tương tự nghĩa "hoặc là", dùng trong văn viết/trang trọng.
<br><br>か  (<b>N5</b>): Dùng phổ biến trong văn nói, ít trang trọng hơn.
<br><br>もしかしたら  (<b>N3</b>): Tương tự nghĩa "có lẽ", thường dùng trong văn nói.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('3.  ～ばかりだ: Cứ tiếp tục (theo một chiều hướng, thường là tiêu cực).', 'Common', '     <b>Công thức:</b>
<br>Động từ thể từ điển (V る) +  ばかりだ
<br>──────────<br><b>Cách dùng:</b> Diễn tả một sự thay đổi đang diễn ra và có xu hướng tiếp tục theo một chiều hướng nhất định (thường là xấu đi).
<br>──────────<br><b>Ý nghĩa:</b> Nhấn mạnh xu hướng không ngừng của một sự thay đổi tiêu cực.
<br>──────────<br><b>Chú ý:</b>
<br>Thường đi với các động từ chỉ sự thay đổi.
<br><br>Mang sắc thái lo lắng hoặc bất mãn.
<br>──────────<br><b>Ví dụ:</b>
<br>最近、祖母の病気は悪くなるばかりだ。
<br>→ Gần đây, bệnh tình của bà tôi cứ xấu đi.
<br><br>人口は減るばかりで、この村の将来が心配だ。
<br>→ Dân số cứ giảm đi, tôi lo lắng cho tương lai của ngôi làng này.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～一方（いっぽう）だ  (<b>N2</b>): Cũng diễn tả sự thay đổi theo một chiều hướng, nhưng có thể dùng cho cả thay đổi tích cực và tiêu cực.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('4.  ～ばかりか: Không chỉ... mà còn ~; Hơn nữa ~.', 'Common', '     <b>Công thức:</b>
<br>N / A な / A い / V る +  ばかりか
<br>──────────<br><b>Cách dùng:</b> Diễn tả rằng không chỉ có A, mà còn có B (ở mức độ cao hơn, rộng hơn).
<br>──────────<br><b>Ý nghĩa:</b> Nhấn mạnh sự việc không chỉ dừng lại ở mức độ A.
<br>──────────<br><b>Chú ý:</b>
<br>Vế sau thường đi kèm với  「も」、「さえ」、「まで」.
<br><br>Trang trọng hơn  「だけでなく」.
<br>──────────<br><b>Ví dụ:</b>
<br>彼は漢字が読めないばかりか、ひらがなさえ書けない。
<br>→ Anh ta không chỉ không đọc được Kanji mà đến cả Hiragana cũng không viết được.
<br><br>このレストランは料理がおいしいばかりか、値段も安い。
<br>→ Nhà hàng này không chỉ món ăn ngon mà giá cả cũng rẻ.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～だけでなく  (<b>N3</b>): Có nghĩa tương tự và phổ biến hơn trong văn nói.
<br><br>～のみならず  (<b>N2</b>): Rất trang trọng, thường dùng trong văn viết.
<br><br>～上に（うえに）  (<b>N3</b>): Cũng có nghĩa "không chỉ... mà còn", nhấn mạnh
hai vế cùng chiều.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('5.  ～ばかりに: Chỉ vì; tại vì ~ (dẫn đến kết quả xấu).', 'Common', '     <b>Công thức:</b>
<br>V た / A い / A な / N +  ばかりに
<br>──────────<br><b>Cách dùng:</b> Diễn tả một nguyên nhân dẫn đến một kết quả xấu, không mong muốn. Thể hiện sự tiếc nuối, bất mãn.
<br>──────────<br><b>Ý nghĩa:</b> Nhấn mạnh chính nguyên nhân đó (dù nhỏ nhặt) đã gây ra hậu quả tiêu cực.
<br>──────────<br><b>Chú ý:</b>
<br>Luôn dùng khi kết quả là tiêu cực.
<br>──────────<br><b>Ví dụ:</b>
<br>うっかり住所を間違えたばかりに、荷物が届かなかった。
<br>→ Chỉ vì lỡ nhầm địa chỉ mà hành lý đã không đến được.
<br><br>お金がないばかりに、大学に進学できなかった。
<br>→ Chỉ vì không có tiền mà tôi đã không thể học lên đại học.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～せいで  (<b>N3</b>): Cũng chỉ nguyên nhân dẫn đến kết quả xấu, mang ý đổ lỗi.
<br><br>～から  /  ～ので  (<b>N5/N4</b>): Chỉ nguyên nhân - kết quả thông thường, không
nhất thiết tiêu cực.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('6.  ちなみに: Nhân tiện; tiện thể ~.', 'Common', '     <b>Công thức:</b>
<br>ちなみに、[Thông tin bổ sung]
<br>──────────<br><b>Cách dùng:</b> Dùng để bổ sung một thông tin có liên quan nhưng không phải là thông tin chính.
<br>──────────<br><b>Ý nghĩa:</b> Mở đầu cho một thông tin phụ.
<br>──────────<br><b>Chú ý:</b>
<br>Đứng ở đầu câu hoặc mệnh đề phụ.
<br>──────────<br><b>Ví dụ:</b>
<br>次の会議は来週の月曜日です。ちなみに、場所は第一会議室です。
<br>→ Buổi họp tiếp theo là vào thứ Hai tuần sau. Nhân tiện, địa điểm là phòng họp số 1.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>ついでに  (<b>N3</b>): Cũng có nghĩa "nhân tiện", nhưng thường dùng khi nhân tiện làm A thì làm luôn B.  「ちなみに」 chỉ bổ sung thông tin.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('7.  ちっとも～ない: Không ~ chút nào cả.', 'Common', '     <b>Công thức:</b>
<br>ちっとも + V ない / A くない / A でない / N でない
<br>──────────<br><b>Cách dùng:</b> Dùng để phủ định hoàn toàn, nhấn mạnh rằng không có một chút nào.
<br>──────────<br><b>Ý nghĩa:</b> Nhấn mạnh mức độ "không" một cách tuyệt đối.
<br>──────────<br><b>Chú ý:</b>
<br>Luôn đi với thể phủ định.
<br><br>Thường dùng trong văn nói.
<br>──────────<br><b>Ví dụ:</b>
<br>あの映画はちっとも面白くなかった。
<br>→ Bộ phim đó không thú vị chút nào cả.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>全然（ぜんぜん）～ない  (<b>N5</b>): Nghĩa tương tự, "hoàn toàn không".
<br><br>少しも（すこしも）～ない  (<b>N2</b>): Nghĩa tương tự, "không một chút nào".') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('8.  だけあって: Quả đúng là; chính vì ~ (nên ~ là đương nhiên).', 'Common', '     <b>Công thức:</b>
<br>V / A い / A な / N +  だけあって
<br>──────────<br><b>Cách dùng:</b> Diễn tả rằng vì có một đặc điểm tốt, nên kết quả tốt là điều đương nhiên, xứng đáng.
<br>──────────<br><b>Ý nghĩa:</b> Nhấn mạnh mối quan hệ hợp lý, tương xứng (thường là tích cực).
<br>──────────<br><b>Chú ý:</b>
<br>Thường dùng để khen ngợi, đánh giá tích cực.
<br>──────────<br><b>Ví dụ:</b>
<br>このホテルは五つ星だけあって、サービスが素晴らしい。
<br>→ Khách sạn này quả đúng là 5 sao, dịch vụ tuyệt vời.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～だけに  (<b>N2</b>): Rất giống, nhưng  「だけに」 có thể mang sắc thái chủ quan, cảm xúc hơn và có thể dùng cho cả kết quả xấu.
<br><br>～だけのことはある  (<b>N2</b>): Gần như đồng nghĩa, nhấn mạnh sự "đáng giá".
<br><br>さすが  (<b>N3</b>): Diễn tả sự thán phục, "quả không hổ danh là".') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('9.  だけあって: Quả đúng là; chính vì ~ (nên ~ là đương nhiên).', 'Common', '     <b>Công thức:</b>
<br>V / A い / A な / N +  だけあって
<br>──────────<br><b>Cách dùng:</b> Dùng để diễn tả rằng vì có một đặc điểm, tính chất, hoặc sự thật nào đó (vế trước), nên kết quả hoặc đánh giá ở vế sau là điều đương nhiên, xứng đáng, phù hợp. Thường dùng để khen ngợi hoặc đưa ra nhận xét tích cực.
<br>──────────<br><b>Ý nghĩa:</b> Nhấn mạnh mối quan hệ hợp lý, tương xứng giữa nguyên nhân (đặc điểm tốt) và kết quả (đánh giá tốt).
<br>──────────<br><b>Chú ý:</b>
<br>Vế sau thường là một sự đánh giá, nhận xét tích cực.
<br><br>Không dùng cho những đánh giá tiêu cực.
<br>──────────<br><b>Ví dụ:</b>
<br>このホテルは五つ星だけあって、サービスが素晴らしい。
<br>→ Khách sạn này quả đúng là 5 sao, dịch vụ tuyệt vời.
<br><br>彼は長年日本に住んでいただけあって、日本語がぺらぺらだ。
<br>→ Anh ấy chính vì đã sống ở Nhật nhiều năm nên tiếng Nhật rất trôi chảy.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～だけに  (<b>N2</b>): Rất giống, nhưng  「だけに」 có thể mang sắc thái chủ quan, cảm xúc hơn và có thể dùng cho cả kết quả xấu.
<br><br>～だけのことはある  (<b>N2</b>): Gần như đồng nghĩa, nhấn mạnh sự "đáng giá".
<br><br>さすが  (<b>N3</b>): Diễn tả sự thán phục, "quả không hổ danh là", nhưng thường
đứng đầu câu.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('10.  だけましだ: ~ là còn tốt chán; nên cảm thấy biết ơn vì ~.', 'Common', '     <b>Công thức:</b>
<br>V / A い / A な +  だけましだ
<br>──────────<br><b>Cách dùng:</b> Dùng để diễn tả rằng dù tình hình hiện tại không lý tưởng, nhưng so với một tình huống tồi tệ hơn thì vẫn còn là may mắn.
<br>──────────<br><b>Ý nghĩa:</b> Nhấn mạnh rằng dù không hoàn hảo nhưng vẫn nên nhìn vào mặt tích cực, dù là nhỏ nhất.
<br>──────────<br><b>Chú ý:</b>
<br>Thường dùng khi so sánh với một kịch bản xấu hơn.
<br><br>Mang ý nghĩa "ít nhất thì cũng còn được...".
<br>──────────<br><b>Ví dụ:</b>
<br>給料は下がったが、首にならないだけましだ。
<br>→ Lương thì giảm thật, nhưng không bị đuổi việc là còn tốt chán rồi.
<br><br>事故で車は傷ついたが、けががなかっただけましだ。
<br>→ Xe bị xước do tai nạn, nhưng không bị thương là còn may chán.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>まだいい  (<b>N4</b>): Có thể dùng trong một số ngữ cảnh với nghĩa "vẫn còn tốt/được", nhưng  「だけましだ」 diễn tả rõ hơn sự so sánh với tình huống tồi tệ hơn và sự an ủi.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('11.  だけに: Chính vì; bởi vì ~ (nên càng ~).', 'Common', '     <b>Công thức:</b>
<br>V / A い / A な / N +  だけに
<br>──────────<br><b>Cách dùng:</b> Dùng để nhấn mạnh rằng vì có một lý do đặc biệt nào đó, nên kết quả hoặc cảm xúc ở vế sau càng trở nên mạnh mẽ, rõ ràng hơn.
<br>──────────<br><b>Ý nghĩa:</b> Nhấn mạnh mối quan hệ nhân quả, trong đó nguyên nhân làm cho kết quả trở nên dễ hiểu hoặc mãnh liệt hơn.
<br>──────────<br><b>Chú ý:</b>
<br>Có thể dùng cho cả kết quả tốt và xấu.
<br><br>Thường thể hiện cảm xúc hoặc đánh giá của người nói.
<br>──────────<br><b>Ví dụ:</b>
<br>楽しみにしていた旅行だけに、中止になって本当に残念だ。
<br>→ Chính vì là chuyến du lịch mà tôi đã rất mong chờ, nên việc bị hủy thực sự rất đáng tiếc.
<br><br>この商品は値段が高いだけに、品質も非常に良い。
<br>→ Sản phẩm này chính vì giá cao nên chất lượng cũng cực kỳ tốt.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～だけあって  (<b>N2</b>): Thường dùng cho đánh giá tích cực, khách quan hơn.
<br><br>～からこそ  (<b>N3</b>): Cũng nhấn mạnh lý do "chính vì", nhưng tập trung vào sự
đặc biệt của lý do.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('12.  だけのことはある: Thảo nào; quả đúng là; không phải ... mà không có lý
do.', 'Common', '     <b>Công thức:</b>
<br>V / A い / A な / N +  だけのことはある
<br>──────────<br><b>Cách dùng:</b> Dùng để bày tỏ sự thán phục, công nhận rằng một kết quả là hoàn toàn xứng đáng với nguyên nhân, nỗ lực, danh tiếng đã biết.
<br>──────────<br><b>Ý nghĩa:</b> Nhấn mạnh sự tương xứng giữa giá trị/đặc điểm và kết quả thực tế.
<br>──────────<br><b>Chú ý:</b>
<br>Thường dùng để đưa ra đánh giá tích cực, công nhận giá trị.
<br>──────────<br><b>Ví dụ:</b>
<br>世界一周旅行は高かったが、素晴らしい経験ができた。行っただけのことはあった。
<br>→ Chuyến du lịch vòng quanh thế giới tuy đắt đỏ nhưng đã có được những trải nghiệm tuyệt vời. Quả đúng là bõ công đi.
<br><br>有名な画家が描いただけのことはあって、この絵は本当に感動的だ。
<br>→ Quả đúng là do một họa sĩ nổi tiếng vẽ, bức tranh này thực sự cảm động.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～だけあって  (<b>N2</b>): Rất giống nhau, nhưng  「だけのことはある」 có thể
nhấn mạnh hơn vào sự "đáng giá".
<br><br>～さすが  (<b>N3</b>): Diễn tả sự thán phục.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('13.  だけは: Làm tất cả những gì có thể (trong giới hạn đó).', 'Common', '     <b>Công thức:</b>
<br>V る +  だけは + V た / V る / V よう...
<br><br>V たい +  だけは + V た
<br>──────────<br><b>Cách dùng:</b> Diễn tả việc đã làm hoặc sẽ làm đến mức tối đa có thể trong một phạm vi, dù kết quả có thể không như ý.
<br>──────────<br><b>Ý nghĩa:</b> Nhấn mạnh việc thực hiện hành động đến giới hạn.
<br>──────────<br><b>Chú ý:</b>
<br>Thường lặp lại cùng một động từ.
<br>──────────<br><b>Ví dụ:</b>
<br>やるだけはやったのだから、あとは結果を待つしかない。
<br>→ Vì đã làm tất cả những gì có thể làm rồi, nên giờ chỉ còn cách chờ kết quả thôi.
<br><br>時間はなかったが、言うだけは言っておいた方がいいと思った。
<br>→ Tuy không có thời gian, nhưng tôi nghĩ ít nhất cũng nên nói ra những gì cần nói.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>できるだけ  (<b>N4</b>): Có nghĩa là "hết sức có thể", nhưng thường dùng như một trạng từ để bổ nghĩa cho hành động (できるだけ早く - nhanh nhất có thể), trong khi  「だけは」 là một cấu trúc ngữ pháp nhấn mạnh việc đã làm hết mức.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('14.  だって: Bởi vì; nhưng mà; rốt cuộc; ngay cả; cũng.', 'Common', '     <b>Công thức:</b>
<br>[Câu] +  だって (Bởi vì)
<br><br>だって、[Câu] (Nhưng mà)
<br><br>N +  だって (Ngay cả N / N cũng)
<br>──────────<br><b>Cách dùng:</b> Từ đa nghĩa, dùng trong văn nói, mang sắc thái thân mật.
<br>1.   Nêu lý do (biện hộ).
<br>2.   Phản đối.
<br>3.   Nhấn mạnh (giống  も/さえ).
<br>──────────<br><b>Ý nghĩa:</b> Tùy thuộc vào ngữ cảnh.
<br>──────────<br><b>Chú ý:</b>
<br>Không trang trọng.
<br>──────────<br><b>Ví dụ:</b>
<br>A:  なぜ宿題をしなかったの？ B:  だって、難しかったんだもん。
<br>→ A: Sao không làm bài tập? B: Tại vì... nó khó quá mà.
<br><br>子供だって、それくらいはわかるよ。
<br>→ Ngay cả trẻ con cũng hiểu được chừng đó.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～もん  (<b>N4/N3</b>): Chỉ lý do, mang tính thân mật, nữ tính/trẻ con.
<br><br>でも  (<b>N5</b>): Chỉ sự đối lập "nhưng mà".
<br><br>～も  (<b>N5</b>) /  ～さえ  (<b>N3</b>): Chỉ sự bao gồm/nhấn mạnh "ngay cả".') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('15.  でしかない: Chỉ là; không hơn không kém ~.', 'Common', '     <b>Công thức:</b>
<br>N +  でしかない
<br>──────────<br><b>Cách dùng:</b> Dùng để nhấn mạnh rằng một cái gì đó chỉ là N mà thôi, không có giá trị hay ý nghĩa hơn. Thường mang sắc thái đánh giá thấp, khiêm tốn.
<br>──────────<br><b>Ý nghĩa:</b> Nhấn mạnh sự giới hạn, không có gì đặc biệt.
<br>──────────<br><b>Chú ý:</b>
<br>Đi sau danh từ.
<br><br>Mang ý nghĩa tiêu cực hoặc khiêm tốn.
<br>──────────<br><b>Ví dụ:</b>
<br>彼の成功は、幸運の結果でしかない。
<br>→ Thành công của anh ta chẳng qua chỉ là kết quả của sự may mắn.
<br><br>これは私の個人的な意見でしかありません。
<br>→ Đây chỉ là ý kiến cá nhân của tôi mà thôi.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～にすぎない  (<b>N2</b>): Rất giống nhau, cũng có nghĩa "chỉ là".
<br><br>～だけだ  (<b>N4</b>): Cũng có nghĩa "chỉ là", nhưng ít mang sắc thái đánh giá thấp.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('16.  どころではない: Không phải lúc để; không phải nơi để; còn xa mới ~.', 'Common', '     <b>Công thức:</b>
<br>N +  どころではない
<br><br>V る +  どころではない
<br>──────────<br><b>Cách dùng:</b> Diễn tả rằng vì một lý do nào đó, nên hoàn toàn không thể thực hiện hành động hoặc ở trong trạng thái đó.
<br>──────────<br><b>Ý nghĩa:</b> Phủ định mạnh mẽ khả năng làm gì đó do hoàn cảnh.
<br>──────────<br><b>Chú ý:</b>
<br>Nhấn mạnh sự không thể, không có tâm trí/điều kiện.
<br>──────────<br><b>Ví dụ:</b>
<br>仕事が忙しすぎて、旅行どころではない。
<br>→ Công việc bận quá, không phải là lúc để đi du lịch.
<br><br>風邪がひどくて、ご飯を食べるどころではない。
<br>→ Bị cảm nặng quá, chẳng còn tâm trí đâu mà ăn cơm.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～どころか  (<b>N2</b>): Mang ý nghĩa "không những không A, mà ngược lại còn B".
<br><br>～（V る）わけにはいかない  (<b>N3</b>): Diễn tả việc không thể làm gì đó vì lý do xã hội, đạo đức hoặc tâm lý.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('17.  どころか: Nói gì đến; chứ đừng nói là; còn xa mới ~.', 'Common', '     <b>Công thức:</b>
<br>N / V る / A い / A な +  どころか
<br>──────────<br><b>Cách dùng:</b> Dùng để diễn tả một sự việc không chỉ không đạt đến mức A (như mong đợi hoặc dự đoán), mà còn hoàn toàn trái ngược hoặc ở mức độ B (thường là tệ hơn hoặc khác biệt lớn).
<br>──────────<br><b>Ý nghĩa:</b> Phủ định mạnh mẽ vế trước và đưa ra một sự thật trái ngược hoặc bất ngờ ở vế sau.
<br>──────────<br><b>Chú ý:</b>
<br>Vế sau thường có  「も」、「さえ」、「逆に」 đi kèm.
<br><br>Có thể dùng để diễn tả sự khác biệt lớn so với mong đợi.
<br>──────────<br><b>Ví dụ:</b>
<br>彼は貯金するどころか、借金までしている。
<br>→ Anh ta nói gì đến tiết kiệm, đến cả nợ nần cũng có.
<br><br>忙しくて、休みを取るどころか、食事の時間もない。
<br>→ Bận quá, đừng nói là nghỉ ngơi, đến cả thời gian ăn cũng không có.
<br><br>静かどころか、とてもうるさい部屋だった。
<br>→ Yên tĩnh đâu chẳng thấy, đó là một căn phòng cực kỳ ồn ào.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～どころではない  (<b>N2</b>): Chỉ sự "không thể/không phải lúc" làm gì đó, không nhấn mạnh sự trái ngược như  「どころか」.
<br><br>～ばかりか  (<b>N2</b>) /  ～だけでなく  (<b>N3</b>): Chỉ sự "không chỉ... mà còn", thường là bổ sung thêm thông tin cùng chiều.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('18.  どうやら: Có vẻ như; hình như; bằng cách nào đó; vừa mới ~.', 'Common', '     <b>Công thức:</b>
<br>どうやら + [Phán đoán] (ようだ /  らしい /  そうだ /  みたいだ)
<br><br>どうやら + [Kết quả]
<br>──────────<br><b>Cách dùng:</b>
<br>1.   Diễn tả sự phán đoán không chắc chắn lắm nhưng có cơ sở nào đó, "có vẻ như", "hình như".
<br>2.   Diễn tả một kết quả đạt được sau nhiều nỗ lực hoặc khó khăn, "bằng cách nào đó", "cuối cùng thì".
<br>──────────<br><b>Ý nghĩa:</b> Biểu thị sự phỏng đoán hoặc kết quả không hoàn toàn rõ ràng nhưng có thể cảm nhận được.
<br>──────────<br><b>Chú ý:</b>
<br>Mức độ chắc chắn không cao khi dùng để phán đoán.
<br>──────────<br><b>Ví dụ:</b>
<br>空が暗くなってきた。どうやら雨が降りそうだ。
<br>→ Bầu trời tối sầm lại. Có vẻ như trời sắp mưa.
<br><br>どうやら終電に間に合ったようだ。
<br>→ Hình như (bằng cách nào đó) chúng ta đã kịp chuyến tàu cuối.
<br><br>何度も試して、どうやら成功した。
<br>→ Sau nhiều lần thử, cuối cùng thì cũng thành công.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>どうも  (<b>N4</b>): Cũng có nghĩa "có vẻ như", "hình như" nhưng thường mang tính trực giác, cảm tính hơn.
<br><br>多分（たぶん）  (<b>N5</b>): Chỉ sự phỏng đoán "có lẽ", mức độ chắc chắn cao hơn một chút.
<br><br>ようだ  (<b>N4</b>) /  らしい  (<b>N3</b>) /  そうだ  (<b>N4/N3</b>): Các mẫu câu chỉ sự phỏng đoán, thường đi sau  「どうやら」.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('19.  どうせ: Đằng nào thì; dù sao đi nữa; rốt cuộc ~.', 'Common', '     <b>Công thức:</b>
<br>どうせ + [Kết luận/Hành động]
<br>──────────<br><b>Cách dùng:</b> Dùng khi người nói cho rằng kết quả cuối cùng đã được định sẵn (thường là không tốt hoặc không thay đổi được), và do đó hành động tiếp theo cũng không có nhiều ý nghĩa hoặc nên làm theo một hướng nhất định.
<br>──────────<br><b>Ý nghĩa:</b> Thể hiện sự chấp nhận một kết quả không thể tránh khỏi, đôi khi mang sắc thái tiêu cực, từ bỏ, hoặc bất cần.
<br>──────────<br><b>Chú ý:</b>
<br>Thường đi với những suy nghĩ hoặc kết luận mang tính tiêu cực hoặc từ bỏ.
<br>──────────<br><b>Ví dụ:</b>
<br>どうせ失敗するだろうから、やらない方がいい。
<br>→ Đằng nào thì chắc cũng thất bại thôi, nên tốt hơn là đừng làm.
<br><br>どうせ間に合わないなら、ゆっくり行こう。
<br>→ Dù sao đi nữa cũng không kịp, nên cứ đi thong thả thôi.
<br><br>どうせ私なんて、誰も愛してくれないんだ。
<br>→ Rốt cuộc hạng người như tôi thì chẳng ai yêu cả.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>結局（けっきょく）  (<b>N3</b>): Có nghĩa là "cuối cùng", "rốt cuộc", chỉ kết quả cuối cùng, nhưng không nhất thiết mang sắc thái từ bỏ như  「どうせ」.
<br><br>いずれにしても  (<b>N2</b>): Có nghĩa "dù thế nào đi nữa", nhưng mang tính trung lập hơn.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('20.  得ない（えない）: Không thể; không có khả năng ~.', 'Common', '     <b>Công thức:</b>
<br>Động từ thể  ます (bỏ  ます) +  得ない (えない)
<br>──────────<br><b>Cách dùng:</b> Diễn tả rằng một việc gì đó không thể xảy ra hoặc không thể thực hiện được, dựa trên logic, tình huống, hoặc khả năng thông thường.
<br>──────────<br><b>Ý nghĩa:</b> Nhấn mạnh sự bất khả thi. Mang sắc thái trang trọng hơn  「できない」.
<br>──────────<br><b>Chú ý:</b>
<br>Thường dùng trong văn viết hoặc tình huống trang trọng.
<br><br>Không dùng để nói về khả năng/năng lực của bản thân (như học ngoại ngữ), mà thường nói về khả năng xảy ra của sự việc.
<br>──────────<br><b>Ví dụ:</b>
<br>そんなことはあり得ない。
<br>→ Chuyện đó không thể nào xảy ra được.
<br><br>彼の行動は理解し得ない。
<br>→ Hành động của anh ta không thể hiểu nổi.
<br><br>この状況では、成功は望み得ないだろう。
<br>→ Trong tình huống này, có lẽ không thể hy vọng thành công được.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～できない  (<b>N5</b>): Nghĩa cơ bản là "không thể", dùng phổ biến trong mọi tình huống.
<br><br>～わけにはいかない  (<b>N3</b>): "Không thể" vì lý do xã hội, đạo đức, tâm lý.
<br><br>～かねる  (<b>N2</b>): "Khó có thể", "không thể" (thường dùng để từ chối một cách
lịch sự).') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('21.  得る（える  /  うる）: Có thể; có khả năng ~.', 'Common', '     <b>Công thức:</b>
<br>Động từ thể  ます (bỏ  ます) +  得る (える /  うる)
<br>──────────<br><b>Cách dùng:</b> Diễn tả rằng một việc gì đó có khả năng xảy ra hoặc có thể thực hiện được.
<br>──────────<br><b>Ý nghĩa:</b> Chỉ khả năng xảy ra của sự việc. Mang sắc thái trang trọng.
<br>──────────<br><b>Chú ý:</b>
<br>Thường đọc là  「える」, nhưng trong một số trường hợp (như  あり得る) cũng có thể đọc là  「うる」.
<br><br>Thường dùng trong văn viết hoặc tình huống trang trọng.
<br>──────────<br><b>Ví dụ:</b>
<br>それは十分あり得ることだ。
<br>→ Chuyện đó hoàn toàn có thể xảy ra.
<br><br>人間は過ちを犯し得る生き物だ。
<br>→ Con người là sinh vật có thể phạm sai lầm.
<br><br>このデータから、いくつかの結論を導き得る。
<br>→ Từ dữ liệu này, có thể rút ra một vài kết luận.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～できる  (<b>N5</b>): Nghĩa cơ bản là "có thể".
<br><br>～可能性がある  (<b>N4/N3</b>): "Có khả năng", thường dùng để nói về xác suất.
<br><br>～かねない  (<b>N2</b>): "Có thể sẽ ~" (nhưng thường dùng cho khả năng xảy ra
việc xấu).') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('22.  再び（ふたたび）: Lại; một lần nữa.', 'Common', '     <b>Công thức:</b>
<br>Là một trạng từ (副詞).
<br>──────────<br><b>Cách dùng:</b> Diễn tả sự lặp lại của một hành động hoặc trạng thái. Mang sắc thái trang trọng hơn  「また」.
<br>──────────<br><b>Ý nghĩa:</b> Giống như  「また」 nhưng trang trọng hơn.
<br>──────────<br><b>Chú ý:</b>
<br>Thường dùng trong văn viết hoặc các thông báo, diễn văn.
<br>──────────<br><b>Ví dụ:</b>
<br>彼は再び日本を訪れた。
<br>→ Anh ấy đã lại đến thăm Nhật Bản.
<br><br>戦争が再び起こらないことを祈る。
<br>→ Tôi cầu mong chiến tranh sẽ không xảy ra một lần nữa.
<br><br>会議は来週再び開かれます。
<br>→ Cuộc họp sẽ được tổ chức lại vào tuần sau.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>また  (<b>N5</b>): Nghĩa tương tự, dùng phổ biến trong cả văn nói và văn viết thông thường.
<br><br>もう一度（もういちど）  (<b>N5</b>): "Một lần nữa", nhấn mạnh vào số lần.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('23.  ふうに: Theo cách này; theo cách đó; theo cách ~; như thế nào.', 'Common', '     <b>Công thức:</b>
<br>こんな/そんな/あんな/どんな +  ふうに
<br><br>V る/V た +  ふうに
<br><br>A い +  ふうに
<br><br>A な +  な +  ふうに
<br>──────────<br><b>Cách dùng:</b> Dùng để mô tả cách thức, phương pháp, hoặc trạng thái của một hành động hoặc sự việc.
<br>──────────<br><b>Ý nghĩa:</b> Giống như  「ように」, chỉ cách thức, nhưng có thể mang tính cụ thể, hữu
hình hơn.
<br>──────────<br><b>Chú ý:</b>
<br>Thường dùng trong văn nói nhiều hơn  「ように」 khi mô tả cách thức.
<br>──────────<br><b>Ví dụ:</b>
<br>どんなふうに作ればいいですか？
<br>→ Tôi nên làm theo cách nào thì được?
<br><br>彼が言ったふうにやってみてください。
<br>→ Hãy thử làm theo cách anh ấy đã nói xem.
<br><br>もっと優しいふうに話してください。
<br>→ Xin hãy nói theo cách dịu dàng hơn.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～ように  (<b>N4</b>): Rất giống nhau, "theo cách", "giống như".  「ように」
dùng phổ biến hơn và rộng hơn (cả mục đích, mệnh lệnh...).
<br><br>～みたいに  (<b>N4/N3</b>): "Giống như", thường dùng trong văn nói, so sánh ví
von.
<br><br>～通りに  (<b>N3</b>): "Đúng theo như", nhấn mạnh sự tuân thủ chính xác.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('24.  がきっかけで  /  をきっかけに: Nhân cơ hội; là kết quả của; lấy ~ làm
khởi đầu.', 'Common', '     <b>Công thức:</b>
<br>N +  がきっかけで / N +  をきっかけに (して)
<br>──────────<br><b>Cách dùng:</b> Diễn tả một sự việc, sự kiện nào đó (N) trở thành nguyên nhân, động lực trực tiếp dẫn đến một sự thay đổi, một hành động mới, hoặc một sự phát triển.
<br>──────────<br><b>Ý nghĩa:</b> Nhấn mạnh vào điểm khởi đầu, tác nhân gây ra sự thay đổi.
<br>──────────<br><b>Chú ý:</b>
<br>Vế sau thường là một sự thay đổi tích cực hoặc một hành động có ý chí.
<br><br>「がきっかけで」 nhấn mạnh N là nguyên nhân tự nhiên.  「をきっかけに」 nhấn mạnh việc chủ động lấy N làm cơ hội.
<br>──────────<br><b>Ví dụ:</b>
<br>病気がきっかけで、健康の大切さを知った。
<br>→ Nhờ trận ốm mà tôi đã biết được tầm quan trọng của sức khỏe.
<br><br>彼の言葉をきっかけに、彼女は留学を決意した。
<br>→ Lấy lời nói của anh ấy làm động lực, cô ấy đã quyết tâm đi du học.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～てから  (<b>N5</b>): Chỉ đơn thuần là trình tự thời gian "sau khi".
<br><br>～を機に（をきに）  (<b>N1</b>): Trang trọng hơn, cũng có nghĩa là "nhân dịp",
"nhân cơ hội".') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('25.  げ: Trông có vẻ; dường như ~.', 'Common', '     <b>Công thức:</b>
<br>Tính từ  い (bỏ  い) +  げ
<br><br>Tính từ  な (bỏ  な) +  げ
<br><br>V たい (bỏ  い) +  げ
<br><br>(Một số trạng thái đặc biệt như:  自信ありげ、自信なさげ)
<br>──────────<br><b>Cách dùng:</b> Gắn vào sau tính từ hoặc động từ chỉ mong muốn để biến chúng thành một tính từ  な, dùng để mô tả dáng vẻ, tâm trạng của người khác mà người nói cảm nhận được thông qua quan sát bên ngoài. Không dùng để nói về bản thân.
<br>──────────<br><b>Ý nghĩa:</b> Diễn tả cảm nhận của người nói về trạng thái, cảm xúc của người khác qua vẻ bề ngoài.
<br>──────────<br><b>Chú ý:</b>
<br>Hoạt động như một tính từ  な (ví dụ:  悲しげな顔 - khuôn mặt trông có vẻ buồn).
<br><br>Không dùng cho bản thân.
<br><br>Thường dùng trong văn viết hơn văn nói.
<br>──────────<br><b>Ví dụ:</b>
<br>彼女は何か言いたげな顔でこちらを見ていた。
<br>→ Cô ấy nhìn về phía tôi với vẻ mặt như muốn nói điều gì đó.
<br><br>子供たちは楽しげに遊んでいる。
<br>→ Lũ trẻ đang chơi đùa trông rất vui vẻ.
<br><br>老人は寂しげに窓の外を眺めていた。
<br>→ Ông lão nhìn ra ngoài cửa sổ với vẻ đượm buồn.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～そうだ  (<b>N4</b>): Cũng diễn tả "trông có vẻ", nhưng  「そうだ」 phổ biến hơn và có thể dùng cho nhiều trường hợp hơn (cả sự vật, hiện tượng).  「げ」 thường nhấn mạnh hơn vào cảm xúc, tâm trạng bên trong thể hiện ra ngoài.
<br><br>～っぽい  (<b>N3</b>): Có nghĩa "có vẻ ~", "mang tính ~", nhưng thường dùng để chỉ đặc tính nổi bật hoặc xu hướng (子供っぽい - như trẻ con), hoặc chỉ sự suy đoán không chắc chắn.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('26.  逆に（ぎゃくに）: Ngược lại; trái lại ~.', 'Common', '     <b>Công thức:</b>
<br>Là một trạng từ (副詞).
<br><br>逆に、[Câu]
<br><br>[Câu 1]。逆に [Câu 2]。
<br>──────────<br><b>Cách dùng:</b> Dùng để giới thiệu một ý, một sự thật, hoặc một kết quả trái ngược hoàn toàn với những gì đã được nói trước đó hoặc với những gì người ta thường nghĩ.
<br>──────────<br><b>Ý nghĩa:</b> Nhấn mạnh sự đối lập, đảo ngược.
<br>──────────<br><b>Chú ý:</b>
<br>Có thể đứng đầu câu hoặc giữa câu.
<br>──────────<br><b>Ví dụ:</b>
<br>薬を飲んだら、逆に気分が悪くなった。
<br>→ Uống thuốc xong, ngược lại tôi lại thấy khó chịu hơn.
<br><br>彼は親切だと思っていたが、逆にとても冷たい人だった。
<br>→ Tôi đã nghĩ anh ta tốt bụng, nhưng trái lại anh ta là một người rất lạnh lùng.
<br><br>値段は高いが、逆に言えば、品質は保証されているということだ。
<br>→ Giá thì cao thật, nhưng nói ngược lại, điều đó có nghĩa là chất lượng được đảm bảo.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>反対に（はんたいに）  (<b>N3</b>): Có nghĩa rất giống, "trái lại", "ngược lại".
<br><br>そのかわり  (<b>N3</b>): "Đổi lại", "thay vào đó", thường chỉ sự bù trừ hoặc thay
thế.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('27.  反面（はんめん）: Trong khi; mặc dù; mặt khác ~.', 'Common', '     <b>Công thức:</b>
<br>V る / A い / A な / N である +  反面 (はんめん)
<br>──────────<br><b>Cách dùng:</b> Dùng để diễn tả hai mặt đối lập của cùng một sự vật, sự việc, hoặc con người.
<br>──────────<br><b>Ý nghĩa:</b> Trình bày hai khía cạnh tương phản, một mặt thì A, mặt khác thì B.
<br>──────────<br><b>Chú ý:</b>
<br>Hai vế phải nói về cùng một chủ thể.
<br><br>Thường dùng trong văn viết hoặc các tình huống cần sự đánh giá cân bằng.
<br>──────────<br><b>Ví dụ:</b>
<br>この薬はよく効く反面、副作用も強い。
<br>→ Thuốc này một mặt thì hiệu quả tốt, mặt khác thì tác dụng phụ cũng mạnh.
<br><br>都会の生活は便利な反面、ストレスも多い。
<br>→ Cuộc sống ở thành thị một mặt thì tiện lợi, mặt khác cũng nhiều căng thẳng.
<br><br>彼は優しい反面、決断力に欠けるところがある。
<br>→ Anh ấy một mặt thì hiền lành, mặt khác lại có điểm thiếu quyết đoán.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～一方で（いっぽうで）  (<b>N2</b>): Rất giống nhau, cũng chỉ hai mặt của vấn đề.  「反面」 có thể nhấn mạnh sự đối lập mạnh hơn một chút.
<br><br>～けど  /  ～が  (<b>N5</b>): Chỉ sự đối lập thông thường, dùng nhiều trong văn nói.
<br><br>～のに  (<b>N4</b>): Cũng chỉ sự đối lập, nhưng thường mang sắc thái bất mãn hoặc
ngạc nhiên.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('28.  果たして（はたして）: Đúng như dự đoán; quả nhiên; thực sự; liệu có
~.', 'Common', '     <b>Công thức:</b>
<br>果たして +  ～か /  ～だろうか (Liệu có ~ không?)
<br><br>果たして + [Phán đoán] (Quả nhiên là ~)
<br>──────────<br><b>Cách dùng:</b>
<br>1.   Dùng trong câu nghi vấn để nhấn mạnh sự hoài nghi, băn khoăn, "liệu có thực sự...".
<br>2.   Dùng để xác nhận một kết quả đúng như những gì đã dự đoán hoặc nghi ngờ trước đó, "quả nhiên", "đúng như...".
<br>──────────<br><b>Ý nghĩa:</b> Nhấn mạnh sự nghi ngờ hoặc sự xác nhận một điều gì đó.
<br>──────────<br><b>Chú ý:</b>
<br>Khi dùng với nghĩa nghi vấn, thường đi với  「か」 hoặc  「だろうか」.
<br>──────────<br><b>Ví dụ:</b>
<br>果たして彼の話は本当だろうか。
<br>→ Liệu câu chuyện của anh ta có thật không nhỉ?
<br><br>噂は本当だった。果たして、二人は結婚した。
<br>→ Lời đồn là thật. Quả nhiên hai người họ đã kết hôn.
<br><br>果たして、この計画は成功するのだろうか。
<br>→ Liệu kế hoạch này có thành công không đây?
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>本当に（ほんとうに）  (<b>N4</b>): "Thật sự", dùng để xác nhận hoặc hỏi về sự thật.
<br><br>いったい  (<b>N3</b>): Dùng để nhấn mạnh câu nghi vấn, thường thể hiện sự tò mò hoặc khó hiểu, "rốt cuộc là...".  「果たして」 thiên về sự hoài nghi về tính xác thực.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('29.  一応（いちおう）: Đại khái; ít nhiều; tạm thời ~.', 'Common', '     <b>Công thức:</b>
<br>Là một trạng từ (副詞).
<br>──────────<br><b>Cách dùng:</b> Dùng để diễn tả một hành động hoặc tình trạng chưa hoàn hảo, chưa đầy đủ nhưng cũng tạm chấp nhận được ở một mức độ nào đó; hoặc một việc làm mang tính tạm thời, phòng hờ.
<br>──────────<br><b>Ý nghĩa:</b> Biểu thị sự "tạm ổn", "coi như là", "trước mắt là".
<br>──────────<br><b>Chú ý:</b>
<br>Thể hiện sự khiêm tốn hoặc sự không chắc chắn hoàn toàn.
<br>──────────<br><b>Ví dụ:</b>
<br>食事は一応済ませましたが、まだお腹が空いています。
<br>→ Bữa ăn thì coi như là xong rồi, nhưng tôi vẫn còn đói.
<br><br>一応、傘を持っていった方がいいだろう。
<br>→ Tạm thời (để đề phòng) thì có lẽ nên mang ô đi.
<br><br>これで一応完成ですが、まだ修正が必要です。
<br>→ Thế này thì coi như là hoàn thành, nhưng vẫn cần chỉnh sửa.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>とりあえず  (<b>N3</b>): "Trước mắt", "tạm thời", thường nhấn mạnh việc làm gì đó trước tiên, các việc khác tính sau.  「一応」 thiên về mức độ hoàn thành hoặc sự chuẩn bị.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('30.  以外（いがい）: Ngoại trừ; trừ ~.', 'Common', '     <b>Công thức:</b>
<br>N +  以外 (に /  の)
<br>──────────<br><b>Cách dùng:</b> Dùng để loại trừ một đối tượng (N) ra khỏi một nhóm hoặc một phạm vi nào đó.
<br>──────────<br><b>Ý nghĩa:</b> Chỉ tất cả mọi thứ không bao gồm N.
<br>──────────<br><b>Chú ý:</b>
<br>Có thể đi với  「に」 (khi làm trạng từ) hoặc  「の」 (khi làm tính từ).
<br><br>Có thể đi với cả khẳng định và phủ định.
<br>──────────<br><b>Ví dụ:</b>
<br>日曜日以外は毎日働いています。
<br>→ Ngoại trừ Chủ nhật, ngày nào tôi cũng làm việc.
<br><br>このクラスでは、彼以外に英語を話せる人はいない。
<br>→ Trong lớp này, ngoài anh ta ra thì không có ai nói được tiếng Anh.
<br><br>あなた以外の人はみんな知っていますよ。
<br>→ Mọi người trừ bạn ra đều biết đấy.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～のほかに  (<b>N3</b>): "Ngoài ~ ra", có thể mang cả nghĩa "ngoại trừ" và "thêm vào đó".  「以外」 chỉ mang nghĩa "ngoại trừ".
<br><br>～を除いて（をのぞいて）  (<b>N2</b>): Nghĩa rất giống, "ngoại trừ", "loại trừ".') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('31.  以上に（いじょうに）: Hơn; không ít hơn; vượt quá ~.', 'Common', '     <b>Công thức:</b>
<br>N +  以上に
<br><br>V る / A い / A な +  以上に
<br><br>これ /  それ /  あれ +  以上に
<br>──────────<br><b>Cách dùng:</b> Dùng để so sánh, nhấn mạnh rằng mức độ của vế sau còn cao hơn, nhiều hơn, hoặc vượt trội hơn vế trước.
<br>──────────<br><b>Ý nghĩa:</b> Nhấn mạnh mức độ "hơn cả...", "vượt quá...".
<br>──────────<br><b>Chú ý:</b>
<br>Thường dùng để nhấn mạnh một mức độ cao hơn mong đợi hoặc bình thường.
<br>──────────<br><b>Ví dụ:</b>
<br>彼は私が想像した以上に強かった。
<br>→ Anh ta mạnh hơn cả những gì tôi tưởng tượng.
<br><br>健康以上に大切なものはない。
<br>→ Không có gì quan trọng hơn sức khỏe.
<br><br>必要以上に買い物をしないでください。
<br>→ Xin đừng mua sắm nhiều hơn mức cần thiết.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～より  (<b>N5</b>): Là cách nói so sánh hơn cơ bản nhất.  「以上に」 mang sắc thái nhấn mạnh hơn, "hơn cả mức đó".
<br><br>～ほど  (<b>N4</b>): Thường dùng trong so sánh không bằng (～ほど～ない) hoặc chỉ mức độ.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('32.  以上は（いじょうは）: Một khi đã; bởi vì; vì ~.', 'Common', '     <b>Công thức:</b>
<br>V る / V た +  以上は (いじょうは)
<br>──────────<br><b>Cách dùng:</b> Diễn tả rằng một khi đã ở vào tình huống A, hoặc một khi đã quyết định/hứa/nói A, thì việc làm B (thường là một nghĩa vụ, quyết tâm, hoặc điều đương nhiên) là điều bắt buộc hoặc hợp lý.
<br>──────────<br><b>Ý nghĩa:</b> Nhấn mạnh lý do mang tính bắt buộc hoặc quyết tâm, dẫn đến một hành động tất yếu.
<br>──────────<br><b>Chú ý:</b>
<br>Vế sau thường thể hiện ý chí mạnh mẽ, sự quyết tâm, hoặc nghĩa vụ.
<br><br>Mang sắc thái trang trọng, cứng rắn.
<br>──────────<br><b>Ví dụ:</b>
<br>約束した以上は、守らなければならない。
<br>→ Một khi đã hứa thì phải giữ lời.
<br><br>日本に来た以上は、日本語が話せるようになりたい。
<br>→ Một khi đã đến Nhật thì tôi muốn có thể nói được tiếng Nhật.
<br><br>やると言った以上は、最後まで責任を持つべきだ。
<br>→ Một khi đã nói là làm thì nên có trách nhiệm đến cùng.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～からには  (<b>N2</b>): Rất giống nhau, cũng diễn tả "một khi đã... thì phải...".
<br><br>～上は（うえは）  (<b>N2</b>): Cũng giống nhau, nhưng có thể trang trọng hơn
một chút.
<br><br>～のだから  (<b>N3</b>): Chỉ lý do "vì là...", nhưng không mang sắc thái bắt buộc mạnh như  「以上は」.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('33.  いきなり: Đột ngột; bất thình lình; không báo trước.', 'Common', '     <b>Công thức:</b>
<br>Là một trạng từ (副詞).
<br>──────────<br><b>Cách dùng:</b> Diễn tả một hành động hoặc sự việc xảy ra đột ngột, không có dấu hiệu báo trước, thường gây ra sự ngạc nhiên.
<br>──────────<br><b>Ý nghĩa:</b> Nhấn mạnh tính bất ngờ, đường đột của hành động.
<br>──────────<br><b>Chú ý:</b>
<br>Mang sắc thái mạnh hơn  「急に」, thường chỉ sự bất ngờ không lường trước được.
<br>──────────<br><b>Ví dụ:</b>
<br>後ろからいきなり肩をたたかれたので、びっくりした。
<br>→ Vì bị vỗ vai đột ngột từ phía sau nên tôi đã giật mình.
<br><br>彼は会議中にいきなり立ち上がって部屋を出て行った。
<br>→ Anh ta đột ngột đứng dậy và đi ra khỏi phòng giữa cuộc họp.
<br><br>何の前触れもなく、いきなり雨が降り出した。
<br>→ Không có dấu hiệu báo trước nào, trời đột nhiên đổ mưa.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>急に（きゅうに）  (<b>N5</b>): "Đột nhiên", "gấp", dùng phổ biến nhất, có thể chỉ sự thay đổi nhanh chóng.
<br><br>突然（とつぜん）  (<b>N3</b>): "Đột nhiên", "bất ngờ", mang tính khách quan và trang trọng hơn  「急に」, nhấn mạnh sự xảy ra không lường trước.  「いきなり」 thường nhấn mạnh hơn vào sự đường đột và bất ngờ đối với người cảm nhận.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('34.  一気に（いっきに）: Một hơi; không ngừng; một lần; ngay lập tức ~.', 'Common', '     <b>Công thức:</b>
<br>Là một trạng từ (副詞).
<br>──────────<br><b>Cách dùng:</b> Diễn tả một hành động được thực hiện trong một lần, không nghỉ, hoặc một sự thay đổi diễn ra rất nhanh chóng, mạnh mẽ trong một thời gian ngắn.
<br>──────────<br><b>Ý nghĩa:</b> Nhấn mạnh việc hoàn thành hoặc thay đổi một cách nhanh chóng, liền mạch.
<br>──────────<br><b>Chú ý:</b>
<br>Thường đi với các động từ chỉ hành động có thể hoàn thành nhanh hoặc sự thay đổi nhanh.
<br>──────────<br><b>Ví dụ:</b>
<br>彼はビールをジョッキで一気に飲み干した。
<br>→ Anh ta đã uống cạn cốc bia bằng một hơi.
<br><br>長い坂道を一気に駆け上がった。
<br>→ Tôi đã chạy một mạch lên con dốc dài.
<br><br>宿題を夏休みの最後に一気に片付けた。
<br>→ Tôi đã giải quyết hết đống bài tập hè trong một lần vào cuối kỳ nghỉ.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>一度に（いちどに）  (<b>N4</b>): "Trong một lần", nhấn mạnh việc làm nhiều thứ cùng lúc hoặc làm hết trong một lần, nhưng không nhất thiết phải nhanh và liền mạch như  「一気に」.
<br><br>すぐに  (<b>N5</b>): "Ngay lập tức", chỉ sự bắt đầu nhanh chóng.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('35.  一方で（いっぽうで）: Một mặt thì, mặt khác thì; mặc dù ~.', 'Common', '     <b>Công thức:</b>
<br>V る / A い / A な / N である +  一方で (いっぽうで)
<br>──────────<br><b>Cách dùng:</b> Dùng để trình bày hai mặt, hai khía cạnh khác nhau hoặc đối lập của cùng một vấn đề, sự vật, hiện tượng. Cũng có thể dùng để chỉ một xu hướng đang diễn ra song song.
<br>──────────<br><b>Ý nghĩa:</b> Cho thấy sự tồn tại song song của hai mặt hoặc hai xu hướng.
<br>──────────<br><b>Chú ý:</b>
<br>Khác với  「一方だ」(chỉ xu hướng một chiều),  「一方で」 trình bày hai mặt.
<br>──────────<br><b>Ví dụ:</b>
<br>インターネットは便利な一方で、危険も潜んでいる。
<br>→ Internet một mặt thì tiện lợi, mặt khác cũng tiềm ẩn nguy hiểm.
<br><br>彼は熱心な研究者である一方で、優れた教育者でもある。
<br>→ Anh ấy một mặt là một nhà nghiên cứu nhiệt huyết, mặt khác cũng là một nhà giáo ưu tú.
<br><br>人口が増える一方で、食料不足が深刻になっている。
<br>→ Một mặt dân số đang tăng lên, mặt khác tình trạng thiếu lương thực đang trở nên nghiêm trọng.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～反面（はんめん）  (<b>N2</b>): Rất giống nhau, cũng chỉ hai mặt đối lập.  「反
面」 có thể nhấn mạnh sự đối lập mạnh hơn.
<br><br>～けど  /  ～が  (<b>N5</b>): Chỉ sự đối lập thông thường.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('36.  いわゆる: Cái gọi là; nói nôm na là ~.', 'Common', '     <b>Công thức:</b>
<br>いわゆる + N
<br>──────────<br><b>Cách dùng:</b> Dùng để giới thiệu hoặc giải thích một thuật ngữ, một khái niệm, hoặc một cách gọi phổ biến nào đó.
<br>──────────<br><b>Ý nghĩa:</b> Đưa ra một từ/cụm từ mà mọi người thường dùng để chỉ một đối tượng hoặc khái niệm.
<br>──────────<br><b>Chú ý:</b>
<br>Là một liên thể từ (連体詞), luôn đứng trước danh từ.
<br>──────────<br><b>Ví dụ:</b>
<br>彼女はいわゆる「キャリアウーマン」だ。
<br>→ Cô ấy là người mà người ta hay gọi là "nữ doanh nhân thành đạt".
<br><br>これがいわゆる「クールジャパン」の文化です。
<br>→ Đây là văn hóa "Cool Japan" (Nhật Bản thú vị) mà người ta hay nói đến.
<br><br>彼はチームのいわゆる「ムードメーカー」だ。
<br>→ Anh ấy là người mà người ta gọi là "người tạo không khí" cho cả đội.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>つまり  (<b>N3</b>): "Tóm lại", "nói cách khác", dùng để giải thích lại hoặc tóm tắt ý.
<br><br>すなわち  (<b>N1</b>): "Nghĩa là", "tức là", dùng để giải thích hoặc định nghĩa, trang trọng hơn  「つまり」.  「いわゆる」 tập trung vào cách gọi phổ biến.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('37.  いよいよ: Cuối cùng; chắc chắn; không còn nghi ngờ gì; ngày càng.', 'Common', '     <b>Công thức:</b>
<br>Là một trạng từ (副詞).
<br>──────────<br><b>Cách dùng:</b>
<br>1.   Diễn tả một sự việc quan trọng, được mong đợi từ lâu sắp sửa diễn ra, "cuối cùng thì".
<br>2.   Nhấn mạnh mức độ ngày càng tăng lên.
<br>3.   Nhấn mạnh sự chắc chắn, "không còn nghi ngờ gì".
<br>──────────<br><b>Ý nghĩa:</b> Nhấn mạnh thời điểm quyết định sắp đến, hoặc mức độ ngày càng tăng.
<br>──────────<br><b>Chú ý:</b>
<br>Thường dùng cho những sự kiện quan trọng hoặc mang tính quyết định.
<br>──────────<br><b>Ví dụ:</b>
<br>明日はいよいよ出発の日だ。
<br>→ Ngày mai cuối cùng cũng là ngày xuất phát rồi.
<br><br>試験が近づき、いよいよ緊張してきた。
<br>→ Kỳ thi đến gần, tôi ngày càng cảm thấy căng thẳng.
<br><br>これでいよいよ彼の無実が証明された。
<br>→ Bằng cái này, sự vô tội của anh ta chắc chắn đã được chứng minh.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>とうとう  (<b>N3</b>): "Cuối cùng thì", thường dùng cho kết quả (cả tốt và xấu) sau một quá trình dài.
<br><br>ついに  (<b>N3</b>): "Cuối cùng thì", cũng chỉ kết quả sau quá trình dài, thường mang tính đột phá hoặc đáng mong đợi.  「いよいよ」 thường nhấn mạnh thời điểm ngay trước khi sự kiện xảy ra.
<br><br>ますます  (<b>N3</b>): "Ngày càng", chỉ sự tăng tiến.  「いよいよ」 cũng có nghĩa này nhưng thường mang cảm xúc mạnh hơn.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('38.  上（じょう）: Về mặt; từ quan điểm; theo ~.', 'Common', '     <b>Công thức:</b>
<br>N +  上 (じょう)
<br>──────────<br><b>Cách dùng:</b> Gắn vào sau danh từ (thường là danh từ Hán-Nhật) để chỉ một phương diện, một khía cạnh, hoặc một lĩnh vực nào đó.
<br>──────────<br><b>Ý nghĩa:</b> Chỉ ra phạm vi hoặc góc nhìn mà sự việc được xem xét.
<br>──────────<br><b>Chú ý:</b>
<br>Đọc là  「じょう」.
<br><br>Thường dùng trong các ngữ cảnh trang trọng, văn viết.
<br>──────────<br><b>Ví dụ:</b>
<br>健康上の理由で、仕事を辞めることにしました。
<br>→ Vì lý do sức khỏe, tôi đã quyết định nghỉ việc.
<br><br>この製品は、安全上いくつかの問題がある。
<br>→ Sản phẩm này có một vài vấn đề về mặt an toàn.
<br><br>教育上、その言葉遣いはよくない。
<br>→ Từ quan điểm giáo dục, cách dùng từ đó là không tốt.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～について  (<b>N4</b>) /  ～に関して  (<b>N3</b>): "Về ~", chỉ chủ đề, đối tượng.  「上
」 chỉ phương diện, khía cạnh.
<br><br>～の点で  (<b>N3</b>): "Về điểm ~", chỉ một điểm cụ thể.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('39.  かのように: Như thể là; cứ như là ~.', 'Common', '     <b>Công thức:</b>
<br>V / A い / A な / N + (thể thường) +  かのように
<br><br>(N và A な có thể +  である +  かのように)
<br>──────────<br><b>Cách dùng:</b> Dùng để so sánh một sự việc, hành động với một điều khác không có thật hoặc không phải là sự thật, nhằm nhấn mạnh trạng thái hoặc cách thức của sự việc đó.
<br>──────────<br><b>Ý nghĩa:</b> Tạo ra sự so sánh ví von mạnh mẽ.
<br>──────────<br><b>Chú ý:</b>
<br>Thường đi kèm với  「まるで」 (giống hệt như).
<br><br>Vế trước thường là điều không có thật hoặc giả định.
<br>──────────<br><b>Ví dụ:</b>
<br>彼はまるで全てを知っているかのように話す。
<br>→ Anh ta nói chuyện cứ như thể là biết tuốt mọi thứ.
<br><br>空は、まるで泣き出すかのように暗くなった。
<br>→ Bầu trời tối sầm lại cứ như thể sắp khóc.
<br><br>彼女は何もなかったかのように、にこやかに笑った。
<br>→ Cô ấy mỉm cười rạng rỡ cứ như thể chưa có chuyện gì xảy ra.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>まるで～ようだ  /  みたいだ  (<b>N3/N4</b>): Rất giống nhau, "giống hệt như là".
「かのように」 thường mang tính văn viết và nhấn mạnh hơn vào hành
động/trạng thái như thể.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('40.  かと思ったら（かとおもったら）: Vừa mới; ngay khi ~.', 'Common', '     <b>Công thức:</b>
<br>V た +  かと思ったら /  かと思うと
<br>──────────<br><b>Cách dùng:</b> Diễn tả hai hành động xảy ra gần như đồng thời hoặc liên tiếp rất nhanh, đến mức gây ngạc nhiên. Vế sau thường là một hành động bất ngờ hoặc trái ngược với vế trước.
<br>──────────<br><b>Ý nghĩa:</b> Nhấn mạnh sự thay đổi nhanh chóng, đột ngột.
<br>──────────<br><b>Chú ý:</b>
<br>Không dùng để nói về hành động của chính người nói.
<br><br>Vế sau thường là điều bất ngờ.
<br>──────────<br><b>Ví dụ:</b>
<br>赤ちゃんは今泣いたかと思ったら、もう笑っている。
<br>→ Em bé vừa mới khóc đó mà giờ đã cười rồi.
<br><br>ピカッと光ったかと思ったら、ゴロゴロと雷が鳴り出した。
<br>→ Vừa mới thấy lóe sáng thì sấm đã bắt đầu kêu ầm ầm.
<br><br>あの人は部屋に入ってきたかと思うと、すぐにどこかへ行ってしまった。
<br>→ Người đó vừa mới thấy vào phòng xong thì đã đi đâu mất ngay lập tức.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～たとたん  (<b>N3</b>): "Ngay khi", cũng chỉ hành động xảy ra ngay lập tức, nhưng thường nhấn mạnh vào kết quả bất ngờ (thường là không lường trước được) ngay sau hành động 1.  「かと思ったら」 nhấn mạnh sự chuyển biến nhanh giữa hai trạng thái/hành động.
<br><br>～やいなや  (<b>N1</b>): "Vừa mới... thì ngay lập tức...", rất giống nhau nhưng trang trọng và mang tính văn viết hơn.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('41.  か～ないかのうちに: Ngay khi; vừa mới ~.', 'Common', '     <b>Công thức:</b>
<br>Động từ thể từ điển (V る) +  か + Động từ thể  ない (V ない) +  かのうちに
<br>──────────<br><b>Cách dùng:</b> Diễn tả một hành động xảy ra gần như đồng thời với hành động trước đó, đến mức cảm giác như hành động trước còn chưa kết thúc hẳn thì hành động sau đã bắt đầu.
<br>──────────<br><b>Ý nghĩa:</b> Nhấn mạnh sự nối tiếp cực kỳ nhanh chóng giữa hai hành động, gần như là đồng thời.
<br>──────────<br><b>Chú ý:</b>
<br>Cảm giác nhanh hơn cả  「たとたん」 hay  「かと思うと」.
<br><br>Vế sau không thể hiện ý chí, mệnh lệnh, hay yêu cầu.
<br>──────────<br><b>Ví dụ:</b>
<br>彼はベッドに横になるかならないかのうちに、ぐっすり眠ってしまった。
<br>→ Anh ấy vừa mới đặt lưng xuống giường thì đã ngủ say tít.
<br><br>授業終了のチャイムが鳴るか鳴らないかのうちに、生徒たちは教室を
飛び出した。
<br>→ Chuông báo hết giờ học vừa mới reo (hoặc chưa reo xong) thì học sinh đã ùa ra khỏi lớp.
<br><br>電車が止まるか止まらないかのうちに、ドアが開いた。
<br>→ Tàu điện vừa mới dừng (hoặc chưa dừng hẳn) thì cửa đã mở.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～たとたん  (<b>N3</b>): "Ngay khi", nhấn mạnh kết quả bất ngờ xảy ra ngay sau
hành động 1.
<br><br>～かと思ったら  (<b>N2</b>): "Vừa mới... thì đã...", nhấn mạnh sự thay đổi nhanh chóng, bất ngờ giữa hai hành động/trạng thái.
<br><br>～やいなや  (<b>N1</b>): "Vừa mới... thì ngay lập tức...", rất giống nhau nhưng
trang trọng và văn viết hơn.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('42.  かえって: Ngược lại; trái lại ~.', 'Common', '     <b>Công thức:</b>
<br>Là một trạng từ (副詞).
<br>──────────<br><b>Cách dùng:</b> Diễn tả một kết quả xảy ra trái ngược với dự đoán, mong đợi, hoặc lẽ thường. Thường là một kết quả không mong muốn hoặc bất ngờ.
<br>──────────<br><b>Ý nghĩa:</b> Nhấn mạnh kết quả trái ngược với dự kiến.
<br>──────────<br><b>Chú ý:</b>
<br>Thường đi kèm với sự ngạc nhiên hoặc kết quả không như ý.
<br>──────────<br><b>Ví dụ:</b>
<br>親切のつもりで手伝ったら、かえって迷惑になってしまった。
<br>→ Tưởng là tốt bụng nên đã giúp đỡ, ai ngờ ngược lại còn gây phiền phức.
<br><br>薬を飲んだら、かえって症状がひどくなった。
<br>→ Uống thuốc xong, trái lại triệu chứng còn nặng hơn.
<br><br>近道をしたつもりが、かえって時間がかかった。
<br>→ Tưởng là đi đường tắt, ai ngờ ngược lại còn tốn thời gian hơn.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>逆に（ぎゃくに）  (<b>N2</b>): Rất giống nhau, "ngược lại", "trái lại".  「かえって」 thường nhấn mạnh hơn vào kết quả trái với mong đợi.
<br><br>むしろ  (<b>N2</b>): "Thà... còn hơn", "ngược lại thì...", dùng khi so sánh hai thứ và cho rằng vế sau thích hợp/đúng hơn.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('43.  限り（かぎり）: Chừng nào còn; trong khi ~; theo như ~; hết mức ~.', 'Common', '     <b>Công thức:</b>
<br>1.   V る / V ない / A い / A な / N の +  限り (Chừng nào còn ~)
<br>2.   V る / V た / V ている +  限り (では) (Theo như ~)
<br>3.   V る / N の +  限り (Hết mức có thể ~)
<br>──────────<br><b>Cách dùng:</b> Là một mẫu ngữ pháp đa nghĩa:
<br>1.   Điều kiện: Diễn tả rằng chừng nào điều kiện A còn tồn tại thì B vẫn tiếp diễn.
<br>2.   Phạm vi thông tin: Diễn tả rằng thông tin đưa ra dựa trên phạm vi hiểu biết/điều tra/nhìn thấy... của người nói.
<br>3.   Giới hạn: Diễn tả việc làm gì đó đến mức tối đa có thể.
<br>──────────<br><b>Ý nghĩa:</b> Chỉ điều kiện, phạm vi, hoặc giới hạn.
<br>──────────<br><b>Chú ý:</b>
<br>Cần chú ý vào ngữ cảnh để hiểu đúng nghĩa.
<br>──────────<br><b>Ví dụ:</b>
<br>1.   私が生きている限り、あなたを守ります。<br>→ (Chừng nào tôi còn sống, tôi sẽ bảo vệ em.)
<br>2.   私が知っている限りでは、彼は独身です。<br>→ (Theo như tôi biết thì anh ấy còn độc thân.)
<br>3.   力の限り戦ったが、負けてしまった。<br>→ (Tôi đã chiến đấu hết sức mình nhưng vẫn thua.)
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～間（あいだ）  (<b>N4</b>): "Trong khi", chỉ một khoảng thời gian mà hành động/trạng thái diễn ra.
<br><br>～以上は（いじょうは）  (<b>N2</b>): "Một khi đã", chỉ sự quyết tâm/nghĩa vụ khi đã có điều kiện A.
<br><br>～によると  (<b>N3</b>): "Theo như", chỉ nguồn thông tin.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('44.  甲斐がある（かいがある）: Đáng công; bõ công làm gì đó.', 'Common', '     <b>Công thức:</b>
<br>V る / V た +  甲斐がある (かいがある)
<br><br>N の +  甲斐がある (かいがある)
<br>──────────<br><b>Cách dùng:</b> Diễn tả rằng một hành động, nỗ lực nào đó mang lại kết quả tốt đẹp, xứng đáng với công sức bỏ ra.
<br>──────────<br><b>Ý nghĩa:</b> Thể hiện sự hài lòng, công nhận giá trị của một nỗ lực hoặc hành động.
<br>──────────<br><b>Chú ý:</b>
<br>Thường đi với V た (đã làm) hoặc N (chỉ sự nỗ lực).
<br><br>Có dạng  「～甲斐もなく」 (không bõ công, uổng công).
<br>──────────<br><b>Ví dụ:</b>
<br>頑張って練習した甲斐があって、試合に勝つことができた。
<br>→ Bõ công đã cố gắng luyện tập, tôi đã có thể chiến thắng trận đấu.
<br><br>遠くまで来た甲斐があった。こんなにきれいな景色が見られるなんて。
<br>→ Bõ công đã đi xa đến đây. Không ngờ lại được ngắm cảnh đẹp thế này.
<br><br>待った甲斐があって、素晴らしいコンサートだった。
<br>→ Đáng công chờ đợi, đó là một buổi hòa nhạc tuyệt vời.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～だけのことはある  (<b>N2</b>): "Quả đúng là", "thảo nào", công nhận sự xứng đáng, rất giống nhau.
<br><br>～てよかった  (<b>N4</b>): "Thật tốt vì đã làm ~", diễn tả sự hài lòng/may mắn đơn
giản hơn.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('45.  かねない: Có thể sẽ ~ (thường là việc không tốt).', 'Common', '     <b>Công thức:</b>
<br>Động từ thể  ます (bỏ  ます) +  かねない
<br>──────────<br><b>Cách dùng:</b> Diễn tả khả năng xảy ra một việc gì đó, nhưng thường là một kết quả xấu, không mong muốn, dựa trên tình hình hoặc điều kiện hiện tại.
<br>──────────<br><b>Ý nghĩa:</b> Bày tỏ sự lo ngại, e rằng một điều xấu có thể xảy ra.
<br>──────────<br><b>Chú ý:</b>
<br>Chỉ dùng cho khả năng xảy ra việc xấu.
<br><br>Không dùng để nói về ý chí hay mong muốn.
<br>──────────<br><b>Ví dụ:</b>
<br>あんなにスピードを出したら、事故を起こしかねない。
<br>→ Nếu phóng tốc độ như thế thì có thể sẽ gây ra tai nạn đấy.
<br><br>このままでは、会社は倒産しかねない。
<br>→ Cứ thế này thì công ty có thể sẽ phá sản.
<br><br>油断していると、大きな失敗をしかねないよ。
<br>→ Nếu lơ là, cậu có thể sẽ thất bại lớn đấy.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～かもしれない  (<b>N4</b>): "Có lẽ", "có thể", dùng cho cả khả năng tốt và xấu, mức độ chắc chắn thấp.
<br><br>～おそれがある  (<b>N2</b>): "E là", "có nguy cơ là", cũng dùng cho việc xấu, nhưng trang trọng hơn và thường dùng trong tin tức, cảnh báo.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('46.  かねる: Không thể làm gì đó (thường dùng để từ chối).', 'Common', '     <b>Công thức:</b>
<br>Động từ thể  ます (bỏ  ます) +  かねる
<br>──────────<br><b>Cách dùng:</b> Dùng để diễn tả sự không thể làm một việc gì đó, thường là vì lý do tâm lý, tình huống, hoặc quy định. Thường được dùng như một cách từ chối lịch sự, gián tiếp.
<br>──────────<br><b>Ý nghĩa:</b> Thể hiện sự khó khăn hoặc không thể thực hiện, mang sắc thái lịch sự, dè dặt.
<br>──────────<br><b>Chú ý:</b>
<br>Là cách nói trang trọng.
<br><br>Thường dùng trong các tình huống cần giữ lịch sự (kinh doanh, dịch vụ).
<br><br>Không dùng để nói về năng lực vật lý (không thể bơi...).
<br>──────────<br><b>Ví dụ:</b>
<br>申し訳ありませんが、そのご要望にはお応えしかねます。
<br>→ Chúng tôi rất xin lỗi nhưng khó có thể đáp ứng yêu cầu đó ạ.
<br><br>私一人では決めかねますので、上司に相談させてください。
<br>→ Vì một mình tôi không thể quyết định được, nên xin phép cho tôi thảo luận với cấp trên.
<br><br>彼の提案には賛成しかねる点が多い。
<br>→ Có nhiều điểm trong đề xuất của anh ta mà tôi khó có thể tán thành.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～できない  (<b>N5</b>): "Không thể", cách nói trực tiếp và phổ biến.
<br><br>～得ない  (<b>N2</b>): "Không thể xảy ra", "không thể làm được", trang trọng
nhưng thường chỉ sự bất khả thi về logic/tình huống hơn là từ chối.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('47.  から言うと  /  から言えば: Nói về; từ quan điểm của ~.', 'Common', '     <b>Công thức:</b>
<br>N +  から言うと /  から言えば /  から言って
<br>──────────<br><b>Cách dùng:</b> Dùng để đưa ra nhận xét, đánh giá, hoặc phán đoán từ một góc độ, một lập trường, hoặc một khía cạnh cụ thể (N).
<br>──────────<br><b>Ý nghĩa:</b> Nhấn mạnh góc nhìn mà từ đó người nói đưa ra ý kiến.
<br>──────────<br><b>Chú ý:</b>
<br>N thường là người, tổ chức, hoặc một khía cạnh (chất lượng, giá cả...).
<br>──────────<br><b>Ví dụ:</b>
<br>親から言えば、子供にはもっと勉強してほしい。
<br>→ Từ quan điểm của cha mẹ mà nói thì họ muốn con cái học hành nhiều hơn.
<br><br>品質から言うと、こちらの商品の方がおすすめです。
<br>→ Nói về chất lượng thì tôi khuyên dùng sản phẩm bên này hơn.
<br><br>彼の能力から言って、この仕事は簡単にできるだろう。
<br>→ Xét từ năng lực của anh ấy thì công việc này chắc là có thể làm dễ dàng.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～にとって  (<b>N3</b>): "Đối với ~", chỉ đối tượng chịu ảnh hưởng hoặc đối tượng của sự đánh giá.
<br><br>～から見ると  (<b>N2</b>): "Nhìn từ ~", "xét từ ~", rất giống nhau, thường dùng khi nhìn từ một vị trí hoặc góc độ khách quan hơn.
<br><br>～にしたら  /  ～にすれば  (<b>N2</b>): "Đối với ~", "từ lập trường của ~", thường dùng để thể hiện cảm xúc, suy nghĩ khi đặt mình vào vị trí của người khác.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('48.  からこそ: Chính vì ~.', 'Common', '     <b>Công thức:</b>
<br>V / A い / A な / N + (thể thường) +  からこそ
<br>──────────<br><b>Cách dùng:</b> Dùng để nhấn mạnh một lý do đặc biệt, duy nhất, hoặc quan trọng nhất dẫn đến một kết quả hoặc hành động.
<br>──────────<br><b>Ý nghĩa:</b> Nhấn mạnh "chính vì lý do này (chứ không phải lý do nào khác)".
<br>──────────<br><b>Chú ý:</b>
<br>Nhấn mạnh hơn so với  「から」 thông thường.
<br><br>Vế sau thường thể hiện một kết quả logic hoặc một cảm xúc mạnh.
<br>──────────<br><b>Ví dụ:</b>
<br>愛しているからこそ、厳しく言うのです。
<br>→ Chính vì yêu nên tôi mới nói nghiêm khắc.
<br><br>努力したからこそ、成功できたんだ。
<br>→ Chính vì đã nỗ lực nên mới thành công được.
<br><br>あなただからこそ、この仕事をお願いしたい。
<br>→ Chính vì là bạn nên tôi mới muốn nhờ công việc này.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～から  (<b>N5</b>): Chỉ lý do thông thường.
<br><br>～だけに  (<b>N2</b>): "Chính vì... nên càng...", nhấn mạnh mức độ của kết quả do
lý do đó.  「からこそ」 nhấn mạnh sự đặc biệt của lý do.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('49.  から見ると  /  から見れば: Từ quan điểm của; nhìn từ; xét từ ~.', 'Common', '     <b>Công thức:</b>
<br>N +  から見ると /  から見れば /  から見て
<br>──────────<br><b>Cách dùng:</b> Dùng để đưa ra nhận xét, đánh giá hoặc phán đoán dựa trên một góc nhìn, lập trường, hoặc tiêu chuẩn nào đó (N). Thường nhấn mạnh góc nhìn khách quan hơn so với  「から言うと」.
<br>──────────<br><b>Ý nghĩa:</b> Chỉ ra góc nhìn hoặc cơ sở để đưa ra phán đoán.
<br>──────────<br><b>Chú ý:</b>
<br>Rất giống  「から言うと」 và  「からすると」.  「から見ると」 có thể mang sắc thái khách quan hơn, dựa trên quan sát.
<br>──────────<br><b>Ví dụ:</b>
<br>専門家から見ると、この絵はあまり価値がないらしい。
<br>→ Từ quan điểm của chuyên gia thì có vẻ bức tranh này không có giá trị lắm.
<br><br>昔の人から見れば、現代の生活は夢のようだ。
<br>→ Nhìn từ góc độ của người xưa, cuộc sống hiện đại giống như một giấc mơ.
<br><br>データから見て、この計画は成功する可能性が高い。
<br>→ Xét từ dữ liệu thì kế hoạch này có khả năng thành công cao.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～から言うと  (<b>N2</b>): "Nói về ~", thường nhấn mạnh hơn vào việc đưa ra ý kiến từ một lập trường.
<br><br>～からすると  (<b>N2</b>): "Xét từ ~", cũng rất giống nhau, thường dùng khi suy đoán dựa trên cơ sở nào đó.
<br><br>～にとって  (<b>N3</b>): "Đối với ~", chỉ đối tượng chịu ảnh hưởng hoặc đối tượng của sự đánh giá.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('50.  からには: Một khi đã; vì ~.', 'Common', '     <b>Công thức:</b>
<br>Động từ thể thường (V る / V た) +  からには
<br>──────────<br><b>Cách dùng:</b> Diễn tả rằng một khi đã có một sự thật hoặc quyết định A, thì việc làm B là điều đương nhiên, tất yếu, hoặc là nghĩa vụ, trách nhiệm phải làm.
<br>──────────<br><b>Ý nghĩa:</b> Nhấn mạnh lý do mang tính quyết định hoặc bắt buộc, dẫn đến một hành động/quyết tâm mạnh mẽ.
<br>──────────<br><b>Chú ý:</b>
<br>Vế sau thường thể hiện ý chí, quyết tâm, nghĩa vụ, hoặc một kết luận tất yếu.
<br><br>Rất giống  「以上は」 và  「上は」.
<br>──────────<br><b>Ví dụ:</b>
<br>引き受けたからには、最後まで責任を持ってやります。
<br>→ Một khi đã nhận lời thì tôi sẽ làm có trách nhiệm đến cùng.
<br><br>日本に来たからには、ぜひ富士山に登ってみたい。
<br>→ Một khi đã đến Nhật thì tôi nhất định muốn thử leo núi Phú Sĩ.
<br><br>プロであるからには、常に最高のパフォーマンスを目指すべきだ。
<br>→ Vì là dân chuyên nghiệp nên phải luôn nhắm đến màn trình diễn tốt nhất.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～以上は（いじょうは）  (<b>N2</b>): Rất giống nhau, mang sắc thái trang trọng, cứng rắn.
<br><br>～上は（うえは）  (<b>N2</b>): Cũng giống nhau, có thể trang trọng hơn một chút.
<br><br>～のだから  (<b>N3</b>): "Vì là...", chỉ lý do nhưng không mạnh bằng  「からには
」.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('51.  からして: Xét từ; dựa trên; ngay cả ~.', 'Common', '     <b>Công thức:</b>
<br>N +  からして
<br>──────────<br><b>Cách dùng:</b>
<br>1.   Đưa ra ví dụ tiêu biểu: Dùng để nêu lên một ví dụ cơ bản nhất, điển hình nhất để nói rằng ngay cả cái đó đã như vậy thì những cái khác cũng tương tự hoặc tệ hơn/tốt hơn.
<br>2.   Căn cứ phán đoán: Dùng để chỉ căn cứ, cơ sở để đưa ra một phán đoán nào đó (ít dùng hơn nghĩa 1).
<br>──────────<br><b>Ý nghĩa:</b> Nhấn mạnh "ngay cả N cũng đã..." để suy rộng ra toàn thể.
<br>──────────<br><b>Chú ý:</b>
<br>Thường dùng khi đưa ra đánh giá (thường là tiêu cực) bằng cách nêu một ví dụ nhỏ nhất.
<br>──────────<br><b>Ví dụ:</b>
<br>あのレストランは、入り口からして汚い。料理も期待できないだろう。
<br>→ Nhà hàng đó, ngay cả cái lối vào cũng đã bẩn rồi. Chắc món ăn cũng không trông mong gì được.
<br><br>彼の態度からして、反省しているようには見えない。
<br>→ Xét từ thái độ của anh ta thì không có vẻ gì là đang hối lỗi.
<br><br>タイトルからして、面白そうな本だ。
<br>→ Ngay từ cái tựa đề đã thấy là một cuốn sách có vẻ thú vị.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～さえ  (<b>N3</b>): "Ngay cả ~", cũng dùng để nêu ví dụ cực đoan, nhưng  「からして」 thường dùng N làm điểm xuất phát để đánh giá tổng thể.
<br><br>～はもちろん  (<b>N3</b>): "~ thì đương nhiên rồi", dùng để nói A là đương nhiên, B cũng vậy.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('52.  からすると  /  からすれば: Xét từ; xem xét; nhìn từ ~.', 'Common', '     <b>Công thức:</b>
<br>N +  からすると /  からすれば
<br>──────────<br><b>Cách dùng:</b> Dùng để đưa ra một sự phán đoán, suy luận, hoặc ý kiến dựa trên một cơ sở, một bằng chứng, hoặc một lập trường nào đó (N).
<br>──────────<br><b>Ý nghĩa:</b> Chỉ ra cơ sở hoặc góc nhìn để đưa ra suy đoán hoặc ý kiến.
<br>──────────<br><b>Chú ý:</b>
<br>Rất giống  「から言うと」 và  「から見ると」.  「からすると」 thường nhấn mạnh hơn vào việc suy đoán dựa trên N.
<br>──────────<br><b>Ví dụ:</b>
<br>症状からすると、インフルエンザの可能性が高い。
<br>→ Xét từ triệu chứng thì khả năng cao là bị cúm.
<br><br>周囲の状況からすれば、彼の成功は難しいだろう。
<br>→ Xét từ tình hình xung quanh thì thành công của anh ấy chắc là khó khăn.
<br><br>私からすれば、それは当たり前のことだ。
<br>→ Đối với tôi (xét từ lập trường của tôi) thì đó là chuyện đương nhiên.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～から言うと  (<b>N2</b>): "Nói về ~".
<br><br>～から見ると  (<b>N2</b>): "Nhìn từ ~".
<br><br>～にしたら  /  ～にすれば  (<b>N2</b>): "Đối với ~", thường dùng khi đặt mình vào
vị trí người khác.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('53.  からと言って（からといって）: Chỉ vì; ngay cả khi; mặc dù ~.', 'Common', '     <b>Công thức:</b>
<br>V / A い / A な / N + (thể thường) +  からと言って
<br>──────────<br><b>Cách dùng:</b> Dùng để diễn tả rằng chỉ vì có lý do A không có nghĩa là B cũng luôn đúng hoặc B là điều nên làm. Thường dùng để phủ định một kết luận dễ dãi, hoặc đưa ra ý kiến trái ngược.
<br>──────────<br><b>Ý nghĩa:</b> Phủ định mối quan hệ nhân quả tuyệt đối, "không phải cứ A là B".
<br>──────────<br><b>Chú ý:</b>
<br>Vế sau thường đi với các dạng phủ định (～ない), hoặc các cách nói như  「
～とは限らない」,  「～わけではない」.
<br>──────────<br><b>Ví dụ:</b>
<br>日本に住んでいるからと言って、日本語がぺらぺらだとは限らない。
<br>→ Chỉ vì sống ở Nhật không có nghĩa là tiếng Nhật sẽ trôi chảy.
<br><br>好きだからと言って、何でも買ってあげるわけにはいかない。
<br>→ Dù là thích nhưng không phải cái gì cũng mua cho được.
<br><br>安いからと言って、すぐに買うのはやめなさい。
<br>→ Đừng có chỉ vì rẻ mà mua ngay lập tức.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～といっても  (<b>N2</b>): "Nói là... nhưng mà...", dùng khi thực tế khác với những gì được nói ra hoặc tưởng tượng từ cái tên.
<br><br>～のに  (<b>N4</b>): "Mặc dù... nhưng...", chỉ sự đối lập thông thường.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('54.  っこない: Không đời nào; chắc chắn không thể ~.', 'Common', '     <b>Công thức:</b>
<br>Động từ thể  ます (bỏ  ます) +  っこない
<br>──────────<br><b>Cách dùng:</b> Dùng để phủ định mạnh mẽ một khả năng nào đó, khẳng định rằng việc đó tuyệt đối không thể xảy ra hoặc không thể làm được. Mang tính chủ quan và thường dùng trong văn nói.
<br>──────────<br><b>Ý nghĩa:</b> Nhấn mạnh sự bất khả thi một cách tuyệt đối (theo ý người nói).
<br>──────────<br><b>Chú ý:</b>
<br>Là cách nói thân mật, không trang trọng.
<br>──────────<br><b>Ví dụ:</b>
<br>宝くじなんて、当たりっこないよ。
<br>→ Xổ số á, không đời nào trúng được đâu.
<br><br>あんなに難しい試験、私にできっこない。
<br>→ Kỳ thi khó như thế, tôi chắc chắn không thể làm được.
<br><br>今から行っても、間に合いっこない。
<br>→ Giờ có đi thì cũng không đời nào kịp.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～はずがない  (<b>N3</b>): "Làm gì có chuyện...", phủ định dựa trên logic, lẽ thường.
<br><br>～わけがない  (<b>N3</b>): "Không có lý nào...", phủ định mạnh mẽ dựa trên logic hoặc tình huống.  「っこない」 mang tính chủ quan, cảm tính hơn.
<br><br>～得ない  (<b>N2</b>): "Không thể", trang trọng hơn.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('55.  ことだ: Nên ~ (dùng để gợi ý hoặc khuyên bảo).', 'Common', '     <b>Công thức:</b>
<br>V る / V ない +  ことだ
<br>──────────<br><b>Cách dùng:</b> Dùng để đưa ra lời khuyên, gợi ý, hoặc mệnh lệnh nhẹ nhàng, thường là từ người có vị thế cao hơn hoặc có kinh nghiệm hơn nói với người khác, hoặc tự nhủ với bản thân.
<br>──────────<br><b>Ý nghĩa:</b> Chỉ ra điều nên làm hoặc không nên làm.
<br>──────────<br><b>Chú ý:</b>
<br>Không dùng để nói với người trên.
<br><br>Mang sắc thái khuyên bảo, đôi khi hơi áp đặt.
<br>──────────<br><b>Ví dụ:</b>
<br>疲れているなら、無理をしないことです。
<br>→ Nếu mệt thì nên không cố gắng quá sức.
<br><br>人の悪口は言わないことだ。
<br>→ Không nên nói xấu người khác.
<br><br>合格したければ、もっと勉強することだ。
<br>→ Nếu muốn đỗ thì nên học nhiều hơn.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～ほうがいい  (<b>N4</b>): "Nên ~", là lời khuyên thông thường, ít áp đặt hơn.
<br><br>～べきだ  (<b>N3</b>): "Nên ~", chỉ điều nên làm theo lẽ thường, đạo đức, hoặc quy
tắc chung.
<br><br>～なさい  (<b>N5</b>): "Hãy ~", là mệnh lệnh (thường dùng cho người dưới).') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('56.  ことだから: Bởi vì; vì là ~ (thường nói về người, dựa vào tính cách/đặc
điểm của họ).', 'Common', '     <b>Công thức:</b>
<br>N の +  ことだから
<br>──────────<br><b>Cách dùng:</b> Dùng khi đưa ra một phán đoán hoặc suy luận về hành động của một người (N), dựa trên tính cách, thói quen, hoặc đặc điểm vốn có của người đó mà người nói biết rõ.
<br>──────────<br><b>Ý nghĩa:</b> Nhấn mạnh "vì là (bản chất của) N nên chắc chắn sẽ...".
<br>──────────<br><b>Chú ý:</b>
<br>N thường là người.
<br><br>Vế sau là sự suy đoán dựa trên bản chất của N.
<br>──────────<br><b>Ví dụ:</b>
<br>真面目な田中さんのことだから、きっと時間通りに来るでしょう。
<br>→ Vì là anh Tanaka người nghiêm túc nên chắc chắn anh ấy sẽ đến đúng giờ.
<br><br>いつも優しい母のことだから、きっと許してくれるはずだ。
<br>→ Vì là người mẹ luôn hiền hậu của tôi nên chắc chắn mẹ sẽ tha thứ.
<br><br>あわてんぼうの彼のことだから、また何か忘れたんじゃない？
<br>→ Vì là cậu ta, một người hay vội vàng hấp tấp, nên chẳng phải lại quên gì đó rồi sao?
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～から  /  ～ので  (<b>N5/N4</b>): Chỉ lý do thông thường.
<br><br>～だけに  (<b>N2</b>): "Chính vì... nên càng...", nhấn mạnh mức độ, còn  「ことだ
から」 nhấn mạnh sự suy đoán dựa trên bản chất.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('57.  ことか: Biết bao!; làm sao!; thật là ~!', 'Common', '     <b>Công thức:</b>
<br>V た / A かった / A なだった +  ことか
<br><br>どんなに /  なんと /  どれほど + V た / A い / A な +  ことか
<br>──────────<br><b>Cách dùng:</b> Dùng để diễn tả cảm xúc mạnh mẽ, sự cảm thán, ngạc nhiên, hoặc than thở về một điều gì đó. Thường đi kèm với các từ như  「どんなに」、「なんと」
、「どれほど」 để nhấn mạnh mức độ.
<br>──────────<br><b>Ý nghĩa:</b> Nhấn mạnh mức độ của cảm xúc (vui, buồn, ngạc nhiên, khó khăn...) "Thật là...", "Biết bao nhiêu...".
<br>──────────<br><b>Chú ý:</b>
<br>Thường dùng trong văn viết hoặc khi muốn thể hiện cảm xúc một cách trang trọng, văn chương.
<br><br>Là câu cảm thán, không phải câu hỏi.
<br>──────────<br><b>Ví dụ:</b>
<br>外国で一人暮らしをするのが、どんなに寂しいことか。
<br>→ Sống một mình ở nước ngoài thật là buồn biết bao!
<br><br>合格の知らせを聞いた時、どれほど嬉しかったことか。
<br>→ Khi nghe tin báo đỗ, tôi đã vui mừng biết chừng nào!
<br><br>この日をどれだけ待ち望んだことか。
<br>→ Tôi đã mong chờ ngày này biết bao nhiêu.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>なんて～だろう  (<b>N3</b>): Cũng là câu cảm thán "Thật là...", dùng phổ biến hơn trong văn nói.
<br><br>どんなに～か  (<b>N3</b>): Cũng diễn tả mức độ "Biết bao nhiêu", thường dùng trong câu tường thuật cảm xúc.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('58.  ことなく: Mà không (làm gì dù chỉ một lần).', 'Common', '     <b>Công thức:</b>
<br>Động từ thể từ điển (V る) +  ことなく
<br>──────────<br><b>Cách dùng:</b> Diễn tả một hành động hoặc trạng thái diễn ra mà không có hành động V đi kèm. Mang sắc thái trang trọng hơn  「ないで」 hoặc  「ずに」.
<br>──────────<br><b>Ý nghĩa:</b> Nhấn mạnh việc không làm V, tương đương  「～ないで」.
<br>──────────<br><b>Chú ý:</b>
<br>Thường dùng trong văn viết hoặc các bài phát biểu, tình huống trang trọng.
<br>──────────<br><b>Ví dụ:</b>
<br>彼は一度も休むことなく、研究を続けた。
<br>→ Anh ấy đã tiếp tục nghiên cứu mà không nghỉ một lần nào.
<br><br>最後まであきらめることなく、頑張ってください。
<br>→ Xin hãy cố gắng đến cùng mà không bỏ cuộc.
<br><br>雨は止むことなく、一日中降り続いた。
<br>→ Mưa đã rơi suốt cả ngày mà không ngớt.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～ないで  (<b>N4</b>): "Mà không ~", dùng phổ biến nhất trong cả văn nói và viết.
<br><br>～ずに  (<b>N3</b>): "Mà không ~", trang trọng hơn  「ないで」 một chút, thường
dùng trong văn viết.  「ことなく」 là cách nói trang trọng nhất.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('59.  ことに: Thật là ~ (nhấn mạnh cảm xúc).', 'Common', '     <b>Công thức:</b>
<br>V た / A い / A な +  ことに
<br>──────────<br><b>Cách dùng:</b> Đứng ở đầu câu, dùng để nhấn mạnh cảm xúc, sự ngạc nhiên, hoặc đánh giá của người nói về sự việc được trình bày ở vế sau.
<br>──────────<br><b>Ý nghĩa:</b> Nhấn mạnh cảm xúc của người nói đối với sự việc, "Thật là...", "Điều đáng... là...".
<br>──────────<br><b>Chú ý:</b>
<br>Thường đi với các từ chỉ cảm xúc hoặc đánh giá (嬉しい、悲しい、驚いた
、残念な、幸いな...).
<br>──────────<br><b>Ví dụ:</b>
<br>嬉しいことに、試験に合格しました。
<br>→ Thật là vui, tôi đã thi đỗ.
<br><br>驚いたことに、彼は私の元カレの弟だった。
<br>→ Thật là ngạc nhiên, anh ta lại là em trai của bạn trai cũ tôi.
<br><br>残念なことに、楽しみにしていた旅行が中止になった。
<br>→ Thật là đáng tiếc, chuyến du lịch mà tôi mong chờ đã bị hủy.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>本当に（ほんとうに）  (<b>N4</b>): "Thật sự", dùng để nhấn mạnh sự thật hoặc cảm xúc, nhưng  「ことに」 mang tính nhấn mạnh cảm xúc một cách trang trọng hơn khi đứng đầu câu.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('60.  ことにはならない: Chỉ vì... không có nghĩa là ~.', 'Common', '     <b>Công thức:</b>
<br>[Lý do/Sự thật] +  からといって +  ～ことにはならない
<br><br>[Điều kiện] +  だけでは +  ～ことにはならない
<br>──────────<br><b>Cách dùng:</b> Dùng để phủ nhận rằng chỉ dựa vào một lý do hoặc một điều kiện nào đó thì không thể kết luận hoặc khẳng định một điều khác.
<br>──────────<br><b>Ý nghĩa:</b> Diễn tả "Chỉ ... thôi thì không có nghĩa là...", "Không thể nói là...".
<br>──────────<br><b>Chú ý:</b>
<br>Thường dùng để bác bỏ một suy luận đơn giản hoặc vội vàng.
<br><br>Gần giống với  「～わけではない」,  「～とは限らない」.
<br>──────────<br><b>Ví dụ:</b>
<br>少し日本語が話せるからと言って、通訳ができることにはならない。
<br>→ Chỉ vì nói được một chút tiếng Nhật không có nghĩa là có thể làm phiên dịch.
<br><br>書類を提出しただけでは、申し込みが完了したことにはならない。
<br>→ Chỉ nộp tài liệu thôi thì không có nghĩa là việc đăng ký đã hoàn tất.
<br><br>知っていることにはならない。<br>→ (Không có nghĩa là biết.)
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～わけではない  (<b>N3</b>): "Không hẳn là...", "không phải là...".
<br><br>～とは限らない  (<b>N3</b>): "Không nhất thiết là...", "chưa chắc là...".  「ことに
はならない」 nhấn mạnh hơn vào việc không thể được coi là.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('61.  くせして: Mặc dù; dù ~ (thể hiện sự bất mãn, chỉ trích).', 'Common', '     <b>Công thức:</b>
<br>V / A い / A な / N + (thể thường) +  くせして
<br><br>(A な +  な / N +  の +  くせして)
<br>──────────<br><b>Cách dùng:</b> Giống như  「くせに」, dùng để diễn tả sự đối lập giữa hai vế, nhưng mang sắc thái chỉ trích, bất mãn, hoặc khinh thường mạnh hơn. Thường dùng trong văn nói thân mật, đôi khi hơi thô.
<br>──────────<br><b>Ý nghĩa:</b> "Vậy mà lại...", thể hiện sự bất mãn với sự mâu thuẫn.
<br>──────────<br><b>Chú ý:</b>
<br>Mang tính văn nói và thân mật hơn  「くせに」.
<br><br>Chỉ dùng khi nói về người khác, không dùng cho bản thân.
<br><br>Không dùng với người trên.
<br>──────────<br><b>Ví dụ:</b>
<br>知らないくせして、知っているふりをするな。
<br>→ Đã không biết thì đừng có giả vờ là biết.
<br><br>子供のくせして、大人のような口をきく。
<br>→ Dù là trẻ con mà lại nói năng như người lớn.
<br><br>お金もないくせして、高いものばかり欲しがる。
<br>→ Tiền thì không có vậy mà toàn đòi những thứ đắt tiền.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～くせに  (<b>N3</b>): Nghĩa rất giống, "mặc dù", cũng mang sắc thái chỉ trích, nhưng  「くせして」 có thể mạnh hơn và thân mật hơn.
<br><br>～のに  (<b>N4</b>): "Mặc dù", chỉ sự đối lập thông thường, không nhất thiết mang ý chỉ trích.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('62.  まだしも: ~ thì còn được; ~ thì còn hơn.', 'Common', '     <b>Công thức:</b>
<br>N +  なら +  まだしも
<br><br>V る / A い / A な +  なら +  まだしも
<br>──────────<br><b>Cách dùng:</b> Dùng để so sánh hai sự việc, và cho rằng vế trước (A) còn có thể chấp nhận được, nhưng vế sau (B) thì quá đáng, không thể chấp nhận được.
<br>──────────<br><b>Ý nghĩa:</b> Nhấn mạnh sự không chấp nhận được của vế sau bằng cách nói rằng vế trước "còn đỡ hơn".
<br>──────────<br><b>Chú ý:</b>
<br>Vế sau thường là những điều tiêu cực, quá mức.
<br>──────────<br><b>Ví dụ:</b>
<br>１０分や２０分の遅刻ならまだしも、１時間も待たせるなんて許せない。
<br>→ Nếu trễ 10 hay 20 phút thì còn được, chứ bắt chờ cả tiếng đồng hồ thì không thể tha thứ được.
<br><br>少しのミスならまだしも、こんなに大きな失敗は問題だ。
<br>→ Nếu là lỗi nhỏ thì còn đỡ, chứ thất bại lớn thế này thì là vấn đề đấy.
<br><br>旅行先が国内ならまだしも、海外となると準備が大変だ。
<br>→ Nếu điểm du lịch là trong nước thì còn được, chứ là nước ngoài thì chuẩn bị mệt lắm.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～はともかく  (<b>N2</b>): "Khoan hãy nói đến A, B mới là quan trọng/vấn đề". Cả hai đều nêu A để nhấn mạnh B, nhưng  「まだしも」 so sánh mức độ chấp nhận được.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('63.  まい: Sẽ không; có lẽ sẽ không; định không; không được ~.', 'Common', '     <b>Công thức:</b>
<br>V る +  まい (Nhóm 1&2, một số V nhóm 3)
<br><br>V ます (bỏ  ます) +  まい (Nhóm 1&2)
<br><br>するまい /  すまい /  くるまい /  こまい (Động từ đặc biệt)
<br>──────────<br><b>Cách dùng:</b>
<br>1.   Phủ định ý chí: Diễn tả ý chí mạnh mẽ rằng sẽ không làm gì đó (giống  ～ないつもりだ).
<br>2.   Phủ định suy đoán: Diễn tả sự suy đoán rằng có lẽ sẽ không xảy ra (giống  ～ないだろう).
<br>──────────<br><b>Ý nghĩa:</b> Thể hiện sự phủ định về ý chí hoặc suy đoán.
<br>──────────<br><b>Chú ý:</b>
<br>Là cách nói hơi cổ và trang trọng, thường dùng trong văn viết hoặc diễn văn.
<br><br>Có thể dùng lặp lại  「V るまい、V るまい」 để nhấn mạnh sự phân vân.
<br>──────────<br><b>Ví dụ:</b>
<br>もう二度とあんな間違いはするまいと心に誓った。
<br>→ Tôi đã thề với lòng là sẽ không bao giờ mắc sai lầm như thế nữa.
<br><br>彼が本当のことを言うことはあるまい。
<br>→ Có lẽ anh ta sẽ không nói sự thật đâu.
<br><br>行こうか行くまいか、迷っている。
<br>→ Tôi đang phân vân không biết nên đi hay không.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～ないだろう  (<b>N4</b>): "Có lẽ sẽ không", chỉ sự suy đoán phủ định, phổ biến hơn.
<br><br>～つもりはない  (<b>N3</b>): "Không định", chỉ sự phủ định ý chí, phổ biến hơn.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('64.  ままに: Cứ theo như ~.', 'Common', '     <b>Công thức:</b>
<br>V られる +  ままに
<br><br>V る / N の +  ままに
<br>──────────<br><b>Cách dùng:</b> Diễn tả việc làm theo y như sự chỉ dẫn, gợi ý, mong muốn, hoặc trạng thái tự nhiên của một cái gì đó, phó mặc cho nó.
<br>──────────<br><b>Ý nghĩa:</b> Nhấn mạnh việc làm theo một cách tự nhiên, không chống cự, thuận theo.
<br>──────────<br><b>Chú ý:</b>
<br>Thường đi với các động từ như  「言われる」、「誘われる」、「思う」
、「心」、「足」...
<br><br>Mang sắc thái phó mặc, làm theo một cách tự nhiên.
<br>──────────<br><b>Ví dụ:</b>
<br>セールスマンに言われるままに、高価な契約をしてしまった。
<br>→ Tôi đã ký một hợp đồng đắt tiền cứ theo như lời người bán hàng nói.
<br><br>足の向くままに歩いていたら、知らない場所に来てしまった。
<br>→ Cứ đi theo chân đưa lối, tôi đã đến một nơi không biết.
<br><br>心の赴くままに、絵を描く。
<br>→ Tôi vẽ tranh cứ theo như con tim mách bảo.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～通りに  (<b>N3</b>): "Đúng theo như", nhấn mạnh sự tuân thủ chính xác theo chỉ dẫn, kế hoạch.
<br><br>～ように  (<b>N4</b>): "Theo như", "giống như", có thể dùng rộng hơn.  「ままに
」 có sắc thái phó mặc, tự nhiên hơn.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('65.  全く～ない（まったく～ない）: Hoàn toàn không ~.', 'Common', '     <b>Công thức:</b>
<br>全く + V ない / A くない / A でない / N でない
<br>──────────<br><b>Cách dùng:</b> Dùng để phủ định hoàn toàn một sự việc hoặc trạng thái. Nhấn mạnh mức độ "không" là tuyệt đối.
<br>──────────<br><b>Ý nghĩa:</b> Tương tự  「全然～ない」, nhưng có thể mang sắc thái trang trọng hơn
một chút.
<br>──────────<br><b>Chú ý:</b>
<br>Luôn đi với thể phủ định.
<br><br>Cũng có thể dùng với nghĩa khẳng định  「全く～だ」 (Hoàn toàn là ~) nhưng ít phổ biến hơn dạng phủ định.
<br>──────────<br><b>Ví dụ:</b>
<br>彼の言っていることは、全く理解できない。
<br>→ Những gì anh ta nói tôi hoàn toàn không thể hiểu được.
<br><br>昨日の試験は全くできなかった。
<br>→ Bài thi hôm qua tôi hoàn toàn không làm được.
<br><br>私はお酒が全く飲めません。
<br>→ Tôi hoàn toàn không thể uống rượu.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>全然（ぜんぜん）～ない  (<b>N5</b>): Nghĩa tương tự, "hoàn toàn không", rất phổ biến.
<br><br>ちっとも～ない  (<b>N2</b>): "Không ~ chút nào cả", thường mang cảm xúc hơn.
<br><br>少しも（すこしも）～ない  (<b>N2</b>): "Không một chút nào", cũng nhấn mạnh
sự phủ định hoàn toàn.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('66.  もかまわず: Không quan tâm đến; bất chấp ~.', 'Common', '     <b>Công thức:</b>
<br>N +  もかまわず
<br><br>V るの +  もかまわず
<br>──────────<br><b>Cách dùng:</b> Diễn tả việc thực hiện một hành động mà không để ý, không bận tâm đến những thứ xung quanh (người khác, hoàn cảnh, quy tắc...). Thường dùng để chỉ những hành động hơi tiêu cực, thiếu suy nghĩ hoặc liều lĩnh.
<br>──────────<br><b>Ý nghĩa:</b> Nhấn mạnh sự phớt lờ, không quan tâm đến những yếu tố xung quanh.
<br>──────────<br><b>Chú ý:</b>
<br>Thường dùng để mô tả hành động của người khác.
<br><br>Có thể mang sắc thái phê phán.
<br>──────────<br><b>Ví dụ:</b>
<br>彼女は人目もかまわず、道で大声で泣いた。
<br>→ Cô ấy đã khóc lớn trên đường mà không quan tâm đến ánh mắt người khác.
<br><br>子供たちは服が汚れるのもかまわず、泥遊びをしている。
<br>→ Lũ trẻ đang chơi bùn mà không bận tâm đến việc quần áo bị bẩn.
<br><br>彼は危険もかまわず、燃えている家の中に飛び込んだ。
<br>→ Anh ấy đã lao vào ngôi nhà đang cháy bất chấp nguy hiểm.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～を気にしないで  (<b>N4</b>): "Không để tâm đến ~", cách nói thông thường hơn.
<br><br>～にもかかわらず  (<b>N2</b>): "Mặc dù ~", chỉ sự đối lập, trang trọng hơn và
không nhất thiết mang ý phớt lờ.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('67.  も当然だ（もとうぜんだ）: ~ là đương nhiên; thảo nào ~.', 'Common', '     <b>Công thức:</b>
<br>～のは当然だ (Noha touzen da)
<br><br>～ても当然だ (Temo touzen da)
<br>──────────<br><b>Cách dùng:</b> Diễn tả rằng một kết quả hoặc tình huống nào đó là điều hợp lý, dễ hiểu, không có gì đáng ngạc nhiên dựa trên nguyên nhân hoặc tình huống đã có.
<br>──────────<br><b>Ý nghĩa:</b> Khẳng định tính hợp lý, đương nhiên của một sự việc.
<br>──────────<br><b>Chú ý:</b>
<br>Có thể dùng với  「て当然だ」 (V て +  当然だ).
<br>──────────<br><b>Ví dụ:</b>
<br>あれだけ努力したのだから、彼が成功するのも当然だ。
<br>→ Vì đã nỗ lực đến thế nên việc anh ấy thành công cũng là đương nhiên.
<br><br>約束を破ったのだから、彼女が怒るのも当然だ。
<br>→ Vì đã thất hứa nên việc cô ấy tức giận cũng là đương nhiên.
<br><br>何も勉強しなかったのだから、試験に落ちても当然だ。
<br>→ Vì chẳng học gì cả nên dù thi trượt cũng là đương nhiên.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～て当たり前だ  (<b>N3</b>): "Là đương nhiên", nghĩa rất giống, nhưng có thể mang sắc thái mạnh hơn, "hiển nhiên là vậy".
<br><br>～はずだ  (<b>N4</b>): "Chắc chắn là", diễn tả sự suy đoán có căn cứ, nhưng không mạnh bằng "đương nhiên".') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('68.  もの  /  もん: Bởi vì; vì (chỉ lý do/ viện cớ/ bất mãn - thường dùng trong
văn nói).', 'Common', '     <b>Công thức:</b>
<br>[Câu] +  もの /  もん
<br>──────────<br><b>Cách dùng:</b> Đứng cuối câu, dùng để đưa ra lý do, lời giải thích, hoặc viện cớ. Thường được dùng trong các cuộc hội thoại thân mật, đặc biệt là bởi phụ nữ và trẻ em. Mang sắc thái chủ quan, đôi khi là nũng nịu hoặc bất mãn.
<br>──────────<br><b>Ý nghĩa:</b> Nhấn mạnh lý do cá nhân, mang tính biện hộ.
<br>──────────<br><b>Chú ý:</b>
<br>Rất thân mật, không trang trọng.
<br><br>「もん」 là dạng thân mật hơn của  「もの」.
<br><br>Thường đi với  「だって」 ở đầu câu.
<br>──────────<br><b>Ví dụ:</b>
<br>A:  どうして遅刻したの？ (Sao lại đến muộn?) B:  だって、電車が遅れたんだもの。<br>→ (Tại vì... tàu điện bị trễ mà.)
<br><br>もう寝るの？子供なんだもん、早く寝なきゃ。<br>→ (Ngủ rồi à? Vì là trẻ con mà, phải ngủ sớm chứ.)
<br><br>勉強したくないんだもん。<br>→ (Tại con không muốn học mà.)
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～から  (<b>N5</b>): Chỉ lý do thông thường.
<br><br>～んだ  /  ～んだもん  (<b>N4/N3</b>): Cũng dùng để giải thích lý do, rất giống
nhau, mang tính văn nói.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('69.  ものだ: Diễn tả cảm xúc; hồi tưởng; nêu lên sự thật/bản chất.', 'Common', '     <b>Công thức:</b>
<br>1.   V る / V ない +  ものだ (Bản chất/Quy luật/Lời khuyên)
<br>2.   V た +  ものだ (Hồi tưởng)
<br>3.   V たい / A い / A な +  ものだ (Cảm thán)
<br>──────────<br><b>Cách dùng:</b> Là một mẫu ngữ pháp đa nghĩa:
<br>1.   Bản chất: Diễn tả một sự thật hiển nhiên, một quy luật tự nhiên, hoặc một điều nên/không nên làm theo lẽ thường.
<br>2.   Hồi tưởng: Nhớ lại những thói quen, sự việc thường xảy ra trong quá khứ.
<br>3.   Cảm thán: Nhấn mạnh cảm xúc, sự ngạc nhiên, thán phục.
<br>──────────<br><b>Ý nghĩa:</b> Tùy thuộc vào ngữ cảnh, chỉ bản chất, hồi tưởng, hoặc cảm xúc.
<br>──────────<br><b>Chú ý:</b>
<br>Cần phân biệt các nghĩa dựa vào dạng động từ/tính từ đi trước và ngữ cảnh.
<br>──────────<br><b>Ví dụ:</b>
<br>1.   人間は誰でも間違いを犯すものだ。<br>→ (Con người ai cũng là kẻ phạm sai lầm
- Bản chất)
<br>2.   子供のころ、よくこの川で泳いだものだ。<br>→ (Hồi nhỏ, tôi thường hay bơi ở con sông này - Hồi tưởng)
<br>3.   一度でいいから、世界一周旅行をしてみたいものだ。<br>→ (Dù chỉ một lần cũng được, tôi muốn thử đi du lịch vòng quanh thế giới biết bao - Cảm thán)
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～べきだ  (<b>N3</b>): "Nên ~", chỉ nghĩa vụ, lời khuyên mạnh.
<br><br>～ことだ  (<b>N2</b>): "Nên ~", chỉ lời khuyên.
<br><br>～ことか  (<b>N2</b>): "Biết bao", chỉ cảm thán mạnh.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('70.  ものだから: Vì; do đó; lý do là ~.', 'Common', '     <b>Công thức:</b>
<br>V / A い / A な / N + (thể thường) +  ものだから /  もので
<br><br>(A な +  な / N +  な +  ものだから)
<br>──────────<br><b>Cách dùng:</b> Dùng để trình bày lý do, nhưng thường là những lý do mang tính khách quan, hoàn cảnh bắt buộc, hoặc để biện minh một cách nhẹ nhàng.
<br>──────────<br><b>Ý nghĩa:</b> Đưa ra lý do, thường mang sắc thái biện minh, giải thích cho hoàn cảnh.
<br>──────────<br><b>Chú ý:</b>
<br>Trang trọng hơn  「もの /  もん」.
<br><br>Thường dùng khi muốn giải thích, biện minh cho một kết quả (thường là không tốt hoặc gây phiền phức).
<br>──────────<br><b>Ví dụ:</b>
<br>事故があったものだから、電車が遅れてしまった。
<br>→ Vì có tai nạn nên tàu điện đã bị trễ.
<br><br>急いでいたもので、挨拶もせずにすみません。
<br>→ Vì đang vội nên xin lỗi vì đã không chào hỏi.
<br><br>彼はまだ子供なものですから、失礼をお許しください。
<br>→ Vì cháu nó còn nhỏ nên xin hãy bỏ qua sự thất lễ.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～から  /  ～ので  (<b>N5/N4</b>): Chỉ lý do thông thường.  「ものだから」
thường mang sắc thái biện minh hơn.
<br><br>～もの  /  もん  (<b>N2</b>): Chỉ lý do, nhưng thân mật và chủ quan hơn.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('71.  ものではない: Không nên làm gì đó; không thể ~.', 'Common', '     <b>Công thức:</b>
<br>V る +  ものではない /  もんではない
<br>──────────<br><b>Cách dùng:</b>
<br>1.   Lời khuyên/Quy tắc: Diễn tả một điều không nên làm theo lẽ thường, đạo đức, hoặc quy tắc xã hội.
<br>2.   Phủ định khả năng: Diễn tả một việc gì đó không thể làm được (ít dùng hơn).
<br>──────────<br><b>Ý nghĩa:</b> Nhấn mạnh "không nên" hoặc "không thể".
<br>──────────<br><b>Chú ý:</b>
<br>Thường dùng với nghĩa "không nên".
<br><br>Mang tính răn dạy, khuyên bảo chung chung.
<br>──────────<br><b>Ví dụ:</b>
<br>目上の人に対して、そんな失礼なことを言うものではない。
<br>→ Không nên nói những lời thất lễ như vậy với người trên.
<br><br>人の悪口は聞くものではない。
<br>→ Không nên nghe chuyện nói xấu người khác.
<br><br>約束は簡単に破るものではない。
<br>→ Lời hứa không phải là thứ có thể dễ dàng phá vỡ.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～てはいけない  (<b>N5</b>): "Không được làm", chỉ sự cấm đoán trực tiếp.
<br><br>～べきではない  (<b>N3</b>): "Không nên", chỉ điều không nên làm theo lẽ
thường/đạo đức.  「ものではない」 mang tính quy tắc xã hội, lẽ thường
chung chung hơn.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('72.  ものがある: Có cảm giác như là; có điều gì đó ~.', 'Common', '     <b>Công thức:</b>
<br>V る / A い / A な +  ものがある
<br>──────────<br><b>Cách dùng:</b> Dùng để diễn tả rằng người nói cảm nhận được một điều gì đó đặc biệt, một cảm giác khó tả, hoặc một giá trị nào đó từ một sự vật, sự việc.
<br>──────────<br><b>Ý nghĩa:</b> Biểu thị sự cảm nhận sâu sắc, "có một cái gì đó...", "quả là có...".
<br>──────────<br><b>Chú ý:</b>
<br>Thường dùng để thể hiện cảm nhận chủ quan, đánh giá.
<br>──────────<br><b>Ví dụ:</b>
<br>彼の絵には、人の心を惹きつけるものがある。
<br>→ Tranh của anh ấy có một cái gì đó thu hút lòng người.
<br><br>彼の話には、どこか納得できないものがある。
<br>→ Trong câu chuyện của anh ta, có điều gì đó mà tôi không thể chấp nhận được.
<br><br>彼の演奏には、感動させるものがある。
<br>→ Buổi biểu diễn của anh ấy có điều gì đó khiến người ta cảm động.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～感じがする  (<b>N3</b>): "Có cảm giác là...", diễn tả cảm nhận trực tiếp hơn.
<br><br>～気がする  (<b>N4</b>): "Cảm thấy hình như là...", diễn tả cảm giác không chắc
chắn.  「ものがある」 thường chỉ một giá trị hoặc đặc tính sâu sắc hơn.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('73.  ものか  /  もんか: Làm gì có chuyện; không đời nào ~.', 'Common', '     <b>Công thức:</b>
<br>V る / A い / A な / N な +  ものか /  もんか
<br>──────────<br><b>Cách dùng:</b> Dùng để phủ định mạnh mẽ một điều gì đó, thể hiện ý chí hoặc sự quả quyết của người nói rằng "tuyệt đối không", "không đời nào". Thường dùng trong văn nói thân mật.
<br>──────────<br><b>Ý nghĩa:</b> Nhấn mạnh sự phủ định tuyệt đối, mang tính cảm xúc.
<br>──────────<br><b>Chú ý:</b>
<br>「もんか」 là dạng thân mật, suồng sã hơn.
<br><br>Thường được nam giới sử dụng nhiều hơn.
<br><br>Thể hiện ý chí mạnh mẽ "nhất định không làm".
<br>──────────<br><b>Ví dụ:</b>
<br>あんな失礼な人に、二度と会うものか。
<br>→ Người bất lịch sự như thế, không đời nào tôi gặp lại lần nữa.
<br><br>負けるもんか！最後まで戦うぞ！
<br>→ Không đời nào thua! Sẽ chiến đấu đến cùng!
<br><br>あの店の料理が美味しいものか。二度と行かない。
<br>→ Món ăn quán đó mà ngon á? Làm gì có chuyện! Tôi sẽ không đến lần thứ hai.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～はずがない  (<b>N3</b>): "Làm gì có chuyện...", phủ định dựa trên logic.
<br><br>～わけがない  (<b>N3</b>): "Không có lý nào...", phủ định mạnh mẽ dựa trên logic.
「ものか」 mang tính ý chí, cảm xúc mạnh hơn.
<br><br>～っこない  (<b>N2</b>): "Chắc chắn không thể...", phủ định khả năng, thân mật.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('74.  ものなら: Nếu có thể; nếu [A] có thể, thì [B] ~.', 'Common', '     <b>Công thức:</b>
<br>Động từ thể khả năng (V れる) +  ものなら
<br>──────────<br><b>Cách dùng:</b> Dùng để diễn tả một giả định, thường là về một điều khó hoặc không thể xảy ra. Vế sau thường thể hiện mong muốn mạnh mẽ hoặc một kết quả tất yếu nếu điều đó xảy ra.
<br>──────────<br><b>Ý nghĩa:</b> Đưa ra giả định về một điều khó xảy ra, "Nếu mà có thể... thì tôi muốn/sẽ...".
<br>──────────<br><b>Chú ý:</b>
<br>Thường đi với động từ thể khả năng.
<br><br>Vế trước thường là điều khó thực hiện.
<br><br>Vế sau thường thể hiện mong muốn (～たい) hoặc một hành động sẵn sàng làm.
<br>──────────<br><b>Ví dụ:</b>
<br>やれるものなら、やってみろ。
<br>→ Nếu có thể làm được thì làm thử đi.
<br><br>昔に戻れるものなら、戻って人生をやり直したい。
<br>→ Nếu có thể quay lại quá khứ, tôi muốn quay lại làm lại cuộc đời.
<br><br>買えるものなら、あの大きな家が欲しい。
<br>→ Nếu có thể mua được, tôi muốn có căn nhà lớn đó.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～なら  (<b>N4</b>): "Nếu là", chỉ điều kiện thông thường.
<br><br>もし～たら  (<b>N4</b>): "Nếu ~ thì ~", chỉ giả định thông thường.  「ものなら」
nhấn mạnh vào điều kiện khó xảy ra.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('75.  ものの: Nhưng; mặc dù; dù cho ~.', 'Common', '     <b>Công thức:</b>
<br>V / A い / A な / N + (thể thường) +  ものの
<br><br>(A な +  な / N +  である +  ものの)
<br>──────────<br><b>Cách dùng:</b> Dùng để nối hai vế có ý nghĩa tương phản, trái ngược. Vế trước thừa nhận một sự thật, nhưng vế sau lại đưa ra một kết quả hoặc tình trạng không tương xứng, bất ngờ. Mang sắc thái trang trọng hơn  「けど」.
<br>──────────<br><b>Ý nghĩa:</b> "Tuy là... nhưng mà...", chỉ sự đối lập.
<br>──────────<br><b>Chú ý:</b>
<br>Trang trọng hơn  「けど」,  「が」.
<br><br>Vế sau thường là điều không như mong đợi hoặc không phù hợp với vế trước.
<br>──────────<br><b>Ví dụ:</b>
<br>免許は取ったものの、車がないので運転できない。
<br>→ Mặc dù đã lấy được bằng lái, nhưng vì không có xe nên không thể lái được.
<br><br>薬を飲んだものの、熱はなかなか下がらない。
<br>→ Dù đã uống thuốc nhưng sốt mãi không hạ.
<br><br>大学は卒業したものの、まだ就職先が見つからない。
<br>→ Tuy đã tốt nghiệp đại học nhưng tôi vẫn chưa tìm được việc làm.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～けれど  /  ～が  (<b>N5</b>): "Nhưng", dùng phổ biến nhất.
<br><br>～のに  (<b>N4</b>): "Mặc dù", thường mang sắc thái bất mãn, ngạc nhiên.
<br><br>～にもかかわらず  (<b>N2</b>): "Bất chấp", "mặc dù", trang trọng, nhấn mạnh sự
đối lập mạnh.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('76.  もっとも: Nhưng mà; tuy nhiên; mặc dù ~.', 'Common', '     <b>Công thức:</b>
<br>[Câu 1]。もっとも、[Câu 2]。
<br>──────────<br><b>Cách dùng:</b> Dùng để bổ sung thông tin, đưa ra một ngoại lệ, hoặc một điều kiện giới hạn cho những gì đã nói ở vế trước.
<br>──────────<br><b>Ý nghĩa:</b> Bổ sung thêm một điểm cần lưu ý, một ngoại lệ, "Tuy nhiên...", "Có điều là...".
<br>──────────<br><b>Chú ý:</b>
<br>Thường đứng đầu câu thứ hai.
<br><br>Dùng để hạn chế hoặc làm rõ ý của câu trước.
<br>──────────<br><b>Ví dụ:</b>
<br>旅行は無料です。もっとも、食費は自己負担となります。
<br>→ Chuyến du lịch là miễn phí. Tuy nhiên, tiền ăn sẽ tự túc.
<br><br>彼は試験に合格した。もっとも、それは一番簡単なレベルだったが。
<br>→ Anh ta đã thi đỗ. Mặc dù, đó là cấp độ dễ nhất.
<br><br>このレストランは美味しい。もっとも、値段は少し高い。
<br>→ Nhà hàng này ngon. Có điều là, giá hơi cao một chút.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>ただし  (<b>N2</b>): "Tuy nhiên", "nhưng", cũng dùng để bổ sung điều kiện hoặc ngoại lệ, rất giống nhau.
<br><br>しかし  (<b>N4</b>): "Tuy nhiên", chỉ sự đối lập mạnh mẽ hơn.
<br><br>でも  (<b>N5</b>): "Nhưng", dùng phổ biến trong văn nói.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('77.  もう少しで（もうすこしで）: Suýt nữa; gần ~.', 'Common', '     <b>Công thức:</b>
<br>もう少しで + V る +  ところだった
<br>──────────<br><b>Cách dùng:</b> Diễn tả một tình huống suýt nữa đã xảy ra (thường là việc không tốt), nhưng cuối cùng lại không xảy ra.
<br>──────────<br><b>Ý nghĩa:</b> Nhấn mạnh sự "suýt", "chút nữa thì...".
<br>──────────<br><b>Chú ý:</b>
<br>Luôn đi với  「ところだった」 (đã suýt).
<br>──────────<br><b>Ví dụ:</b>
<br>もう少しで車にひかれるところだった。
<br>→ Suýt nữa thì tôi bị xe ô tô đâm.
<br><br>あと５分遅れていたら、もう少しで飛行機に乗り遅れるところだった。
<br>→ Nếu muộn thêm 5 phút nữa thì suýt nữa đã lỡ chuyến bay.
<br><br>もう少しでゴールだったのに、転んでしまった。
<br>→ Suýt nữa là về đích rồi, vậy mà lại bị ngã.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～ところだった  (<b>N3</b>): Là phần cốt lõi của mẫu câu này, "suýt nữa thì...".
<br><br>あやうく～ところだった  (<b>N2</b>): "Suýt soát", "nguy hiểm", nhấn mạnh sự
may mắn thoát khỏi tình huống xấu.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('78.  ないではいられない: Không thể không cảm thấy; không thể không làm
~.', 'Common', '     <b>Công thức:</b>
<br>Động từ thể  ない (bỏ  ない) +  ないではいられない
<br>──────────<br><b>Cách dùng:</b> Diễn tả một cảm xúc hoặc hành động mà người nói không thể kìm nén được, dù có muốn hay không cũng phải bộc lộ hoặc thực hiện.
<br>──────────<br><b>Ý nghĩa:</b> Nhấn mạnh sự không thể kìm nén được cảm xúc hoặc hành động.
<br>──────────<br><b>Chú ý:</b>
<br>Chủ ngữ thường là ngôi thứ nhất (tôi). Nếu là ngôi thứ ba thì phải có  「ようだ」,  「らしい」.
<br><br>Thường dùng cho cảm xúc hoặc hành động phát sinh tự nhiên.
<br>──────────<br><b>Ví dụ:</b>
<br>彼の面白い話を聞いて、笑わないではいられなかった。
<br>→ Nghe câu chuyện thú vị của anh ấy, tôi đã không thể không cười.
<br><br>あの感動的な映画を見て、泣かないではいられなかった。
<br>→ Xem bộ phim cảm động đó, tôi đã không thể không khóc.
<br><br>この状況を見て、何か言わないではいられない。
<br>→ Thấy tình hình này, tôi không thể không nói gì đó.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～ずにはいられない  (<b>N2</b>): Hoàn toàn giống về nghĩa, nhưng  「ず」 là thể phủ định cổ, trang trọng hơn.
<br><br>～てならない  (<b>N2</b>): "Rất ~", "không chịu được", dùng để nhấn mạnh cảm
xúc mạnh.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('79.  ないことには～ない: Nếu không ~ thì không ~.', 'Common', '     <b>Công thức:</b>
<br>V ない +  ことには + [Vế sau ở thể phủ định]
<br>──────────<br><b>Cách dùng:</b> Diễn tả rằng nếu không thực hiện hành động A (vế trước) thì hành động B (vế sau) cũng không thể thực hiện được. A là điều kiện tiên quyết cho B.
<br>──────────<br><b>Ý nghĩa:</b> Nhấn mạnh A là điều kiện bắt buộc phải có để B xảy ra.
<br>──────────<br><b>Chú ý:</b>
<br>Cả hai vế đều ở thể phủ định (hoặc vế sau mang ý nghĩa phủ định).
<br>──────────<br><b>Ví dụ:</b>
<br>実際に会ってみないことには、どんな人かわからない。
<br>→ Nếu không thực sự gặp thử thì không thể biết là người thế nào.
<br><br>詳しく調べてみないことには、原因は特定できない。
<br>→ Nếu không điều tra chi tiết thì không thể xác định được nguyên nhân.
<br><br>お金がないことには、この計画は始められない。
<br>→ Nếu không có tiền thì kế hoạch này không thể bắt đầu được.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～なければ～ない  (<b>N4</b>): "Nếu không ~ thì không ~", chỉ điều kiện thông thường.  「ないことには」 nhấn mạnh hơn vào tính "tiên quyết".
<br><br>～てからでないと～ない  (<b>N3</b>): "Nếu chưa ~ thì không ~", nhấn mạnh vào trình tự thời gian, phải làm A xong rồi mới làm B.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('80.  中を  /  中では（なかを  /  なかでは）: Trong; giữa lúc; khi; trong khi ~.', 'Common', '     <b>Công thức:</b>
<br>N +  の +  中を /  中では
<br><br>V ている / A い +  中を /  中では
<br>──────────<br><b>Cách dùng:</b> Dùng để diễn tả một hành động xảy ra trong một hoàn cảnh, tình huống, hoặc điều kiện đặc biệt nào đó (thường là khó khăn, không thuận lợi).
<br>──────────<br><b>Ý nghĩa:</b> Nhấn mạnh hành động diễn ra trong một bối cảnh cụ thể.
<br>──────────<br><b>Chú ý:</b>
<br>Thường dùng với những hoàn cảnh như mưa, tuyết, bận rộn, nguy hiểm...
<br><br>「中を」 thường đi với động từ di chuyển.
<br><br>「中では」 chỉ bối cảnh chung.
<br>──────────<br><b>Ví dụ:</b>
<br>雨の中を、わざわざお越しいただきありがとうございます。
<br>→ Cảm ơn quý khách đã cất công đến đây giữa lúc trời mưa.
<br><br>お忙しい中を、手伝ってくださって感謝します。
<br>→ Tôi rất biết ơn vì anh đã giúp đỡ giữa lúc bận rộn.
<br><br>危険な中では、冷静に行動することが大切だ。
<br>→ Trong lúc nguy hiểm, việc hành động bình tĩnh là rất quan trọng.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～間に  (<b>N4</b>): "Trong khi", chỉ một khoảng thời gian.
<br><br>～うちに  (<b>N3</b>): "Trong lúc", thường dùng khi cần tranh thủ làm gì đó hoặc
khi có sự thay đổi.
<br><br>～ときに  (<b>N5</b>): "Khi", chỉ thời điểm.  「中を/中では」 nhấn mạnh hơn vào
bối cảnh/hoàn cảnh.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('81.  なくはない  /  なくもない: Không phải là không; cũng có thể ~.', 'Common', '     <b>Công thức:</b>
<br>V なくはない / V なくもない
<br><br>A くなくはない / A くなくもない
<br><br>A でなくはない / A でなくもない
<br>──────────<br><b>Cách dùng:</b> Là dạng phủ định kép, dùng để khẳng định một cách yếu ớt, dè dặt, hoặc miễn cưỡng. Diễn tả rằng "không phải là hoàn toàn không, mà cũng có một chút khả năng/cảm giác là có".
<br>──────────<br><b>Ý nghĩa:</b> Khẳng định nhẹ, "cũng có thể là...", "không phải là không...".
<br>──────────<br><b>Chú ý:</b>
<br>Là cách nói vòng vo, không trực tiếp.
<br>──────────<br><b>Ví dụ:</b>
<br>納豆は食べなくはないですが、あまり好きではありません。
<br>→ Natto thì không phải là tôi không ăn được, nhưng không thích lắm.
<br><br>難しいけれど、今から頑張れば合格できなくもない。
<br>→ Khó thì khó thật, nhưng nếu cố gắng từ bây giờ thì cũng không phải là không thể đỗ.
<br><br>彼の気持ちも分からなくはない。
<br>→ Tôi cũng không phải là không hiểu cảm giác của anh ấy.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～ないことはない  (<b>N3</b>): Nghĩa hoàn toàn giống, "không phải là không...".
Có thể  「なくはない」 mang tính văn nói hơn một chút.
<br><br>～かもしれない  (<b>N4</b>): "Có lẽ", chỉ khả năng, nhưng không mang sắc thái phủ định kép.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('82.  なくて済む（なくてすむ）: Không cần làm ~ cũng được; xoay sở mà
không cần làm ~.', 'Common', '     <b>Công thức:</b>
<br>V なくて +  済む (すむ)
<br><br>V ないで +  済む (すむ)
<br>──────────<br><b>Cách dùng:</b> Diễn tả rằng một việc gì đó đã được giải quyết hoặc hoàn thành mà không cần phải thực hiện hành động V.
<br>──────────<br><b>Ý nghĩa:</b> Nhấn mạnh sự may mắn hoặc tiện lợi khi không phải làm một việc (thường là phiền phức hoặc tốn kém).
<br>──────────<br><b>Chú ý:</b>
<br>「済む」 có nghĩa là "kết thúc", "hoàn thành", "ổn thỏa".
<br><br>Có thể dùng  「～ずに済む」 (<b>N2</b>) với nghĩa tương tự nhưng trang trọng hơn.
<br>──────────<br><b>Ví dụ:</b>
<br>バスがすぐ来たので、タクシーに乗らなくて済んだ。
<br>→ Vì xe buýt đến ngay nên tôi đã không cần phải đi taxi.
<br><br>友達が古い辞書をくれたので、新しいのを買わなくて済んだ。
<br>→ Vì bạn tôi cho cuốn từ điển cũ nên tôi đã không cần mua cái mới.
<br><br>軽いけがだったので、手術しないで済んだ。
<br>→ Vì là vết thương nhẹ nên đã ổn mà không cần phẫu thuật.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～なくてもいい  (<b>N4</b>): "Không cần làm ~ cũng được", chỉ sự cho phép hoặc không cần thiết, nhưng không nhấn mạnh vào việc "đã ổn" như  「なくて済む」.
<br><br>～必要はない  (<b>N4</b>): "Không cần thiết phải ~".
<br><br>～ずに済む  (<b>N2</b>): Nghĩa giống hệt, trang trọng hơn.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('83.  何も～ない（なにも～ない）: Không có gì; hoàn toàn không ~; không
cần phải ~.', 'Common', '     <b>Công thức:</b>
<br>何も + V ない
<br>──────────<br><b>Cách dùng:</b>
<br>1.   Phủ định hoàn toàn: "Không có gì ~ cả", "hoàn toàn không ~".
<br>2.   Không cần thiết: "Không cần phải ~".
<br>──────────<br><b>Ý nghĩa:</b> Nhấn mạnh sự phủ định tuyệt đối hoặc sự không cần thiết.
<br>──────────<br><b>Chú ý:</b>
<br>「何」 đọc là  「なに」.
<br>──────────<br><b>Ví dụ:</b>
<br>朝から何も食べていないので、お腹がペコペコだ。
<br>→ Từ sáng tôi chưa ăn gì cả nên bụng đói meo.
<br><br>彼はその事故について、何も知らなかった。
<br>→ Anh ta hoàn toàn không biết gì về vụ tai nạn đó.
<br><br>そんなに心配することはないよ。何も問題ないから。
<br>→ Không cần phải lo lắng thế đâu. Vì không có vấn đề gì cả.
<br><br>何もそんなに怒らなくてもいいじゃないか。
<br>→ Đâu cần phải tức giận đến thế, phải không?
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>全然～ない  (<b>N5</b>) /  全く～ない  (<b>N2</b>): "Hoàn toàn không ~".
<br><br>～必要はない  (<b>N4</b>): "Không cần thiết phải ~".') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('84.  なお: Vẫn còn; hơn nữa; ngoài ra ~.', 'Common', '     <b>Công thức:</b>
<br>Là một trạng từ (副詞) hoặc liên từ (接続詞).
<br>──────────<br><b>Cách dùng:</b>
<br>1.   Vẫn còn (Trạng từ): Diễn tả một trạng thái vẫn tiếp diễn (giống  「まだ」
nhưng trang trọng hơn).
<br>2.   Hơn nữa/Ngoài ra (Liên từ): Dùng để bổ sung thêm thông tin, thêm một điểm nữa vào những gì đã nói.
<br>──────────<br><b>Ý nghĩa:</b> Bổ sung thông tin hoặc chỉ sự tiếp diễn.
<br>──────────<br><b>Chú ý:</b>
<br>Thường dùng trong văn viết, thông báo, hoặc các tình huống trang trọng.
<br>──────────<br><b>Ví dụ:</b>
<br>会場の詳細は後日お知らせします。なお、参加費は無料です。
<br>→ Chi tiết về hội trường sẽ được thông báo sau. Ngoài ra, phí tham gia là miễn phí.
<br><br>この件については、なお検討が必要です。
<br>→ Về vấn đề này, vẫn cần xem xét thêm.
<br><br>彼は以前にも増して、なお一層努力した。
<br>→ Anh ấy đã nỗ lực hơn nữa, vượt cả trước đây.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>さらに  (<b>N3</b>): "Hơn nữa", "thêm nữa".
<br><br>その上（そのうえ）  (<b>N2</b>): "Hơn nữa", "thêm vào đó".
<br><br>まだ  (<b>N5</b>): "Vẫn còn", dùng phổ biến trong văn nói.
<br><br>それに  (<b>N4</b>): "Hơn nữa", dùng trong văn nói.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('85.  ねばならない: Phải làm; bắt buộc phải ~.', 'Common', '     <b>Công thức:</b>
<br>Động từ thể  ない (bỏ  ない) +  ねばならない /  ねばならぬ
<br>──────────<br><b>Cách dùng:</b> Dùng để diễn tả nghĩa vụ, sự bắt buộc phải làm một việc gì đó. Đây là cách nói trang trọng và hơi cổ của  「なければならない」.
<br>──────────<br><b>Ý nghĩa:</b> Nhấn mạnh sự bắt buộc, nghĩa vụ phải làm.
<br>──────────<br><b>Chú ý:</b>
<br>「ねばならぬ」 là dạng cổ hơn.
<br><br>Thường dùng trong văn viết, diễn văn, hoặc khi muốn thể hiện sự quyết tâm mạnh mẽ.
<br><br>「する」 →  「せねばならない」.
<br>──────────<br><b>Ví dụ:</b>
<br>どんなに困難でも、この計画は成功させねばならない。
<br>→ Dù khó khăn đến mấy cũng phải làm cho kế hoạch này thành công.
<br><br>我々は真実を明らかにせねばならない。
<br>→ Chúng ta phải làm rõ sự thật.
<br><br>約束は守らねばならない。
<br>→ Lời hứa là phải giữ.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～なければならない  (<b>N4</b>): "Phải làm", dạng phổ biến nhất.
<br><br>～なくてはいけない  (<b>N4</b>): "Phải làm", cũng rất phổ biến.
<br><br>～べきだ  (<b>N3</b>): "Nên làm" (theo lẽ thường, đạo đức).
<br><br>～ざるを得ない  (<b>N2</b>): "Buộc phải làm" (dù không muốn).') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('86.  にあたって: Vào lúc; nhân dịp ~.', 'Common', '     <b>Công thức:</b>
<br>N / V る +  にあたって /  にあたり
<br>──────────<br><b>Cách dùng:</b> Dùng để nói về một thời điểm, một cơ hội đặc biệt, quan trọng, thường là một sự khởi đầu mới hoặc một sự kiện mang tính bước ngoặt. Vế sau thường nói về những điều cần làm, cần chú ý, hoặc cảm nghĩ vào thời điểm đó.
<br>──────────<br><b>Ý nghĩa:</b> Nhấn mạnh thời điểm quan trọng, mang tính nghi thức, "Nhân dịp...", "Khi bắt đầu...".
<br>──────────<br><b>Chú ý:</b>
<br>Trang trọng hơn  「～とき」.
<br><br>Thường dùng cho những sự kiện tích cực, quan trọng.
<br>──────────<br><b>Ví dụ:</b>
<br>新しい年を迎えるにあたり、一言ご挨拶申し上げます。
<br>→ Nhân dịp chào đón năm mới, tôi xin có đôi lời chào hỏi.
<br><br>開会にあたって、いくつか注意点をお知らせします。
<br>→ Vào lúc khai mạc, tôi xin thông báo một vài điểm cần chú ý.
<br><br>留学にあたり、多くの人にお世話になりました。
<br>→ Nhân dịp đi du học, tôi đã nhận được sự giúp đỡ của rất nhiều người.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～に際して  (<b>N2</b>): Rất giống nhau, cũng dùng cho dịp đặc biệt, trang trọng.
「にあたって」 thường nhấn mạnh hơn vào thời điểm bắt đầu một sự kiện quan trọng.
<br><br>～際に  (<b>N3</b>): "Vào lúc", "khi", trang trọng hơn  「とき」 nhưng không bằng
「にあたって」.
<br><br>～とき  (<b>N5</b>): "Khi", cách nói thông thường.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('87.  にほかならない: Không gì khác ngoài; chính là ~.', 'Common', '     <b>Công thức:</b>
<br>N +  にほかならない
<br>──────────<br><b>Cách dùng:</b> Dùng để khẳng định một cách mạnh mẽ rằng nguyên nhân hoặc bản chất của một sự việc chính là N, chứ không phải là bất cứ thứ gì khác.
<br>──────────<br><b>Ý nghĩa:</b> Nhấn mạnh "chính là...", "không sai", dùng để kết luận, khẳng định.
<br>──────────<br><b>Chú ý:</b>
<br>Là cách nói trang trọng, thường dùng trong văn viết, bình luận, phân tích.
<br>──────────<br><b>Ví dụ:</b>
<br>今回の成功は、皆さんの協力の賜物にほかならない。
<br>→ Thành công lần này không gì khác chính là kết quả của sự hợp tác của mọi người.
<br><br>戦争は悲劇にほかならない。
<br>→ Chiến tranh chính là bi kịch.
<br><br>彼が合格したのは、彼自身の努力の結果にほかならない。
<br>→ Việc anh ấy đỗ không gì khác chính là kết quả nỗ lực của bản thân anh ấy.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～だ  (<b>N5</b>) /  ～である  (<b>N4/N3</b>): Chỉ sự khẳng định thông thường.
<br><br>～に違いない  (<b>N3</b>): "Chắc chắn là", diễn tả sự suy đoán mạnh mẽ.  「にほ
かならない」 diễn tả sự khẳng định, kết luận.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('88.  に限らず（にかぎらず）: Không chỉ; không những... mà còn ~.', 'Common', '     <b>Công thức:</b>
<br>N +  に限らず (にかぎらず)
<br>──────────<br><b>Cách dùng:</b> Dùng để diễn tả rằng một sự việc không chỉ đúng với N mà còn đúng với cả những đối tượng khác có phạm vi rộng hơn.
<br>──────────<br><b>Ý nghĩa:</b> Mở rộng phạm vi, "không chỉ A mà B cũng...".
<br>──────────<br><b>Chú ý:</b>
<br>Vế sau thường đi với  「も」 hoặc nói về một phạm vi rộng hơn.
<br>──────────<br><b>Ví dụ:</b>
<br>この映画は子供に限らず、大人も楽しめます。
<br>→ Bộ phim này không chỉ trẻ em mà người lớn cũng có thể thưởng thức.
<br><br>最近は、女性に限らず男性も化粧をする人が増えている。
<br>→ Gần đây, không chỉ phụ nữ mà số lượng nam giới trang điểm cũng đang tăng lên.
<br><br>日本国内に限らず、海外でも人気がある。
<br>→ Không chỉ trong nước Nhật mà nó còn nổi tiếng cả ở nước ngoài.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～だけでなく  (<b>N3</b>): "Không chỉ... mà còn...", nghĩa rất giống và phổ biến.
<br><br>～ばかりか  (<b>N2</b>): "Không chỉ... mà còn...", nhấn mạnh hơn vào vế sau.
<br><br>～のみならず  (<b>N2</b>): "Không chỉ...", trang trọng hơn, thường dùng trong văn
viết.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('89.  に限る（にかぎる）: Là nhất; không gì tốt hơn ~.', 'Common', '     <b>Công thức:</b>
<br>N +  に限る
<br><br>V る +  に限る
<br>──────────<br><b>Cách dùng:</b> Dùng để diễn tả ý kiến chủ quan của người nói rằng trong một tình huống nào đó, N hoặc hành động V là lựa chọn tốt nhất, tuyệt vời nhất.
<br>──────────<br><b>Ý nghĩa:</b> Khẳng định "A là tốt nhất", "Không gì bằng A".
<br>──────────<br><b>Chú ý:</b>
<br>Thể hiện ý kiến chủ quan mạnh mẽ.
<br>──────────<br><b>Ví dụ:</b>
<br>暑い夏は、冷たいビールに限る。
<br>→ Mùa hè nóng nực thì bia lạnh là nhất.
<br><br>疲れた時は、ゆっくりお風呂に入るに限る。
<br>→ Khi mệt mỏi, không gì tốt hơn là ngâm mình thư thái trong bồn tắm.
<br><br>映画はやっぱり映画館で見るに限るね。
<br>→ Phim ảnh thì quả nhiên xem ở rạp là tuyệt nhất nhỉ.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～が一番いい  (<b>N5</b>): "...là tốt nhất", cách nói thông thường.  「に限る」
mang sắc thái mạnh mẽ, quả quyết hơn.
<br><br>～に越したことはない  (<b>N2</b>): "...là tốt nhất/hơn cả", nhưng thường dùng để nói về việc có thì tốt hơn, không có cũng không sao.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('90.  に限って（にかぎって）: Chỉ; đặc biệt là ~ (thường chỉ những lúc
không may).', 'Common', '     <b>Công thức:</b>
<br>N +  に限って
<br>──────────<br><b>Cách dùng:</b>
<br>1.   Chỉ riêng N: Nhấn mạnh rằng chỉ N mới có đặc điểm đó (thường là đặc biệt tốt, đáng tin cậy).
<br>2.   Đúng vào lúc N: Nhấn mạnh rằng đúng vào lúc quan trọng hoặc lúc không mong muốn (N) thì lại xảy ra chuyện xui xẻo.
<br>──────────<br><b>Ý nghĩa:</b> Nhấn mạnh sự đặc biệt (tốt hoặc xấu) liên quan đến N.
<br>──────────<br><b>Chú ý:</b>
<br>Nghĩa thứ 2 rất phổ biến, thường thể hiện sự không may, phàn nàn.
<br>──────────<br><b>Ví dụ:</b>
<br>1.   うちの子に限って、そんな悪いことをするはずがない。
<br>→ Riêng con nhà tôi thì làm gì có chuyện làm việc xấu như thế.
<br>2.   急いでいる時に限って、バスがなかなか来ない。
<br>→ Đúng vào những lúc đang vội thì xe buýt lại mãi không đến.
<br>3.   傘を持っていない日に限って、雨が降るんだから。
<br>→ Cứ đúng vào ngày không mang ô thì trời lại mưa.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～だけ  (<b>N4</b>): "Chỉ", cách nói thông thường, không mang sắc thái đặc biệt như  「に限って」.
<br><br>～に限らず  (<b>N2</b>): "Không chỉ", mang ý nghĩa trái ngược.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('91.  に関わらず（にかかわらず）: Bất kể; không phân biệt ~.', 'Common', '     <b>Công thức:</b>
<br>N +  にかかわらず /  にはかかわらず
<br><br>V る / V ない +  にかかわらず /  にはかかわらず
<br><br>A い / A くない +  にかかわらず /  にはかかわらず
<br><br>N (số lượng) +  の +  いかん +  にかかわらず (Bất kể ít hay nhiều)
<br>──────────<br><b>Cách dùng:</b> Diễn tả rằng một sự việc nào đó vẫn xảy ra hoặc vẫn đúng mà không bị ảnh hưởng, không phụ thuộc vào N hoặc sự khác biệt (có hay không, tốt hay xấu...).
<br>──────────<br><b>Ý nghĩa:</b> Nhấn mạnh sự không phụ thuộc, "bất kể A, B vẫn...".
<br>──────────<br><b>Chú ý:</b>
<br>Thường đi với các cặp từ đối lập (あるなし、好き嫌い、上手下手) hoặc danh từ chỉ sự đa dạng (国籍、年齢、性別).
<br>──────────<br><b>Ví dụ:</b>
<br>経験のあるなしにかかわらず、やる気のある人を募集します。
<br>→ Chúng tôi tuyển những người có nhiệt huyết, bất kể có kinh nghiệm hay không.
<br><br>天候にかかわらず、試合は行われます。
<br>→ Bất kể thời tiết thế nào, trận đấu vẫn sẽ diễn ra.
<br><br>理由のいかんにかかわらず、遅刻は認められません。
<br>→ Bất kể lý do là gì, việc đi muộn sẽ không được chấp nhận.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～を問わず（をとわず）  (<b>N2</b>): "Bất kể", nghĩa rất giống, thường dùng trong các thông báo, quy định.
<br><br>～に関係なく（にかんけいなく）  (<b>N3</b>): "Không liên quan đến", "bất kể", nghĩa tương tự.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('92.  に関わる（にかかわる）: Liên quan đến ~.', 'Common', '     <b>Công thức:</b>
<br>N +  に関わる (にかかわる)
<br>──────────<br><b>Cách dùng:</b> Dùng để chỉ mối quan hệ, sự liên quan, hoặc ảnh hưởng đến một vấn đề, sự việc, hoặc đối tượng nào đó (N). Thường dùng cho những vấn đề quan trọng, có ảnh hưởng lớn.
<br>──────────<br><b>Ý nghĩa:</b> "Liên quan đến...", "Ảnh hưởng đến...".
<br>──────────<br><b>Chú ý:</b>
<br>Trang trọng hơn  「～について」 hoặc  「～に関して」.
<br><br>Thường dùng cho những vấn đề hệ trọng như tính mạng, danh dự, lợi ích...
<br>──────────<br><b>Ví dụ:</b>
<br>彼は環境問題に関わる仕事をしている。
<br>→ Anh ấy đang làm công việc liên quan đến vấn đề môi trường.
<br><br>それは人の命に関わる重大な問題だ。
<br>→ Đó là vấn đề trọng đại liên quan đến tính mạng con người.
<br><br>この決定は、会社の将来に関わるだろう。
<br>→ Quyết định này có lẽ sẽ ảnh hưởng đến tương lai của công ty.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～について  (<b>N4</b>): "Về ~", chỉ chủ đề, đối tượng một cách chung chung.
<br><br>～に関して  (<b>N3</b>): "Liên quan đến ~", trang trọng hơn  「について」.  「に
関わる」 mang sắc thái quan trọng, ảnh hưởng lớn hơn.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('93.  に決まっている（にきまっている）: Chắc chắn là; tôi chắc rằng ~.', 'Common', '     <b>Công thức:</b>
<br>V / A い / A な / N + (thể thường) +  に決まっている
<br>──────────<br><b>Cách dùng:</b> Dùng để diễn tả sự phán đoán chắc chắn của người nói, dựa trên cơ sở logic, kinh nghiệm, hoặc niềm tin mạnh mẽ. Mang tính chủ quan và thường dùng trong văn nói.
<br>──────────<br><b>Ý nghĩa:</b> Khẳng định một cách mạnh mẽ "chắc chắn là...", "nhất định là...".
<br>──────────<br><b>Chú ý:</b>
<br>Thân mật hơn  「に違いない」.
<br>──────────<br><b>Ví dụ:</b>
<br>あのチームが勝つに決まっているよ。
<br>→ Đội đó chắc chắn thắng rồi.
<br><br>そんなことをしたら、怒られるに決まっている。
<br>→ Nếu làm chuyện đó thì chắc chắn sẽ bị mắng.
<br><br>彼は正直だから、嘘をつくはずがないに決まっている。
<br>→ Anh ấy trung thực nên chắc chắn không đời nào nói dối.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～に違いない  (<b>N3</b>): "Chắc chắn là", diễn tả sự suy đoán mạnh mẽ, có thể trang trọng hơn.
<br><br>～はずだ  (<b>N4</b>): "Chắc chắn là" (theo lẽ thường), mức độ chắc chắn có thể thấp hơn.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('94.  に越したことはない（にこしたことはない）: ~ là tốt nhất; không gì
bằng ~.', 'Common', '     <b>Công thức:</b>
<br>V る / A い / A な / N +  に越したことはない (にこしたことはない)
<br>──────────<br><b>Cách dùng:</b> Dùng để diễn tả rằng có một điều gì đó (A) thì tốt hơn là không có, hoặc làm A thì tốt hơn là không làm. Thể hiện một lời khuyên hoặc một sự thật hiển nhiên rằng có điều kiện tốt thì vẫn hơn.
<br>──────────<br><b>Ý nghĩa:</b> Nhấn mạnh "có ~ thì vẫn tốt hơn", "~ là tốt nhất".
<br>──────────<br><b>Chú ý:</b>
<br>Không phải là sự bắt buộc, mà là lời khuyên về phương án tốt hơn.
<br>──────────<br><b>Ví dụ:</b>
<br>旅行の荷物は、軽いに越したことはない。
<br>→ Hành lý du lịch, nhẹ thì vẫn tốt hơn.
<br><br>用心するに越したことはない。何が起こるかわからないから。
<br>→ Cẩn thận thì vẫn tốt hơn. Vì không biết chuyện gì sẽ xảy ra.
<br><br>お金はあるに越したことはないが、それが全てではない。
<br>→ Tiền thì có vẫn tốt hơn, nhưng đó không phải là tất cả.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～ほうがいい  (<b>N4</b>): "Nên ~", lời khuyên thông thường.
<br><br>～に限る  (<b>N2</b>): "~ là nhất", thể hiện ý kiến chủ quan mạnh mẽ về lựa chọn
tốt nhất.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('95.  に応えて（にこたえて）: Đáp lại; hưởng ứng ~.', 'Common', '     <b>Công thức:</b>
<br>N +  に応えて (にこたえて) /  に応え (にこたえ)
<br>──────────<br><b>Cách dùng:</b> Diễn tả một hành động được thực hiện để đáp lại sự kỳ vọng, mong muốn, yêu cầu, hoặc lời kêu gọi của người khác hoặc từ một phía nào đó.
<br>──────────<br><b>Ý nghĩa:</b> Nhấn mạnh hành động mang tính "đáp lại" một tác động từ bên ngoài.
<br>──────────<br><b>Chú ý:</b>
<br>N thường là các danh từ chỉ sự kỳ vọng (期待), yêu cầu (要望、リクエスト), cổ vũ (声援)...
<br><br>Vế sau là hành động đáp lại.
<br>──────────<br><b>Ví dụ:</b>
<br>選手たちは、ファンの声援に応えて、最後まで戦った。
<br>→ Các tuyển thủ đã chiến đấu đến cùng để đáp lại sự cổ vũ của người hâm mộ.
<br><br>国民の期待に応えて、政府は新しい政策を発表した。
<br>→ Đáp lại sự kỳ vọng của người dân, chính phủ đã công bố chính sách mới.
<br><br>お客様のご要望に応え、営業時間を延長しました。
<br>→ Đáp ứng yêu cầu của quý khách, chúng tôi đã kéo dài thời gian kinh doanh.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～に応じて  (<b>N2</b>): "Ứng với", "tùy theo", chỉ sự thay đổi phù hợp với sự thay đổi của N.  「に応えて」 mang tính đáp lại sự kỳ vọng/yêu cầu.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('96.  に加えて（にくわえて）: Thêm vào đó; ngoài ra ~.', 'Common', '     <b>Công thức:</b>
<br>N +  に加えて (にくわえて)
<br>──────────<br><b>Cách dùng:</b> Dùng để bổ sung thêm một yếu tố, một thông tin vào những gì đã có sẵn. Tương tự như  「だけでなく」 nhưng mang sắc thái trang trọng hơn.
<br>──────────<br><b>Ý nghĩa:</b> "Không chỉ A, mà còn B", "Thêm vào A, còn có B".
<br>──────────<br><b>Chú ý:</b>
<br>Thường dùng trong văn viết hoặc các tình huống trang trọng.
<br>──────────<br><b>Ví dụ:</b>
<br>この料理は、味がいいのに加えて、見た目も美しい。
<br>→ Món ăn này, thêm vào vị ngon, vẻ ngoài cũng đẹp mắt.
<br><br>英語に加えて、フランス語も話せます。
<br>→ Ngoài tiếng Anh, tôi còn có thể nói tiếng Pháp.
<br><br>雨に加えて、風も強くなってきた。
<br>→ Thêm vào mưa, gió cũng đã mạnh lên.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～だけでなく  (<b>N3</b>): "Không chỉ... mà còn...", phổ biến nhất.
<br><br>～ばかりか  (<b>N2</b>): "Không chỉ... mà còn...", nhấn mạnh hơn vế sau.
<br><br>～上に（うえに）  (<b>N3</b>): "Hơn nữa", "thêm vào đó", thường dùng khi hai vế
cùng chiều (cùng tốt/cùng xấu).
<br><br>さらに  (<b>N3</b>): "Hơn nữa", là một trạng từ.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('97.  に基づいて（にもとづいて）: Dựa trên; căn cứ vào ~.', 'Common', '     <b>Công thức:</b>
<br>N +  に基づいて (にもとづいて) /  に基づき (にもとづき)
<br>──────────<br><b>Cách dùng:</b> Dùng để diễn tả rằng một hành động, quyết định, hoặc sản phẩm nào đó được thực hiện hoặc tạo ra dựa trên một cơ sở, nền tảng, hoặc nguồn thông tin nào đó (N).
<br>──────────<br><b>Ý nghĩa:</b> Nhấn mạnh cơ sở, nền tảng làm căn cứ.
<br>──────────<br><b>Chú ý:</b>
<br>N thường là những thứ mang tính nền tảng như sự thật, dữ liệu, kế hoạch, pháp luật, kinh nghiệm...
<br><br>「に基づき」 trang trọng hơn và thường dùng trong văn viết.
<br>──────────<br><b>Ví dụ:</b>
<br>この映画は、事実に基づいて作られた。
<br>→ Bộ phim này được làm dựa trên sự thật.
<br><br>最新のデータに基づき、計画を修正した。
<br>→ Dựa trên dữ liệu mới nhất, chúng tôi đã chỉnh sửa kế hoạch.
<br><br>法律に基づいて、公平に判断する。
<br>→ Sẽ phán đoán một cách công bằng dựa trên pháp luật.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～をもとに  (<b>N2</b>): "Dựa trên ~", rất giống nhau, nhưng  「をもとに」 thường nhấn mạnh hơn vào nguyên liệu, ý tưởng ban đầu để tạo ra cái mới.  「に基づいて」 nhấn mạnh vào cơ sở, tiêu chuẩn.
<br><br>～によって  (<b>N3</b>): Có nhiều nghĩa, một trong số đó là "dựa vào", nhưng
thường chỉ phương pháp, cách thức.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('98.  に向かって（にむかって）: Hướng về; đối mặt; đi về phía ~.', 'Common', '     <b>Công thức:</b>
<br>N +  に向かって (にむかって) /  に向かい (にむかい) /  に向け(て) (にむ
けて)
<br>──────────<br><b>Cách dùng:</b>
<br>1.   Hướng vật lý: Chỉ phương hướng của hành động di chuyển hoặc hướng của một vật.
<br>2.   Hướng mục tiêu: Chỉ đối tượng mà hành động hoặc lời nói nhắm đến.
<br>3.   Hướng thời gian: Chỉ sự tiến dần đến một thời điểm nào đó.
<br>──────────<br><b>Ý nghĩa:</b> Chỉ phương hướng, đối tượng, hoặc mục tiêu.
<br>──────────<br><b>Chú ý:</b>
<br>「に向かって」 nhấn mạnh quá trình di chuyển hoặc hành động hướng tới.
<br><br>「に向けて」 nhấn mạnh mục tiêu hoặc đối tượng được nhắm đến.
<br>──────────<br><b>Ví dụ:</b>
<br>彼は駅に向かって歩いている。
<br>→ Anh ấy đang đi bộ về phía nhà ga.
<br><br>出口に向かってください。
<br>→ Xin hãy đi về phía lối ra.
<br><br>彼は聴衆に向かってスピーチを始めた。
<br>→ Anh ấy đã bắt đầu bài phát biểu hướng về phía khán giả.
<br><br>試験に向けて、一生懸命勉強している。<br>→ (Dùng  「に向けて」)
<br>→ Tôi đang học hành chăm chỉ hướng tới kỳ thi.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～へ  (<b>N5</b>): Chỉ phương hướng di chuyển đơn thuần.
<br><br>～に対して  (<b>N3</b>): "Đối với ~", thường chỉ đối tượng của hành động hoặc thái
độ.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('99.  に応じて（におうじて）: Tùy theo; ứng với; phù hợp với ~.', 'Common', '     <b>Công thức:</b>
<br>N +  に応じて (におうじて) /  に応じ (におうじ)
<br>──────────<br><b>Cách dùng:</b> Diễn tả rằng một hành động hoặc trạng thái ở vế sau thay đổi sao cho phù hợp với sự thay đổi, sự khác biệt, hoặc yêu cầu của N ở vế trước.
<br>──────────<br><b>Ý nghĩa:</b> Nhấn mạnh sự thay đổi tương ứng, phù hợp.
<br>──────────<br><b>Chú ý:</b>
<br>N thường là những danh từ chỉ sự đa dạng hoặc có thể thay đổi (年齢、能力
、状況、希望...).
<br>──────────<br><b>Ví dụ:</b>
<br>能力に応じて、クラス分けをします。
<br>→ Chúng tôi sẽ phân lớp tùy theo năng lực.
<br><br>予算に応じて、旅行のプランを立てましょう。
<br>→ Chúng ta hãy lên kế hoạch du lịch phù hợp với ngân sách.
<br><br>状況に応じた対応が必要です。
<br>→ Cần phải có sự đối ứng phù hợp với tình hình.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～によって  (<b>N3</b>): Có thể mang nghĩa "tùy thuộc vào".
<br><br>～に従って（にしたがって）  (<b>N2</b>): "Theo ~", chỉ sự thay đổi đồng biến
(A thay đổi thì B cũng thay đổi theo).
<br><br>～に応えて  (<b>N2</b>): "Đáp lại ~", chỉ sự đáp lại kỳ vọng/yêu cầu.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('100.  に際して（にさいして）: Vào dịp; vào lúc ~ (trang trọng).', 'Common', '     <b>Công thức:</b>
<br>N / V る +  に際して (にさいして) /  に際し (にさいし)
<br>──────────<br><b>Cách dùng:</b> Dùng để chỉ thời điểm bắt đầu hoặc đang diễn ra một sự kiện quan trọng, đặc biệt. Thường dùng trong các thông báo, hướng dẫn, hoặc các tình huống trang trọng.
<br>──────────<br><b>Ý nghĩa:</b> Nhấn mạnh thời điểm đặc biệt, "Nhân dịp...", "Khi...".
<br>──────────<br><b>Chú ý:</b>
<br>Trang trọng hơn  「とき」 hoặc  「際に」.
<br><br>Thường dùng cho những sự kiện chỉ diễn ra một lần hoặc mang tính nghi thức.
<br>──────────<br><b>Ví dụ:</b>
<br>お申し込みに際しては、写真が必要となります。
<br>→ Vào lúc đăng ký, ảnh là cần thiết.
<br><br>会議を行うに際して、資料を準備した。
<br>→ Khi tiến hành cuộc họp, tôi đã chuẩn bị tài liệu.
<br><br>ご利用に際しての注意点をご説明します。
<br>→ Tôi xin giải thích những điểm cần chú ý khi sử dụng.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～にあたって  (<b>N2</b>): Rất giống nhau, cũng dùng cho dịp đặc biệt, trang trọng.
「にあたって」 có thể nhấn mạnh hơn vào thời điểm bắt đầu.
<br><br>～際に  (<b>N3</b>): "Vào lúc", "khi", trang trọng hơn  「とき」.
<br><br>～とき  (<b>N5</b>): "Khi", cách nói thông thường.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('101.  に先立ち（にさきだち）: Trước khi ~ (trang trọng).', 'Common', '     <b>Công thức:</b>
<br>N / V る +  に先立ち (にさきだち) /  に先立って (にさきだって)
<br>──────────<br><b>Cách dùng:</b> Dùng để diễn tả một hành động được thực hiện trước khi bắt đầu một sự kiện quan trọng, một kế hoạch, hoặc một hoạt động nào đó.
<br>──────────<br><b>Ý nghĩa:</b> Nhấn mạnh hành động chuẩn bị hoặc diễn ra trước một sự kiện quan trọng.
<br>──────────<br><b>Chú ý:</b>
<br>Là cách nói trang trọng, thường dùng trong thông báo, tin tức, văn bản chính thức.
<br>──────────<br><b>Ví dụ:</b>
<br>開店に先立ち、関係者だけのパーティーが行われた。
<br>→ Trước khi khai trương, một bữa tiệc chỉ dành cho những người liên quan đã được tổ chức.
<br><br>会議に先立って、資料をご確認ください。
<br>→ Trước cuộc họp, xin vui lòng xác nhận tài liệu.
<br><br>出発に先立ち、荷物の最終チェックをした。
<br>→ Trước khi xuất phát, tôi đã kiểm tra hành lý lần cuối.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～前に  (<b>N5</b>): "Trước khi", là cách nói phổ biến và thông thường nhất.  「に先立ち」 trang trọng hơn nhiều và chỉ dùng cho các sự kiện quan trọng.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('102.  にせよ  /  にしろ: Cho dù; bất kể; dù là... hay là ~.', 'Common', '     <b>Công thức:</b>
<br>V / A い / A な / N + (thể thường) +  にせよ /  にしろ
<br>──────────<br><b>Cách dùng:</b> Dùng để đưa ra một ví dụ và khẳng định rằng dù trong trường hợp đó hay bất kỳ trường hợp nào khác, vế sau vẫn đúng. Thường dùng để nêu lên một giả định cực đoan hoặc một điều kiện nào đó.
<br>──────────<br><b>Ý nghĩa:</b> "Ngay cả khi...", "Cho dù...", nhấn mạnh rằng kết luận ở vế sau không thay đổi.
<br>──────────<br><b>Chú ý:</b>
<br>Thường đi với  「たとえ」 (giả sử).
<br><br>Có thể dùng lặp lại  「～にせよ～にせよ」.
<br>──────────<br><b>Ví dụ:</b>
<br>たとえ反対されるにせよ、私は自分の意見を言うつもりだ。
<br>→ Cho dù bị phản đối, tôi vẫn định nói ra ý kiến của mình.
<br><br>行くにせよ行かないにせよ、早く連絡してください。
<br>→ Dù đi hay không đi, xin hãy liên lạc sớm.
<br><br>どんな理由があるにしろ、遅刻はよくない。
<br>→ Bất kể có lý do gì, việc đi muộn là không tốt.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～ても  /  ～でも  (<b>N4</b>): "Dù ~ thì cũng ~", cách nói thông thường.
<br><br>たとえ～ても  (<b>N3</b>): "Giả sử ~ thì cũng ~", nhấn mạnh giả định.  「にせよ」
trang trọng hơn và thường dùng khi đưa ra ví dụ để khẳng định một điều.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('103.  にしろ～にしろ  /  にせよ～にせよ: Dù là... hay là ~.', 'Common', '     <b>Công thức:</b>
<br>[A] +  にしろ + [B] +  にしろ
<br><br>[A] +  にせよ + [B] +  にせよ
<br><br>(A và B thường là các lựa chọn, danh từ, hoặc động từ đối lập/cùng loại)
<br>──────────<br><b>Cách dùng:</b> Dùng để liệt kê hai hoặc nhiều khả năng, lựa chọn, và khẳng định rằng dù là trường hợp nào đi nữa thì kết luận ở vế sau vẫn không thay đổi.
<br>──────────<br><b>Ý nghĩa:</b> Nhấn mạnh "bất kể là A hay B, thì...".
<br>──────────<br><b>Chú ý:</b>
<br>Dùng để bao quát mọi trường hợp.
<br>──────────<br><b>Ví dụ:</b>
<br>行くにしろ行かないにしろ、早く決めてください。
<br>→ Dù đi hay không đi, xin hãy quyết định sớm.
<br><br>ビールにしろ、日本酒にしろ、飲みすぎは体に悪い。
<br>→ Dù là bia hay rượu Nhật, uống quá nhiều đều không tốt cho sức khỏe.
<br><br>賛成するにせよ反対するにせよ、自分の意見をはっきり言うべきだ。
<br>→ Dù tán thành hay phản đối, cũng nên nói rõ ý kiến của mình.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～ても～ても  (<b>N4</b>): Cách nói tương tự nhưng ít trang trọng hơn.
<br><br>～であれ～であれ  (<b>N1</b>): Cách nói trang trọng, văn viết.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('104.  にしたら  /  にすれば: Đối với; từ góc nhìn của ~.', 'Common', '     <b>Công thức:</b>
<br>N (chỉ người) +  にしたら /  にすれば
<br>──────────<br><b>Cách dùng:</b> Dùng để thể hiện ý kiến, cảm xúc, hoặc phán đoán khi đặt mình vào lập trường hoặc vị trí của một người nào đó (N).
<br>──────────<br><b>Ý nghĩa:</b> Nhấn mạnh "Nếu là N thì sẽ nghĩ/cảm thấy...", "Từ lập trường của N thì...".
<br>──────────<br><b>Chú ý:</b>
<br>Thường dùng để thể hiện sự đồng cảm hoặc suy đoán về cảm xúc/suy nghĩ của người khác.
<br><br>N thường là người.
<br>──────────<br><b>Ví dụ:</b>
<br>親にしたら、子供の将来が心配なのは当然だろう。
<br>→ Đối với cha mẹ thì việc lo lắng cho tương lai con cái có lẽ là đương nhiên.
<br><br>突然仕事を辞めると言われたら、会社にすれば大迷惑だろう。
<br>→ Nếu bị nói là đột nhiên nghỉ việc thì đối với công ty chắc là phiền phức lớn.
<br><br>あなたにすれば些細なことかもしれないが、私にとっては大問題だ。
<br>→ Đối với bạn có lẽ đó là chuyện nhỏ, nhưng đối với tôi thì là vấn đề lớn.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～にとって  (<b>N3</b>): "Đối với ~", chỉ đối tượng chịu ảnh hưởng hoặc đánh giá, khách quan hơn.
<br><br>～から言うと  (<b>N2</b>): "Nói về ~", "từ quan điểm ~".  「にしたら」 nhấn mạnh hơn vào lập trường và cảm xúc.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('105.  にしても～にしても: Bất kể là ~; Dù là... hay là ~.', 'Common', '     <b>Công thức:</b>
<br>N1 +  にしても + N2 +  にしても
<br><br>V1 +  にしても + V2 +  にしても
<br>──────────<br><b>Cách dùng:</b> Tương tự như  「にしろ～にしろ」, dùng để liệt kê hai hoặc nhiều ví dụ (thường là cùng loại hoặc đối lập) và khẳng định rằng dù là trường hợp nào thì kết luận ở vế sau cũng không thay đổi.
<br>──────────<br><b>Ý nghĩa:</b> Nhấn mạnh "bất kể là A hay B, thì...".
<br>──────────<br><b>Chú ý:</b>
<br>「にしても」 cũng có thể dùng một mình với nghĩa "ngay cả khi", "cho dù" (giống  「にせよ」).
<br>──────────<br><b>Ví dụ:</b>
<br>進学するにしても就職するにしても、自分でよく考えて決めなさい。
<br>→ Dù là học lên hay đi làm, hãy tự mình suy nghĩ kỹ và quyết định.
<br><br>来るにしても来ないにしても、連絡ぐらいはすべきだ。
<br>→ Dù đến hay không đến, ít nhất cũng nên liên lạc.
<br><br>野菜にしても魚にしても、新鮮なものが一番おいしい。
<br>→ Dù là rau hay cá, đồ tươi là ngon nhất.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～にしろ～にしろ  (<b>N2</b>): Nghĩa hoàn toàn giống nhau, là cách nói song song.
<br><br>～ても～ても  (<b>N4</b>): Cách nói tương tự nhưng ít trang trọng hơn.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('106.  に沿って（にそって）: Men theo; dọc theo; theo ~.', 'Common', '     <b>Công thức:</b>
<br>N +  に沿って (にそって) /  に沿い (にそい)
<br>──────────<br><b>Cách dùng:</b>
<br>1.   Dọc theo (Không gian): Diễn tả sự di chuyển hoặc tồn tại dọc theo một đường, một tuyến nào đó (sông, đường, bờ biển...).
<br>2.   Theo ~ (Tiêu chuẩn): Diễn tả việc làm theo một quy tắc, kế hoạch, mong đợi, hoặc phương châm nào đó.
<br>──────────<br><b>Ý nghĩa:</b> Chỉ sự di chuyển dọc theo hoặc sự tuân thủ theo một tiêu chuẩn.
<br>──────────<br><b>Chú ý:</b>
<br>N thường là danh từ chỉ đường đi hoặc các quy tắc, kế hoạch.
<br>──────────<br><b>Ví dụ:</b>
<br>1.   川に沿って歩くと、美しい公園があります。
<br>→ Nếu đi bộ men theo bờ sông, sẽ có một công viên đẹp.
<br>2.   計画に沿って、プロジェクトを進めてください。
<br>→ Xin hãy tiến hành dự án theo kế hoạch.
<br>3.   お客様のご希望に沿って、製品をカスタマイズします。
<br>→ Chúng tôi sẽ tùy chỉnh sản phẩm theo mong muốn của quý khách.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～通りに  (<b>N3</b>): "Đúng theo như", nhấn mạnh sự tuân thủ chính xác.
<br><br>～に従って（にしたがって）  (<b>N2</b>): "Theo ~", chỉ sự tuân thủ hoặc sự thay
đổi đồng biến.
<br><br>～に基づいて  (<b>N2</b>): "Dựa trên ~", chỉ cơ sở, căn cứ.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('107.  に相違ない（にそういない）: Chắc chắn; không sai; không nghi ngờ
gì ~.', 'Common', '     <b>Công thức:</b>
<br>V / A い / A な / N + (thể thường) +  に相違ない (にそういない)
<br><br>(A な và N có thể +  である +  に相違ない)
<br>──────────<br><b>Cách dùng:</b> Dùng để diễn tả sự phán đoán chắc chắn của người nói, dựa trên một cơ sở hoặc bằng chứng nào đó. Đây là cách nói rất trang trọng.
<br>──────────<br><b>Ý nghĩa:</b> Khẳng định một cách chắc chắn, "nhất định là...", "không thể sai được".
<br>──────────<br><b>Chú ý:</b>
<br>Rất trang trọng, thường dùng trong văn viết, văn bản pháp lý, hoặc các bài phát biểu chính thức.
<br><br>Mức độ chắc chắn cao.
<br>──────────<br><b>Ví dụ:</b>
<br>現場の状況から見て、これは事故に相違ない。
<br>→ Nhìn từ tình hình hiện trường, đây chắc chắn là một vụ tai nạn.
<br><br>彼が犯人であるに相違ない。
<br>→ Anh ta chắc chắn là thủ phạm.
<br><br>この証拠があれば、彼の無実は証明されるに相違ない。
<br>→ Nếu có bằng chứng này, sự vô tội của anh ta chắc chắn sẽ được chứng minh.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～に違いない  (<b>N3</b>): "Chắc chắn là", nghĩa giống nhau nhưng  「に違いない」 phổ biến hơn và ít trang trọng hơn.
<br><br>～に決まっている  (<b>N2</b>): "Chắc chắn là", mang tính chủ quan và văn nói hơn.
<br><br>～はずだ  (<b>N4</b>): "Chắc chắn là" (theo lẽ thường), mức độ chắc chắn có thể
thấp hơn.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('108.  に過ぎない（にすぎない）: Chỉ là; không hơn ~.', 'Common', '     <b>Công thức:</b>
<br>N +  に過ぎない (にすぎない)
<br><br>V る / V た +  に過ぎない (にすぎない)
<br>──────────<br><b>Cách dùng:</b> Dùng để nhấn mạnh rằng một sự việc hoặc đối tượng nào đó không có gì đặc biệt, không vượt quá một mức độ nhất định, hoặc chỉ đơn thuần là như vậy. Thường mang sắc thái khiêm tốn hoặc đánh giá thấp.
<br>──────────<br><b>Ý nghĩa:</b> Nhấn mạnh "chỉ là...", "không có gì hơn".
<br>──────────<br><b>Chú ý:</b>
<br>Thường dùng để giảm nhẹ tầm quan trọng hoặc mức độ.
<br>──────────<br><b>Ví dụ:</b>
<br>それは私の個人的な意見に過ぎません。
<br>→ Đó chỉ là ý kiến cá nhân của tôi mà thôi.
<br><br>彼はただの友達に過ぎない。
<br>→ Anh ấy chỉ là một người bạn bình thường.
<br><br>今回の成功は、幸運だったに過ぎない。
<br>→ Thành công lần này chẳng qua chỉ là may mắn mà thôi.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～だけだ  (<b>N4</b>): "Chỉ là", cách nói thông thường.
<br><br>～でしかない  (<b>N2</b>): "Chỉ là", nghĩa rất giống, có thể mang sắc thái đánh giá
thấp mạnh hơn một chút.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('109.  に伴って（にともなって）: Cùng với; đồng thời với; theo ~.', 'Common', '     <b>Công thức:</b>
<br>N +  に伴って (にともなって) /  に伴い (にともない)
<br><br>V る +  に伴って /  に伴い
<br>──────────<br><b>Cách dùng:</b> Diễn tả rằng khi một sự thay đổi (A) xảy ra, thì một sự thay đổi khác (B) cũng xảy ra đồng thời hoặc theo sau đó như một hệ quả tự nhiên.
<br>──────────<br><b>Ý nghĩa:</b> Nhấn mạnh sự thay đổi đồng thời, "cùng với A, B cũng thay đổi".
<br>──────────<br><b>Chú ý:</b>
<br>Thường dùng cho những thay đổi có quy mô lớn hoặc mang tính tự nhiên.
<br><br>「に伴い」 trang trọng hơn.
<br>──────────<br><b>Ví dụ:</b>
<br>経済の発展に伴って、生活水準も向上した。
<br>→ Cùng với sự phát triển kinh tế, mức sống cũng được nâng cao.
<br><br>人口の増加に伴い、様々な社会問題が発生している。
<br>→ Cùng với sự gia tăng dân số, nhiều vấn đề xã hội đa dạng đang phát sinh.
<br><br>年齢が上がるに伴って、体力が低下する。
<br>→ Cùng với tuổi tác tăng lên, thể lực cũng giảm sút.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～とともに  (<b>N2</b>): "Cùng với", nghĩa rất giống nhau.
<br><br>～につれて  (<b>N2</b>): "Càng... càng...", nhấn mạnh sự thay đổi tỷ lệ thuận theo
một chiều hướng.
<br><br>～に従って  (<b>N2</b>): "Theo ~", cũng chỉ sự thay đổi đồng biến.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('110.  につけ: Mỗi lần; bất cứ khi nào; dù là ~.', 'Common', '     <b>Công thức:</b>
<br>V る +  につけ
<br><br>A い +  につけ
<br>──────────<br><b>Cách dùng:</b> Diễn tả rằng mỗi khi nhìn thấy, nghe thấy, hoặc làm một hành động nào đó (V), thì luôn có một cảm xúc hoặc suy nghĩ nào đó nảy sinh. Thường dùng trong văn viết hoặc văn nói mang tính trang trọng, biểu cảm.
<br>──────────<br><b>Ý nghĩa:</b> "Mỗi khi... lại cảm thấy/nghĩ...".
<br>──────────<br><b>Chú ý:</b>
<br>Thường đi với các động từ chỉ tri giác (見る、聞く) hoặc suy nghĩ (思う、考
える).
<br><br>Vế sau thường là cảm xúc, suy nghĩ.
<br><br>Cũng có dạng  「～につけ～につけ」 (dù là A hay B).
<br>──────────<br><b>Ví dụ:</b>
<br>この写真を見るにつけ、楽しかった子供時代を思い出す。
<br>→ Mỗi khi nhìn tấm ảnh này, tôi lại nhớ về thời thơ ấu vui vẻ.
<br><br>彼の話を聞くにつけ、その誠実さに感動する。
<br>→ Mỗi khi nghe câu chuyện của anh ấy, tôi lại cảm động trước sự thành thật đó.
<br><br>良いにつけ悪いにつけ、彼の行動はいつも注目の的だ。
<br>→ Dù tốt hay xấu, hành động của anh ta luôn là tâm điểm chú ý.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～たびに  (<b>N3</b>): "Mỗi lần", nghĩa rất giống và phổ biến hơn trong văn nói.
<br><br>～とき  (<b>N5</b>): "Khi".') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('111.  につき: Vì; do; mỗi ~.', 'Common', '     <b>Công thức:</b>
<br>N +  につき
<br>──────────<br><b>Cách dùng:</b>
<br>1.   Chỉ lý do (Vì, do): Dùng để thông báo một lý do nào đó, thường là trong các văn bản thông báo, biển báo. Rất trang trọng.
<br>2.   Chỉ tỷ lệ (Mỗi ~): Dùng để chỉ đơn vị, tỷ lệ (mỗi người, mỗi cái, mỗi giờ...).
<br>──────────<br><b>Ý nghĩa:</b> Chỉ lý do (trang trọng) hoặc tỷ lệ.
<br>──────────<br><b>Chú ý:</b>
<br>Là cách nói rất trang trọng, thường dùng trong văn bản.
<br>──────────<br><b>Ví dụ:</b>
<br>1.   本日は祝日につき、休業いたします。
<br>→ Vì hôm nay là ngày lễ nên chúng tôi xin phép nghỉ.
<br>2.   工事中につき、ご協力をお願いします。
<br>→ Vì đang thi công, mong quý vị hợp tác.
<br>3.   入場料は、お一人様につき千円です。
<br>→ Phí vào cửa là 1000 yên mỗi người.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～だから  (<b>N3</b>) /  ～のため  (<b>N4</b>): "Vì", chỉ lý do, nhưng không trang trọng bằng  「につき」.
<br><br>～ごとに  (<b>N3</b>): "Mỗi ~", chỉ sự lặp lại hoặc tỷ lệ, nhưng  「につき」
thường dùng trong các thông báo giá cả, quy định.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('112.  にわたって: Trải khắp; trong suốt (khoảng thời gian, không gian) ~.', 'Common', '     <b>Công thức:</b>
<br>N +  にわたって /  にわたり
<br>──────────<br><b>Cách dùng:</b> Dùng để diễn tả một sự việc, hành động, hoặc trạng thái diễn ra hoặc có ảnh hưởng trên một phạm vi rộng lớn về không gian hoặc trong một khoảng thời gian dài.
<br>──────────<br><b>Ý nghĩa:</b> Nhấn mạnh sự trải rộng về không gian hoặc kéo dài về thời gian.
<br>──────────<br><b>Chú ý:</b>
<br>N thường là danh từ chỉ không gian (全国、全地域) hoặc thời gian (長年、
数時間).
<br>──────────<br><b>Ví dụ:</b>
<br>会議は５日間にわたって行われた。
<br>→ Cuộc họp đã diễn ra trong suốt 5 ngày.
<br><br>台風の影響で、関東地方全域にわたって大雨が降った。
<br>→ Do ảnh hưởng của bão, mưa lớn đã xảy ra trên khắp toàn bộ khu vực Kanto.
<br><br>彼は長年にわたり、この研究を続けてきた。
<br>→ Ông ấy đã tiếp tục nghiên cứu này trong suốt nhiều năm.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～間  (<b>N4</b>) /  ～中  (<b>N4</b>): Cũng chỉ khoảng thời gian hoặc không gian, nhưng
「にわたって」 nhấn mạnh hơn vào sự trải rộng và quy mô lớn.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('113.  にも関わらず（にもかかわらず）: Mặc dù; bất chấp; tuy nhiên ~.', 'Common', '     <b>Công thức:</b>
<br>V / A い / A な / N + (thể thường) +  にもかかわらず
<br><br>(A な và N có thể +  である +  にもかかわらず)
<br>──────────<br><b>Cách dùng:</b> Dùng để diễn tả một sự việc xảy ra trái với dự đoán hoặc lẽ thường dựa trên điều kiện ở vế trước. Mang sắc thái trang trọng và có thể thể hiện sự ngạc nhiên hoặc bất mãn.
<br>──────────<br><b>Ý nghĩa:</b> Nhấn mạnh sự đối lập, "Mặc dù A... nhưng B vẫn xảy ra".
<br>──────────<br><b>Chú ý:</b>
<br>Trang trọng hơn  「のに」 hoặc  「けれど」.
<br><br>Vế sau thường là điều không ngờ tới.
<br>──────────<br><b>Ví dụ:</b>
<br>悪天候にもかかわらず、試合は予定通り行われた。
<br>→ Bất chấp thời tiết xấu, trận đấu vẫn diễn ra theo lịch trình.
<br><br>何度も注意したにもかかわらず、彼は同じ間違いを繰り返した。
<br>→ Mặc dù đã nhắc nhở nhiều lần, anh ta vẫn lặp lại sai lầm tương tự.
<br><br>彼は学生であるにもかかわらず、高級車に乗っている。
<br>→ Anh ta dù là sinh viên nhưng lại đi xe hơi cao cấp.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～のに  (<b>N4</b>): "Mặc dù", phổ biến, thường mang sắc thái bất mãn/ngạc nhiên.
<br><br>～ものの  (<b>N2</b>): "Mặc dù", trang trọng, thừa nhận vế 1 nhưng vế 2 không
tương xứng.
<br><br>～けれど  /  が  (<b>N5</b>): "Nhưng", chỉ sự đối lập thông thường.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('114.  にて: Ở; tại; bằng; bởi (trợ từ trang trọng).', 'Common', '     <b>Công thức:</b>
<br>N +  にて
<br>──────────<br><b>Cách dùng:</b> Là một trợ từ mang tính văn viết và trang trọng, được dùng thay ch<br><br>「
で」 trong các trường hợp sau:
<br>1.   Chỉ địa điểm xảy ra hành động (ở, tại).
<br>2.   Chỉ phương tiện, cách thức (bằng).
<br>3.   Chỉ thời điểm kết thúc (vào lúc).
<br>4.   Chỉ nguyên nhân (bởi).
<br>──────────<br><b>Ý nghĩa:</b> Thay thế ch<br><br>「で」 trong các ngữ cảnh trang trọng, đặc biệt là thư từ, thông báo, văn bản chính thức.
<br>──────────<br><b>Chú ý:</b>
<br>Rất trang trọng, không dùng trong văn nói thông thường.
<br>──────────<br><b>Ví dụ:</b>
<br>1.   会議は本社にて行われます。<br>→ (Cuộc họp sẽ được tổ chức tại trụ sở chính.)
<br>2.   詳細につきましては、書面にてご連絡いたします。<br>→ (Về chi tiết, chúng tôi sẽ liên lạc bằng văn bản.)
<br>3.   受付は午後５時にて終了いたします。<br>→ (Việc tiếp nhận sẽ kết thúc vào lúc 5 giờ chiều.)
<br>4.   病気にて欠席します。<br>→ (Tôi xin phép vắng mặt do bị bệnh.)
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～で  (<b>N5</b>): Là trợ từ tương ứng, dùng trong mọi tình huống thông thường.
<br><br>～において  (<b>N2</b>): "Tại", "ở", cũng chỉ địa điểm/thời điểm trang trọng, nhưng
không dùng cho phương tiện/nguyên nhân.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('115.  のももっともだ: ~ là đương nhiên; thảo nào ~.', 'Common', '     <b>Công thức:</b>
<br>V る / V た / A い / A な +  のももっともだ
<br>──────────<br><b>Cách dùng:</b> Dùng để thể hiện sự đồng tình, công nhận rằng một hành động, cảm xúc, hoặc tình trạng nào đó là hợp lý, có lý do chính đáng, không có gì lạ.
<br>──────────<br><b>Ý nghĩa:</b> "Việc... là đương nhiên/hợp lý", "Thảo nào...".
<br>──────────<br><b>Chú ý:</b>
<br>Thể hiện sự thấu hiểu, đồng cảm của người nói.
<br>──────────<br><b>Ví dụ:</b>
<br>あれだけ裏切られたのだから、彼女が彼を信じられないのももっともだ。
<br>→ Vì bị phản bội đến mức đó nên việc cô ấy không thể tin anh ta cũng là điều đương nhiên.
<br><br>一晩中勉強したのなら、眠いのももっともだ。
<br>→ Nếu đã học cả đêm thì việc buồn ngủ cũng là điều dễ hiểu.
<br><br>彼が怒るのももっともだ。君が悪かったんだから。
<br>→ Anh ấy tức giận cũng phải thôi. Vì cậu đã sai mà.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～のは当然だ（のはとうぜんだ）  (<b>N2</b>): "Là đương nhiên", nghĩa rất
giống nhau.  「もっともだ」 có thể mang sắc thái đồng cảm hơn.
<br><br>～はずだ  (<b>N4</b>): "Chắc chắn là", có thể dùng để chỉ điều đương nhiên theo lẽ thường.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('116.  の下で（のもとで）: Dưới (sự chỉ đạo, điều kiện, ảnh hưởng); với ~.', 'Common', '     <b>Công thức:</b>
<br>N +  の下で (のもとで) /  の下に (のもとに)
<br>──────────<br><b>Cách dùng:</b> Dùng để diễn tả một hành động hoặc sự việc diễn ra dưới một sự ảnh hưởng, sự chỉ đạo, một điều kiện, hoặc một danh nghĩa nào đó (N).
<br>──────────<br><b>Ý nghĩa:</b> Chỉ bối cảnh, điều kiện, hoặc sự ảnh hưởng.
<br>──────────<br><b>Chú ý:</b>
<br>N thường là người có thẩm quyền (先生、監督), hoặc các danh từ trừu tượng (法律、条件、指導、名目).
<br>──────────<br><b>Ví dụ:</b>
<br>厳しい先生の下で、私たちは多くのことを学んだ。
<br>→ Dưới sự chỉ bảo nghiêm khắc của thầy, chúng tôi đã học được rất nhiều điều.
<br><br>平等の原則の下に、法律は運用されるべきだ。
<br>→ Pháp luật nên được vận hành dưới nguyên tắc bình đẳng.
<br><br>国際協力の名の下で、様々な活動が行われている。
<br>→ Dưới danh nghĩa hợp tác quốc tế, nhiều hoạt động đa dạng đang được tiến hành.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～に従って  (<b>N2</b>): "Theo ~", chỉ sự tuân thủ.
<br><br>～に基づいて  (<b>N2</b>): "Dựa trên ~", chỉ cơ sở.  「の下で」 nhấn mạnh sự
ảnh hưởng hoặc điều kiện bao trùm.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('117.  の上では（のうえでは）: Theo; từ quan điểm của; về mặt ~.', 'Common', '     <b>Công thức:</b>
<br>N +  の上では (のうえでは) /  の上でも (のうえでも) /  の上の (のうえ
の)
<br>──────────<br><b>Cách dùng:</b> Dùng để chỉ một sự việc hoặc đánh giá dựa trên một khía cạnh, một phương diện nào đó (như lý thuyết, kế hoạch, số liệu, quy định...). Thường dùng khi có sự khác biệt giữa lý thuyết/bề ngoài và thực tế.
<br>──────────<br><b>Ý nghĩa:</b> "Xét về mặt ~", "Theo như ~".
<br>──────────<br><b>Chú ý:</b>
<br>Thường đi với các danh từ như  理論 (lý thuyết),  計画 (kế hoạch),  データ
(dữ liệu),  暦 (lịch),  法律 (pháp luật)...
<br>──────────<br><b>Ví dụ:</b>
<br>理論の上では可能だが、実践は難しいだろう。
<br>→ Về mặt lý thuyết thì có thể, nhưng thực hành chắc sẽ khó.
<br><br>暦の上ではもう春だが、まだ寒い日が続いている。
<br>→ Theo lịch thì đã là mùa xuân rồi, nhưng những ngày lạnh vẫn tiếp diễn.
<br><br>データの上では、問題はないように見える。
<br>→ Theo số liệu thì có vẻ không có vấn đề gì.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～上  (<b>N2</b>): Nghĩa tương tự, nhưng  「の上では」 nhấn mạnh hơn vào khía cạnh đó.
<br><br>～から見ると  (<b>N2</b>): "Nhìn từ ~", "xét từ ~".') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('118.  のみ: Chỉ; chỉ có ~.', 'Common', '     <b>Công thức:</b>
<br>N +  のみ
<br><br>V る +  のみ
<br>──────────<br><b>Cách dùng:</b> Dùng để giới hạn, chỉ duy nhất một đối tượng hoặc hành động. Đây là cách nói trang trọng và mang tính văn viết của  「だけ」.
<br>──────────<br><b>Ý nghĩa:</b> "Chỉ ~", "Duy nhất ~".
<br>──────────<br><b>Chú ý:</b>
<br>Rất trang trọng. Thường dùng trong thông báo, văn bản, quy định.
<br>──────────<br><b>Ví dụ:</b>
<br>会場内での飲食はご遠慮ください。ただし、水のみ許可します。
<br>→ Xin vui lòng không ăn uống trong hội trường. Tuy nhiên, chỉ riêng nước thì được phép.
<br><br>関係者のみ、立ち入りを許可する。
<br>→ Chỉ những người có liên quan mới được phép vào.
<br><br>成功は努力する者のみに与えられる。
<br>→ Thành công chỉ được ban cho những người nỗ lực.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～だけ  (<b>N4</b>): "Chỉ", là cách nói phổ biến nhất.
<br><br>～しか～ない  (<b>N4</b>): "Chỉ", dùng với phủ định, nhấn mạnh sự giới hạn.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('119.  のみならず: Không chỉ; bên cạnh đó; cũng như ~.', 'Common', '     <b>Công thức:</b>
<br>N +  のみならず
<br><br>V / A い / A な + (thể thường) +  のみならず
<br>──────────<br><b>Cách dùng:</b> Dùng để diễn tả rằng không chỉ có A mà còn có B. Đây là cách nói trang trọng của  「だけでなく」.
<br>──────────<br><b>Ý nghĩa:</b> "Không chỉ A, mà B cũng...", dùng để bổ sung, mở rộng.
<br>──────────<br><b>Chú ý:</b>
<br>Rất trang trọng, thường dùng trong văn viết, diễn văn.
<br><br>Vế sau thường đi với  「も」.
<br>──────────<br><b>Ví dụ:</b>
<br>この映画は日本国内のみならず、海外でも高く評価されている。
<br>→ Bộ phim này không chỉ ở Nhật Bản mà còn được đánh giá cao ở nước ngoài.
<br><br>彼は学者としてのみならず、芸術家としても有名だ。
<br>→ Ông ấy không chỉ nổi tiếng với tư cách là một học giả mà còn là một nghệ sĩ.
<br><br>大気汚染は、健康被害のみならず、環境にも悪影響を及ぼす。
<br>→ Ô nhiễm không khí không chỉ gây hại cho sức khỏe mà còn ảnh hưởng xấu đến môi trường.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～だけでなく  (<b>N3</b>): "Không chỉ... mà còn...", phổ biến nhất.
<br><br>～ばかりか  (<b>N2</b>): "Không chỉ... mà còn...", nhấn mạnh hơn vế sau.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('120.  ぬ: Thể phủ định của động từ (cổ, tương đương  ない).', 'Common', '     <b>Công thức:</b>
<br>Động từ thể  ない (bỏ  ない) +  ぬ (ん)
<br>──────────<br><b>Cách dùng:</b> Là dạng phủ định cổ của động từ, tương đương với  「ない」. Hiện nay chủ yếu được dùng trong các thành ngữ, quán dụng ngữ, hoặc trong văn viết mang sắc thái trang trọng, cổ xưa. Dạng  「ん」 cũng bắt nguồn từ đây.
<br>──────────<br><b>Ý nghĩa:</b> Phủ định (không).
<br>──────────<br><b>Chú ý:</b>
<br>Thường gặp trong các cụm cố định như  「知らぬが仏」 (Không biết là may),  「油断ならぬ」 (Không thể lơ là),  「～せぬ」 (không làm)...
<br><br>Dạng  「～ん」 (như  「分からん」,  「行かん」) là dạng nói, thân mật,
đôi khi hơi thô hoặc mang tính địa phương.
<br>──────────<br><b>Ví dụ:</b>
<br>思わぬ事故に巻き込まれてしまった。<br>→ (Bị cuốn vào một tai nạn không ngờ tới.)
<br><br>何事も諦めぬ精神が大切だ。<br>→ (Tinh thần không từ bỏ bất cứ điều gì là quan trọng.)
<br><br>分からぬことは、先生に聞くべきだ。<br>→ (Việc không hiểu thì nên hỏi thầy cô.)
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～ない  (<b>N5</b>): Là thể phủ định tiêu chuẩn và phổ biến nhất hiện nay.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('121.  抜きにして  /  抜きで（ぬきにして  /  ぬきで）: Bỏ qua; không có ~.', 'Common', '     <b>Công thức:</b>
<br>N + (は /  を) +  抜きにして (ぬきにして) /  抜きで (ぬきで)
<br>──────────<br><b>Cách dùng:</b> Dùng để diễn tả việc thực hiện một hành động hoặc xem xét một vấn đề mà không có N, hoặc bỏ qua N.
<br>──────────<br><b>Ý nghĩa:</b> "Không có N", "Loại bỏ N", "Bỏ qua N".
<br>──────────<br><b>Chú ý:</b>
<br>Thường dùng với những thứ như  「冗談 (trò đùa)」、「お世辞 (nịnh hót)
」、「朝食 (bữa sáng)」...
<br>──────────<br><b>Ví dụ:</b>
<br>冗談抜きで、真剣に考えてください。
<br>→ Bỏ qua chuyện đùa cợt, hãy suy nghĩ nghiêm túc đi.
<br><br>お世辞抜きに、あなたの日本語は本当に上手です。
<br>→ Không phải nịnh đâu, tiếng Nhật của bạn thực sự giỏi đấy.
<br><br>忙しいので、朝食抜きで会社に行った。
<br>→ Vì bận nên tôi đã đến công ty mà không ăn sáng.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～なしで  (<b>N4</b>): "Không có ~", cách nói phổ biến hơn.  「抜きにして」 thường mang sắc thái "tạm thời bỏ qua" hoặc "loại bỏ một yếu tố không cần thiết".
<br><br>～を除いて  (<b>N2</b>): "Ngoại trừ ~", dùng để loại trừ.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('122.  抜く（ぬく）: Làm ~ đến cùng; hoàn toàn, cực kỳ ~.', 'Common', '     <b>Công thức:</b>
<br>Động từ thể  ます (bỏ  ます) +  抜く (ぬく)
<br>──────────<br><b>Cách dùng:</b> Dùng sau động từ để diễn tả việc thực hiện hành động đó một cách trọn vẹn, đến cùng, vượt qua khó khăn để hoàn thành.
<br>──────────<br><b>Ý nghĩa:</b> Nhấn mạnh sự nỗ lực, kiên trì để hoàn thành một việc gì đó.
<br>──────────<br><b>Chú ý:</b>
<br>Thường đi với các động từ chỉ sự cố gắng, chịu đựng (頑張る、走り、考え...).
<br>──────────<br><b>Ví dụ:</b>
<br>大変だったが、最後までやり抜くことができた。
<br>→ Tuy vất vả nhưng tôi đã có thể làm được đến cùng.
<br><br>彼はフルマラソンを走り抜いた。
<br>→ Anh ấy đã chạy hết (đến cùng) cuộc thi marathon.
<br><br>悩み抜いた末に、会社を辞めることにした。
<br>→ Sau khi đã suy nghĩ trăn trở đến cùng, tôi quyết định nghỉ việc.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～続ける  (<b>N4</b>): "Tiếp tục làm ~", chỉ sự kéo dài của hành động.
<br><br>最後まで～する  (<b>N5</b>): "Làm ~ đến cuối cùng", diễn đạt ý tương tự nhưng
「抜く」 nhấn mạnh hơn vào sự nỗ lực và hoàn thành trọn vẹn.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('123.  を契機に（をけいきに）: Nhân cơ hội; là kết quả của; tận dụng ~.', 'Common', '     <b>Công thức:</b>
<br>N +  を契機に (をけいきに) /  を契機として (をけいきとして)
<br>──────────<br><b>Cách dùng:</b> Dùng để diễn tả một sự việc, sự kiện (N) trở thành thời cơ hoặc nguyên cớ trực tiếp dẫn đến một sự thay đổi lớn, một bước ngoặt, hoặc một hành động quan trọng mới.
<br>──────────<br><b>Ý nghĩa:</b> Nhấn mạnh N là thời cơ, động lực cho sự thay đổi (thường là tích cực và có quy mô).
<br>──────────<br><b>Chú ý:</b>
<br>Trang trọng hơn  「をきっかけに」.
<br><br>Thường dùng cho những thay đổi lớn, mang tính lịch sử hoặc xã hội.
<br>──────────<br><b>Ví dụ:</b>
<br>会社の創立 50 周年を契機に、新しいロゴをデザインした。
<br>→ Nhân dịp kỷ niệm 50 năm thành lập công ty, chúng tôi đã thiết kế logo mới.
<br><br>1964 年のオリンピックを契機として、日本の高速道路は整備された。
<br>→ Lấy Olympic năm 1964 làm thời cơ, đường cao tốc của Nhật Bản đã được xây dựng.
<br><br>この事件を契機に、法律が見直されることになった。
<br>→ Nhân vụ việc này, pháp luật đã được xem xét lại.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～をきっかけに  (<b>N2</b>): Nghĩa rất giống, "nhân cơ hội", "là kết quả của", nhưng có thể dùng cho cả những thay đổi cá nhân, nhỏ hơn.
<br><br>～を機に  (<b>N1</b>): "Nhân dịp", "nhân cơ hội", cũng rất trang trọng.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('124.  をめぐって: Xoay quanh; liên quan đến ~ (thường là tranh luận, bàn
cãi).', 'Common', '     <b>Công thức:</b>
<br>N +  をめぐって (をめぐって) /  をめぐる + N
<br>──────────<br><b>Cách dùng:</b> Dùng để chỉ chủ đề, vấn đề (N) đang là trung tâm của sự tranh luận, bàn cãi, xung đột, hoặc thảo luận giữa nhiều người, nhiều phía.
<br>──────────<br><b>Ý nghĩa:</b> Nhấn mạnh "xoay quanh chủ đề N", thường ám chỉ sự tranh cãi.
<br>──────────<br><b>Chú ý:</b>
<br>Vế sau thường là các động từ như  「議論する (thảo luận)」、「争う (tranh giành)」、「対立する (đối lập)」、「噂する (đồn đại)」.
<br><br>Chủ ngữ thường là số nhiều.
<br>──────────<br><b>Ví dụ:</b>
<br>遺産をめぐって、兄弟が争っている。
<br>→ Anh em đang tranh giành nhau xoay quanh vấn đề tài sản thừa kế.
<br><br>新しい法律をめぐり、国会で激しい議論が続いている。
<br>→ Xoay quanh bộ luật mới, các cuộc tranh luận gay gắt đang tiếp diễn tại Quốc hội.
<br><br>その事件をめぐる様々な憶測が飛び交っている。
<br>→ Nhiều phỏng đoán khác nhau xoay quanh vụ án đó đang lan truyền.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～について  (<b>N4</b>): "Về ~", chỉ chủ đề thông thường.
<br><br>～に関して  (<b>N3</b>): "Liên quan đến ~", trang trọng hơn  「について」.  「を
めぐって」 đặc biệt nhấn mạnh vào sự tranh luận, đối đầu xoay quanh chủ
đề.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('125.  をもとに: Dựa trên; xuất phát từ ~.', 'Common', '     <b>Công thức:</b>
<br>N +  をもとに (して) /  をもとにした + N
<br>──────────<br><b>Cách dùng:</b> Dùng để diễn tả rằng một cái gì đó được tạo ra, hình thành, hoặc quyết định dựa trên một nguyên liệu, ý tưởng, sự thật, hoặc dữ liệu cơ bản nào đó (N).
<br>──────────<br><b>Ý nghĩa:</b> Nhấn mạnh N là cơ sở, nguồn gốc, nguyên liệu để tạo ra cái mới.
<br>──────────<br><b>Chú ý:</b>
<br>Thường dùng khi nói về việc tạo ra tác phẩm, sản phẩm, hoặc đưa ra phán quyết.
<br>──────────<br><b>Ví dụ:</b>
<br>この小説は、作者自身の経験をもとに書かれた。
<br>→ Cuốn tiểu thuyết này được viết dựa trên kinh nghiệm của chính tác giả.
<br><br>アンケートの結果をもとにして、新しい商品を開発した。
<br>→ Chúng tôi đã phát triển sản phẩm mới dựa trên kết quả khảo sát.
<br><br>事実をもとに、判断を下す。
<br>→ Đưa ra phán đoán dựa trên sự thật.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～に基づいて  (<b>N2</b>): "Dựa trên ~", rất giống nhau, nhưng  「に基づいて」 thường nhấn mạnh hơn vào cơ sở, tiêu chuẩn, luật lệ.  「をもとに」 nhấn mạnh hơn vào nguyên liệu, ý tưởng ban đầu.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('126.  を除いて（をのぞいて）: Ngoại trừ; không kể ~.', 'Common', '     <b>Công thức:</b>
<br>N +  を除いて (をのぞいて) /  を除けば (をのぞけば)
<br>──────────<br><b>Cách dùng:</b> Dùng để loại trừ một đối tượng (N) ra khỏi một nhóm hoặc một phạm vi nào đó.
<br>──────────<br><b>Ý nghĩa:</b> "Trừ N ra thì...", "Ngoại trừ N".
<br>──────────<br><b>Chú ý:</b>
<br>Rất giống với  「以外」.
<br>──────────<br><b>Ví dụ:</b>
<br>日曜日を除いて、毎日営業しています。
<br>→ Ngoại trừ Chủ nhật, chúng tôi mở cửa hàng ngày.
<br><br>彼を除いて、全員がその計画に賛成した。
<br>→ Trừ anh ta ra, tất cả mọi người đều tán thành kế hoạch đó.
<br><br>この点をを除けば、彼のレポートは完璧だ。
<br>→ Nếu trừ điểm này ra thì bài báo cáo của anh ấy hoàn hảo.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～以外  (<b>N2</b>): Nghĩa rất giống nhau, "ngoại trừ".') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('127.  を問わず（をとわず）: Bất kể; không phân biệt ~.', 'Common', '     <b>Công thức:</b>
<br>N +  を問わず (をとわず)
<br>──────────<br><b>Cách dùng:</b> Dùng để diễn tả rằng một sự việc nào đó được áp dụng hoặc diễn ra mà không có sự phân biệt, không phụ thuộc vào N.
<br>──────────<br><b>Ý nghĩa:</b> Nhấn mạnh sự không phân biệt, "bất kể N là gì".
<br>──────────<br><b>Chú ý:</b>
<br>Thường dùng trong các thông báo, quy định, tuyển dụng.
<br><br>N thường là các danh từ chỉ sự đa dạng hoặc cặp đối lập (年齢、性別、国籍
、経験の有無、昼夜...).
<br>──────────<br><b>Ví dụ:</b>
<br>このイベントは、年齢を問わずどなたでも参加できます。
<br>→ Sự kiện này, bất kể tuổi tác, bất kỳ ai cũng có thể tham gia.
<br><br>経験の有無を問わず、広く人材を募集します。
<br>→ Chúng tôi tuyển dụng nhân tài rộng rãi, bất kể có kinh nghiệm hay không.
<br><br>この店は昼夜を問わず、２４時間営業している。
<br>→ Cửa hàng này hoạt động 24 giờ, bất kể ngày đêm.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～にかかわらず  (<b>N2</b>): "Bất kể", nghĩa rất giống nhau.
<br><br>～に関係なく  (<b>N3</b>): "Không liên quan đến", nghĩa tương tự.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('128.  お～願う（お～ねがう）: Làm ơn; xin hãy ~; tôi nhờ bạn ~.', 'Common', '     <b>Công thức:</b>
<br>お + V ます (bỏ  ます) +  願う (ねがう)
<br><br>ご + N (Hán-Nhật) +  願う (ねがう)
<br>──────────<br><b>Cách dùng:</b> Là một dạng kính ngữ (khiêm nhường ngữ) dùng để yêu cầu, nhờ vả người khác làm gì đó cho mình một cách rất lịch sự.
<br>──────────<br><b>Ý nghĩa:</b> Thể hiện sự nhờ vả một cách kính trọng.
<br>──────────<br><b>Chú ý:</b>
<br>Đây là cách nói rất lịch sự, thường dùng với người trên hoặc trong các tình huống trang trọng.
<br>──────────<br><b>Ví dụ:</b>
<br>少々お待ち願えますでしょうか。
<br>→ Xin quý khách vui lòng chờ một chút được không ạ?
<br><br>こちらの書類にご記入願います。
<br>→ Xin vui lòng điền vào tài liệu này ạ.
<br><br>ご確認願います。
<br>→ Xin vui lòng xác nhận ạ.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～てください  (<b>N5</b>): Yêu cầu thông thường.
<br><br>お～ください  (<b>N4</b>): Yêu cầu lịch sự (tôn kính ngữ).
<br><br>～ていただく  (<b>N4/N3</b>): "Nhận được việc ~ (từ ai đó)", là khiêm nhường ngữ
để diễn tả việc mình được người khác làm cho.  「お～願う」 là cách nhờ vả
trực tiếp hơn.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('129.  おまけに: Tồi tệ hơn là; bên cạnh đó; hơn nữa; thêm vào đó ~.', 'Common', '     <b>Công thức:</b>
<br>[Câu 1]。おまけに、[Câu 2]。
<br>──────────<br><b>Cách dùng:</b> Dùng để bổ sung thêm một thông tin, một yếu tố nữa vào những gì đã nói trước đó. Thường dùng khi vế trước và vế sau cùng chiều (cùng tốt hoặc cùng xấu), và thường mang sắc thái văn nói, đôi khi nhấn mạnh sự cộng hưởng (thường là tiêu cực).
<br>──────────<br><b>Ý nghĩa:</b> "Thêm vào đó", "Hơn nữa".
<br>──────────<br><b>Chú ý:</b>
<br>Mang tính văn nói hơn  「その上」 hay  「しかも」.
<br><br>Có thể dùng cho cả tốt và xấu, nhưng thường gặp hơn khi thêm vào một yếu tố không mong muốn.
<br>──────────<br><b>Ví dụ:</b>
<br>今日は雨が降っているし、おまけに風も強い。
<br>→ Hôm nay trời vừa mưa, thêm vào đó gió cũng mạnh.
<br><br>このレストランは高いし、おまけにサービスも悪い。
<br>→ Nhà hàng này vừa đắt, hơn nữa dịch vụ cũng tồi.
<br><br>彼はハンサムでおまけに頭もいい。
<br>→ Anh ấy vừa đẹp trai, thêm vào đó còn thông minh nữa.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>その上（そのうえ）  (<b>N2</b>): "Hơn nữa", "thêm vào đó", trang trọng hơn.
<br><br>しかも  (<b>N3</b>): "Hơn nữa", "vả lại", dùng phổ biến.
<br><br>それに  (<b>N4</b>): "Hơn nữa", dùng trong văn nói.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('130.  恐らく（おそらく）: Có lẽ; rất có thể; có khả năng ~.', 'Common', '     <b>Công thức:</b>
<br>恐らく + [Phán đoán] +  だろう /  でしょう /  と思う /  に違いない…
<br>──────────<br><b>Cách dùng:</b> Dùng để diễn tả sự phán đoán của người nói với mức độ chắc chắn khá cao, dựa trên một số cơ sở nào đó. Thường dùng cho những phán đoán về tương lai hoặc những điều chưa rõ ràng.
<br>──────────<br><b>Ý nghĩa:</b> "Có lẽ", "Chắc là".
<br>──────────<br><b>Chú ý:</b>
<br>Trang trọng hơn  「多分」.
<br><br>Thường đi với các đuôi câu chỉ sự phán đoán.
<br>──────────<br><b>Ví dụ:</b>
<br>明日はおそらく雨が降るだろう。
<br>→ Ngày mai có lẽ trời sẽ mưa.
<br><br>このままでは、おそらく間に合わないだろう。
<br>→ Cứ thế này thì rất có thể sẽ không kịp.
<br><br>彼は恐らく会議に遅れてくるだろう。
<br>→ Anh ấy có khả năng sẽ đến muộn cuộc họp.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>多分（たぶん）  (<b>N5</b>): "Có lẽ", là cách nói phổ biến nhất.
<br><br>きっと  (<b>N4</b>): "Chắc chắn", mức độ chắc chắn cao hơn, thường mang tính chủ
quan.  「おそらく」 dựa trên cơ sở khách quan hơn một chút.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('131.  恐れがある（おそれがある）: E là; có nguy cơ là ~.', 'Common', '     <b>Công thức:</b>
<br>N の +  恐れがある (おそれがある)
<br><br>V る +  恐れがある (おそれがある)
<br>──────────<br><b>Cách dùng:</b> Dùng để diễn tả khả năng xảy ra một việc gì đó xấu, không mong muốn. Thường được dùng trong các bản tin, thông báo, cảnh báo để nói về những rủi ro tiềm ẩn.
<br>──────────<br><b>Ý nghĩa:</b> Chỉ ra nguy cơ, rủi ro có thể xảy ra.
<br>──────────<br><b>Chú ý:</b>
<br>Luôn dùng cho những việc tiêu cực.
<br><br>Là cách nói trang trọng.
<br>──────────<br><b>Ví dụ:</b>
<br>台風が上陸し、大きな被害が出る恐れがある。
<br>→ Bão đổ bộ, e là sẽ có thiệt hại lớn.
<br><br>この薬は副作用の恐れがありますので、注意してください。
<br>→ Thuốc này có nguy cơ gây tác dụng phụ, xin hãy chú ý.
<br><br>このまま感染が拡大すると、医療崩壊を招く恐れがある。
<br>→ Nếu tình trạng lây nhiễm cứ lan rộng thế này, e là sẽ dẫn đến sụp đổ y tế.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～かもしれない  (<b>N4</b>): "Có lẽ", dùng cho cả khả năng tốt và xấu.
<br><br>～かねない  (<b>N2</b>): "Có thể sẽ ~", cũng dùng cho việc xấu nhưng ít trang trọng
hơn.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('132.  及び（および）: Và; cũng như ~.', 'Common', '     <b>Công thức:</b>
<br>N1  及び N2 (N1  および N2)
<br>──────────<br><b>Cách dùng:</b> Dùng để nối hai hoặc nhiều danh từ có vai trò tương đương nhau. Đây là cách nói rất trang trọng, thường dùng trong văn viết, văn bản pháp luật, tài liệu chính thức.
<br>──────────<br><b>Ý nghĩa:</b> Tương đương với  「と」 hoặc  「や」 nhưng trang trọng hơn nhiều.
<br>──────────<br><b>Chú ý:</b>
<br>Chỉ dùng để nối danh từ.
<br><br>Rất trang trọng, không dùng trong văn nói thông thường.
<br>──────────<br><b>Ví dụ:</b>
<br>会場には、テーブル及び椅子が用意されています。
<br>→ Trong hội trường, bàn và ghế đã được chuẩn bị.
<br><br>本契約書には、甲及び乙が署名捺印するものとする。
<br>→ Hợp đồng này sẽ do bên A và bên B ký tên đóng dấu.
<br><br>住所、氏名及び電話番号を記入してください。
<br>→ Xin hãy điền địa chỉ, họ tên và số điện thoại.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～と  (<b>N5</b>): "Và", dùng để liệt kê đầy đủ.
<br><br>～や  (<b>N5</b>): "Và", dùng để liệt kê không đầy đủ.
<br><br>並びに（ならびに）  (<b>N1</b>): "Và", cũng rất trang trọng, thường dùng để nối
các nhóm danh từ lớn.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('133.  ろくに～ない: Không ~ tử tế; không ~ đủ; không ~ ra hồn.', 'Common', '     <b>Công thức:</b>
<br>ろくに + V ない
<br>──────────<br><b>Cách dùng:</b> Dùng để diễn tả rằng một hành động nào đó không được thực hiện một cách đầy đủ, chu đáo, hoặc đúng mức cần thiết. Thường mang sắc thái bất mãn hoặc than phiền.
<br>──────────<br><b>Ý nghĩa:</b> Nhấn mạnh sự không đầy đủ, không chu đáo của hành động.
<br>──────────<br><b>Chú ý:</b>
<br>Luôn đi với thể phủ định.
<br>──────────<br><b>Ví dụ:</b>
<br>忙しくて、昨日はろくに寝ていない。
<br>→ Bận quá nên hôm qua tôi đã không ngủ được tử tế.
<br><br>彼はろくに勉強もしないで、いつも遊んでばかりいる。
<br>→ Cậu ta chẳng học hành gì ra hồn, lúc nào cũng chỉ toàn chơi bời.
<br><br>字が下手で、自分の名前もろくに書けない。
<br>→ Chữ xấu quá, đến tên mình tôi cũng không viết được tử tế.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>あまり～ない  (<b>N5</b>): "Không ~ lắm".
<br><br>十分に～ない  (<b>N4</b>): "Không ~ đủ".  「ろくに～ない」 mang sắc thái
mạnh hơn, thể hiện sự thiếu sót đáng kể.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('134.  幸いなことに（さいわいなことに）: May mắn là; thật may ~.', 'Common', '     <b>Công thức:</b>
<br>幸いなことに、[Câu]
<br><br>幸い（にも）、[Câu]
<br>──────────<br><b>Cách dùng:</b> Đứng đầu câu, dùng để diễn tả rằng một sự việc tốt đẹp, may mắn nào đó đã xảy ra, thường là trong một tình huống khó khăn hoặc có nguy cơ xấu.
<br>──────────<br><b>Ý nghĩa:</b> Nhấn mạnh sự may mắn.
<br>──────────<br><b>Chú ý:</b>
<br>Mang sắc thái tích cực.
<br>──────────<br><b>Ví dụ:</b>
<br>幸いなことに、事故にあったが、けがはなかった。
<br>→ May mắn là tuy gặp tai nạn nhưng tôi không bị thương.
<br><br>幸いにも、なくした財布が見つかった。
<br>→ Thật may, cái ví bị mất đã được tìm thấy.
<br><br>幸いなことに、天気にも恵まれ、旅行はとても楽しかった。
<br>→ May mắn là thời tiết cũng đẹp nên chuyến đi rất vui.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>運よく（うんよく）  (<b>N3</b>): "May mắn thay", nghĩa tương tự.
<br><br>～てよかった  (<b>N4</b>): "Thật tốt vì đã ~", diễn tả sự hài lòng/may mắn.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('135.  せいか: Có lẽ là vì ~.', 'Common', '     <b>Công thức:</b>
<br>V / A い / A な / N + (thể thường) +  せいか
<br>──────────<br><b>Cách dùng:</b> Dùng để đưa ra một nguyên nhân có thể có cho một kết quả nào đó, nhưng người nói không chắc chắn hoàn toàn. Thường dùng khi kết quả không tốt, nhưng không mang ý đổ lỗi mạnh như  「せいで」.
<br>──────────<br><b>Ý nghĩa:</b> Phỏng đoán nguyên nhân, "có lẽ tại ~", "không biết có phải tại ~ không".
<br>──────────<br><b>Chú ý:</b>
<br>Mức độ chắc chắn không cao.
<br><br>Có thể dùng cho cả kết quả tốt và xấu, nhưng thường gặp hơn với kết quả không tốt.
<br>──────────<br><b>Ví dụ:</b>
<br>緊張したせいか、頭が痛くなってきた。
<br>→ Có lẽ là vì căng thẳng nên tôi bắt đầu đau đầu.
<br><br>寝不足のせいか、今日は集中できない。
<br>→ Có lẽ là do thiếu ngủ nên hôm nay tôi không thể tập trung được.
<br><br>年のせいか、最近忘れっぽくなった。
<br>→ Có lẽ là tại tuổi tác mà gần đây tôi trở nên hay quên.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～からか  (<b>N3</b>): "Có lẽ là vì ~", nghĩa rất giống nhau.
<br><br>～ためか  (<b>N3</b>): "Có lẽ là do ~", cũng tương tự.
<br><br>～せいで  (<b>N3</b>): "Tại vì ~", chỉ nguyên nhân xấu, mang tính khẳng định và đổ
lỗi.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('136.  せっかく: Cất công; đặc biệt; (cảm ơn vì) đã mất công ~.', 'Common', '     <b>Công thức:</b>
<br>Là một trạng từ (副詞).
<br><br>せっかく + [Hành động/Sự việc]
<br>──────────<br><b>Cách dùng:</b>
<br>1.   Diễn tả một hành động được thực hiện với sự cố gắng, nỗ lực, hoặc trong một cơ hội hiếm có.
<br>2.   Đi với  「のに」、「だから」 để thể hiện sự tiếc nuối khi công sức hoặc cơ hội đó bị lãng phí.
<br>3.   Dùng để bày tỏ lòng biết ơn khi ai đó đã cất công làm gì cho mình.
<br>──────────<br><b>Ý nghĩa:</b> Nhấn mạnh sự nỗ lực, công sức, hoặc cơ hội quý báu.
<br>──────────<br><b>Chú ý:</b>
<br>Thường mang sắc thái tiếc nuối khi đi với  「のに」.
<br>──────────<br><b>Ví dụ:</b>
<br>せっかく作った料理なのに、誰も食べてくれなかった。<br>→ (Tôi đã cất công nấu ăn, vậy mà không ai ăn cả.)
<br><br>せっかくの日曜日なのに、雨でどこにも行けない。<br>→ (Đã là ngày Chủ nhật hiếm có, vậy mà trời mưa chẳng đi đâu được.)
<br><br>せっかくですから、どうぞお召し上がりください。<br>→ (Vì đã cất công (chuẩn bị) rồi, xin mời anh/chị dùng.)
<br><br>せっかく来てくれたのに、留守にしていてごめんね。<br>→ (Bạn đã cất công đến chơi, vậy mà tớ lại đi vắng, xin lỗi nhé.)
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>わざわざ  (<b>N3</b>): "Cất công", "có nhã ý", cũng chỉ sự nỗ lực, nhưng thường nhấn mạnh vào việc làm một điều gì đó đặc biệt cho người khác.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('137.  せめて: Ít nhất; tối thiểu ~.', 'Common', '     <b>Công thức:</b>
<br>せめて + [Mong muốn/Yêu cầu tối thiểu]
<br>──────────<br><b>Cách dùng:</b> Dùng để diễn tả một mong muốn tối thiểu, một điều nhỏ nhất mà người nói hy vọng có thể đạt được, đặc biệt là khi không thể đạt được điều lý tưởng nhất.
<br>──────────<br><b>Ý nghĩa:</b> Nhấn mạnh "dù không được nhiều, thì ít nhất cũng được chừng này".
<br>──────────<br><b>Chú ý:</b>
<br>Thể hiện mong muốn tối thiểu trong một tình huống không như ý.
<br>──────────<br><b>Ví dụ:</b>
<br>優勝は無理でも、せめて決勝には進みたい。
<br>→ Dù không thể vô địch, nhưng ít nhất tôi cũng muốn tiến vào trận chung kết.
<br><br>毎日とは言わないが、せめて週に一度は電話してほしい。
<br>→ Tôi không nói là mỗi ngày, nhưng ít nhất cũng mong bạn gọi điện mỗi tuần một lần.
<br><br>全部食べなくてもいいから、せめてスープだけでも飲んでください。
<br>→ Không cần ăn hết cũng được, xin hãy uống ít nhất là món súp.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>少なくとも（すくなくとも）  (<b>N2</b>): "Ít nhất", thường dùng để nói về số lượng hoặc mức độ tối thiểu một cách khách quan hơn.  「せめて」 mang tính mong muốn, cảm xúc chủ quan hơn.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('138.  次第（しだい）: Ngay khi ~.', 'Common', '     <b>Công thức:</b>
<br>Động từ thể  ます (bỏ  ます) +  次第 (しだい)
<br>──────────<br><b>Cách dùng:</b> Dùng để diễn tả rằng ngay sau khi hành động 1 (V ます) hoàn thành thì hành động 2 sẽ được thực hiện ngay lập tức. Thường dùng trong các tình huống trang trọng, thông báo, hoặc kinh doanh.
<br>──────────<br><b>Ý nghĩa:</b> Nhấn mạnh sự thực hiện ngay lập tức sau khi hoàn thành V.
<br>──────────<br><b>Chú ý:</b>
<br>Chỉ dùng cho hành động trong tương lai.
<br><br>Vế sau thường thể hiện ý chí, yêu cầu, hoặc thông báo.
<br><br>Không dùng cho hành động đã xảy ra trong quá khứ hoặc những việc ngoài ý muốn.
<br><br>Khác với  「次第で」 (tùy thuộc vào).
<br>──────────<br><b>Ví dụ:</b>
<br>詳しいことが分かり次第、ご連絡いたします。
<br>→ Ngay khi biết thông tin chi tiết, tôi sẽ liên lạc.
<br><br>会議が終わり次第、そちらへ伺います。
<br>→ Ngay khi cuộc họp kết thúc, tôi sẽ đến chỗ anh/chị.
<br><br>準備ができ次第、出発しましょう。
<br>→ Ngay khi chuẩn bị xong, chúng ta hãy xuất phát.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～たらすぐ  (<b>N5/N4</b>): "Nếu ~ thì ngay lập tức", cách nói thông thường.
<br><br>～たとたん  (<b>N3</b>): "Ngay khi", thường dùng cho kết quả bất ngờ, không kiểm
soát được.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('139.  次第で（しだいで）: Tùy thuộc vào; do đó ~.', 'Common', '     <b>Công thức:</b>
<br>N +  次第で (しだいで) /  次第だ (しだいだ)
<br>──────────<br><b>Cách dùng:</b> Dùng để diễn tả rằng kết quả hoặc tình hình ở vế sau sẽ thay đổi, phụ thuộc vào N ở vế trước.
<br>──────────<br><b>Ý nghĩa:</b> Nhấn mạnh sự phụ thuộc vào N, "tùy vào N mà...".
<br>──────────<br><b>Chú ý:</b>
<br>Khác với  「次第」 (ngay khi).
<br>──────────<br><b>Ví dụ:</b>
<br>明日の天気次第で、ハイキングに行くかどうか決めましょう。
<br>→ Tùy thuộc vào thời tiết ngày mai mà chúng ta quyết định có đi leo núi hay không.
<br><br>努力次第で、夢は叶うかもしれない。
<br>→ Tùy thuộc vào nỗ lực mà giấc mơ có thể sẽ thành hiện thực.
<br><br>この試合に勝てるかどうかは、練習次第だ。
<br>→ Việc có thể thắng trận đấu này hay không là tùy thuộc vào việc luyện tập.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～によって  (<b>N3</b>): "Tùy thuộc vào", "do ~", nghĩa rất giống nhau.
<br><br>～にかかっている  (<b>N3</b>): "Phụ thuộc vào ~", nhấn mạnh sự quyết định nằm
ở N.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('140.  次第に（しだいに）: Dần dần; từ từ; theo thứ tự ~.', 'Common', '     <b>Công thức:</b>
<br>Là một trạng từ (副詞).
<br>──────────<br><b>Cách dùng:</b> Dùng để diễn tả một sự thay đổi diễn ra một cách từ từ, từng chút một theo thời gian.
<br>──────────<br><b>Ý nghĩa:</b> Nhấn mạnh sự thay đổi dần dần.
<br>──────────<br><b>Chú ý:</b>
<br>Trang trọng hơn  「だんだん」.
<br>──────────<br><b>Ví dụ:</b>
<br>秋になり、木の葉が次第に色づいてきた。
<br>→ Mùa thu đến, lá cây đã dần dần đổi màu.
<br><br>夜が更けるにつれて、気温は次第に下がってきた。
<br>→ Đêm càng về khuya, nhiệt độ càng dần dần hạ xuống.
<br><br>彼の病気は次第に回復に向かっている。
<br>→ Bệnh của anh ấy đang dần dần hồi phục.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>だんだん  (<b>N5</b>): "Dần dần", dùng phổ biến trong văn nói.
<br><br>少しずつ（すこしずつ）  (<b>N4</b>): "Từng chút một".
<br><br>徐々に（じょじょに）  (<b>N1</b>): "Dần dần", "từ từ", rất trang trọng.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('141.  しかも: Hơn nữa; vả lại; mà lại ~.', 'Common', '     <b>Công thức:</b>
<br>[Câu 1]。しかも、[Câu 2]。
<br>──────────<br><b>Cách dùng:</b> Dùng để bổ sung thêm một thông tin, nhấn mạnh rằng không chỉ có A mà còn có B. Thường dùng khi vế sau bổ sung thêm một đặc điểm (tốt hoặc xấu) cùng chiều với vế trước.
<br>──────────<br><b>Ý nghĩa:</b> "Hơn nữa", "Thêm vào đó".
<br>──────────<br><b>Chú ý:</b>
<br>Dùng phổ biến trong cả văn nói và viết.
<br>──────────<br><b>Ví dụ:</b>
<br>このレストランは美味しいし、しかも値段も安い。
<br>→ Nhà hàng này vừa ngon, hơn nữa giá lại còn rẻ.
<br><br>彼は頭がいい。しかも、スポーツも万能だ。
<br>→ Anh ta thông minh. Hơn nữa, thể thao cũng toàn năng.
<br><br>雨が降ってきた。しかも、風も強くなってきた。
<br>→ Mưa đã rơi rồi. Mà lại, gió cũng mạnh lên nữa.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>その上（そのうえ）  (<b>N2</b>): "Hơn nữa", nghĩa rất giống.
<br><br>おまけに  (<b>N2</b>): "Hơn nữa", mang tính văn nói hơn.
<br><br>さらに  (<b>N3</b>): "Hơn nữa", "thêm nữa".') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('142.  その上（そのうえ）: Bên cạnh đó; thêm vào đó; hơn nữa ~.', 'Common', '     <b>Công thức:</b>
<br>[Câu 1]。その上、[Câu 2]。
<br>──────────<br><b>Cách dùng:</b> Tương tự như  「しかも」, dùng để bổ sung thêm một thông tin, thường là cùng chiều (cùng tốt hoặc cùng xấu).
<br>──────────<br><b>Ý nghĩa:</b> "Hơn nữa", "Thêm vào đó".
<br>──────────<br><b>Chú ý:</b>
<br>Có thể trang trọng hơn  「しかも」 một chút.
<br>──────────<br><b>Ví dụ:</b>
<br>彼は仕事ができる。その上、性格もいい。
<br>→ Anh ấy làm việc tốt. Thêm vào đó, tính cách cũng tốt.
<br><br>今日は寝坊した。その上、電車も遅れた。
<br>→ Hôm nay tôi ngủ quên. Hơn nữa, tàu điện cũng bị trễ.
<br><br>彼は日本語が話せる。その上、英語も流暢だ。
<br>→ Anh ấy nói được tiếng Nhật. Bên cạnh đó, tiếng Anh cũng trôi chảy.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>しかも  (<b>N3</b>): "Hơn nữa", nghĩa rất giống.
<br><br>おまけに  (<b>N2</b>): "Hơn nữa", mang tính văn nói.
<br><br>さらに  (<b>N3</b>): "Hơn nữa", "thêm nữa".') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('143.  それなのに: Thế nhưng; dù vậy; vậy mà ~.', 'Common', '     <b>Công thức:</b>
<br>[Câu 1]。それなのに、[Câu 2]。
<br>──────────<br><b>Cách dùng:</b> Dùng để nối hai vế có ý nghĩa trái ngược, trong đó vế sau thể hiện một kết quả không như mong đợi hoặc trái với lẽ thường dựa trên vế trước. Thường mang sắc thái bất mãn, ngạc nhiên, hoặc phàn nàn.
<br>──────────<br><b>Ý nghĩa:</b> Nhấn mạnh sự đối lập không mong đợi, "Vậy mà...".
<br>──────────<br><b>Chú ý:</b>
<br>Mạnh hơn  「なのに」, thể hiện sự bất mãn, ngạc nhiên rõ rệt hơn.
<br>──────────<br><b>Ví dụ:</b>
<br>一生懸命勉強した。それなのに、試験に落ちてしまった。
<br>→ Tôi đã học hành chăm chỉ. Thế nhưng, tôi lại thi trượt.
<br><br>彼は何度も謝った。それなのに、彼女は許してくれなかった。
<br>→ Anh ấy đã xin lỗi nhiều lần. Dù vậy, cô ấy vẫn không tha thứ.
<br><br>今日は日曜日だ。それなのに、働かなければならない。
<br>→ Hôm nay là Chủ nhật. Vậy mà tôi vẫn phải làm việc.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>なのに  (<b>N4</b>): "Vậy mà", "thế mà", nghĩa rất giống, phổ biến hơn trong văn nói.
<br><br>のに  (<b>N4</b>): "Mặc dù", có thể dùng giữa câu.
<br><br>けれど  /  でも  (<b>N5</b>): "Nhưng", chỉ sự đối lập thông thường.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('144.  それなら: Nếu vậy; trong trường hợp đó ~.', 'Common', '     <b>Công thức:</b>
<br>[Câu 1]。それなら、[Câu 2]。
<br>──────────<br><b>Cách dùng:</b> Dùng khi nghe một thông tin nào đó (Câu 1) và dựa vào đó để đưa ra một đề nghị, gợi ý, hoặc kết luận (Câu 2).
<br>──────────<br><b>Ý nghĩa:</b> "Nếu là như thế thì...", "Vậy thì...".
<br>──────────<br><b>Chú ý:</b>
<br>Là cách nói lịch sự hơn  「じゃあ」.
<br>──────────<br><b>Ví dụ:</b>
<br>A:  頭が痛いんです。<br>→ (Tôi bị đau đầu.) B:  それなら、薬を飲んだ方がいいですよ。<br>→ (Nếu vậy thì bạn nên uống thuốc đi.)
<br><br>A:  明日は雨だそうです。<br>→ (Nghe nói ngày mai trời mưa.) B:  それなら、ピクニックは中止にしましょう。<br>→ (Vậy thì chúng ta hãy hủy buổi dã ngoại đi.)
<br><br>A:  このレストランは高いよ。<br>→ (Nhà hàng này đắt đấy.) B:  それなら、別の店を探そう。<br>→ (Nếu vậy thì tìm quán khác đi.)
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>じゃあ  (<b>N5</b>): "Vậy thì", dùng trong văn nói thân mật.
<br><br>では  (<b>N5</b>): "Vậy thì", lịch sự hơn  「じゃあ」, nhưng không bằng  「それな
ら」.
<br><br>そしたら  (<b>N4</b>): "Nếu vậy thì", dùng trong văn nói.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('145.  それにしても: Dù sao đi nữa; tuy nhiên; kể cả như vậy ~.', 'Common', '     <b>Công thức:</b>
<br>[Câu 1]。それにしても、[Câu 2]。
<br>──────────<br><b>Cách dùng:</b> Dùng để thừa nhận nội dung của vế trước (Câu 1), nhưng đồng thời đưa ra một nhận xét, cảm xúc (thường là ngạc nhiên, thán phục, hoặc phàn nàn) ở vế sau (Câu 2) mà người nói cảm thấy vượt quá mức bình thường hoặc dự đoán.
<br>──────────<br><b>Ý nghĩa:</b> "Kể cả vậy thì cũng...", "Dù sao đi nữa thì...".
<br>──────────<br><b>Chú ý:</b>
<br>Thể hiện sự ngạc nhiên hoặc cảm xúc mạnh trước một sự thật.
<br>──────────<br><b>Ví dụ:</b>
<br>彼は努力家だが、それにしても、あんなに短期間で成功するとは驚きだ。
<br>→ Anh ấy là người nỗ lực, nhưng dù sao đi nữa, việc thành công trong thời gian ngắn như vậy thật đáng ngạc nhiên.
<br><br>値段が高いのは知っていたが、それにしても、これは高すぎる。
<br>→ Tôi biết là giá cao, nhưng kể cả vậy thì cái này cũng quá đắt.
<br><br>暑いとは聞いていたけど、それにしても今日の暑さは異常だ。
<br>→ Nghe nói là nóng, nhưng dù sao đi nữa, cái nóng hôm nay thật bất thường.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>しかし  (<b>N4</b>) /  でも  (<b>N5</b>): "Nhưng", chỉ sự đối lập thông thường.
<br><br>だとしても  (<b>N2</b>): "Ngay cả nếu ~ thì cũng", chỉ giả định.  「それにしても
」 thừa nhận vế 1 là thật và thể hiện cảm xúc về mức độ của nó.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('146.  そう言えば（そういえば）: Nghĩ lại thì; nhân tiện nói đến ~.', 'Common', '     <b>Công thức:</b>
<br>そう言えば、[Câu]。
<br>──────────<br><b>Cách dùng:</b> Dùng khi người nói chợt nhớ ra một điều gì đó có liên quan đến chủ đề đang được nói đến.
<br>──────────<br><b>Ý nghĩa:</b> Dùng để chuyển chủ đề hoặc bổ sung thông tin vừa nhớ ra.
<br>──────────<br><b>Chú ý:</b>
<br>Thường dùng trong hội thoại.
<br>──────────<br><b>Ví dụ:</b>
<br>A:  明日は山田さんの誕生日だね。<br>→ (Mai là sinh nhật Yamada nhỉ.) B:  そう言えば、彼、最近元気ないみたいだけど、どうしたんだろう。<br>→ (Nghĩ lại thì, dạo này anh ấy có vẻ không khỏe, không biết sao nhỉ.)
<br><br>そう言えば、駅前に新しいカフェができたらしいよ。
<br>→ Nhân tiện nói đến, hình như trước ga có quán cà phê mới mở đấy.
<br><br>A:  この映画、面白かったね。<br>→ (Bộ phim này hay nhỉ.) B:  うん。そう言え
ば、主役の俳優、結婚したんだって。<br>→ (Ừ. Nghĩ lại thì, diễn viên chính nghe nói kết hôn rồi đấy.)
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>ちなみに  (<b>N2</b>): "Nhân tiện", dùng để bổ sung thông tin phụ, nhưng không nhất thiết là chợt nhớ ra.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('147.  そうすると: Nếu làm vậy thì; nếu thế thì ~.', 'Common', '     <b>Công thức:</b>
<br>[Câu 1]。そうすると、[Câu 2]。
<br>──────────<br><b>Cách dùng:</b> Dùng để chỉ kết quả hoặc hành động tiếp theo xảy ra một cách logic dựa trên nội dung của câu trước.
<br>──────────<br><b>Ý nghĩa:</b> "Nếu vậy thì...", "Làm thế thì...", chỉ mối quan hệ nhân quả hoặc trình tự logic.
<br>──────────<br><b>Chú ý:</b>
<br>Thường dùng để suy luận hoặc đề xuất hành động tiếp theo.
<br>──────────<br><b>Ví dụ:</b>
<br>A:  電車で行きますか。<br>→ (Chúng ta đi bằng tàu điện nhé?) B:  電車は混むかもしれませんね。<br>→ (Tàu điện có thể sẽ đông đấy.) A:  そうすると、バスで行った方がいいかもしれません。<br>→ (Nếu vậy thì có lẽ đi bằng xe buýt tốt hơn.)
<br><br>雨が降ってきた。そうすると、今日の試合は中止になるだろう。
<br>→ Trời mưa rồi. Nếu thế thì trận đấu hôm nay chắc sẽ bị hủy.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>それなら  (<b>N2</b>): "Nếu vậy thì", nghĩa rất giống, thường dùng khi đưa ra gợi ý, đề xuất.
<br><br>では  /  じゃあ  (<b>N5</b>): "Vậy thì", dùng phổ biến trong văn nói.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('148.  末に（すえに）: Sau khi; cuối cùng thì ~.', 'Common', '     <b>Công thức:</b>
<br>N の +  末に (すえに)
<br><br>V た +  末に (すえに)
<br>──────────<br><b>Cách dùng:</b> Dùng để diễn tả một kết quả cuối cùng đạt được sau một quá trình dài, tốn nhiều công sức, suy nghĩ, hoặc trải qua nhiều biến cố. Có thể dùng cho cả kết quả tốt và xấu.
<br>──────────<br><b>Ý nghĩa:</b> Nhấn mạnh kết quả sau một quá trình dài và thường là vất vả.
<br>──────────<br><b>Chú ý:</b>
<br>Khác với  「あげく」 (thường chỉ kết quả xấu).
<br>──────────<br><b>Ví dụ:</b>
<br>長い議論の末に、やっと結論が出た。
<br>→ Sau một thời gian dài thảo luận, cuối cùng cũng đưa ra được kết luận.
<br><br>色々迷った末に、この大学に決めた。
<br>→ Sau khi đã phân vân rất nhiều, cuối cùng tôi đã quyết định chọn trường đại học này.
<br><br>彼は苦労した末に、成功を手に入れた。
<br>→ Anh ấy sau khi đã vất vả, cuối cùng đã nắm được thành công.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～あげく  (<b>N2</b>): "Sau khi", "cuối cùng", thường chỉ kết quả xấu.
<br><br>～結果（けっか）  (<b>N4/N3</b>): "Kết quả", chỉ kết quả thông thường.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('149.  少しも～ない（すこしも～ない）: Không ~ một chút nào.', 'Common', '     <b>Công thức:</b>
<br>少しも + V ない / A くない / A でない
<br>──────────<br><b>Cách dùng:</b> Dùng để phủ định hoàn toàn, nhấn mạnh rằng không có một chút nào, dù là nhỏ nhất.
<br>──────────<br><b>Ý nghĩa:</b> Phủ định tuyệt đối, "hoàn toàn không".
<br>──────────<br><b>Chú ý:</b>
<br>Luôn đi với thể phủ định.
<br><br>Trang trọng hơn  「全然～ない」.
<br>──────────<br><b>Ví dụ:</b>
<br>彼の話は、少しも面白くなかった。
<br>→ Câu chuyện của anh ta không thú vị một chút nào.
<br><br>私はお酒が少しも飲めません。
<br>→ Tôi không uống được rượu một chút nào.
<br><br>彼は自分の間違いを少しも反省していない。
<br>→ Anh ta không hối lỗi về sai lầm của mình một chút nào.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>全然～ない  (<b>N5</b>): "Hoàn toàn không", phổ biến nhất.
<br><br>ちっとも～ない  (<b>N2</b>): "Không ~ chút nào cả", thường mang cảm xúc hơn.
<br><br>全く～ない  (<b>N2</b>): "Hoàn toàn không", trang trọng.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('150.  少なくとも（すくなくとも）: Ít nhất ~.', 'Common', '     <b>Công thức:</b>
<br>少なくとも + [Số lượng/Mức độ]
<br>──────────<br><b>Cách dùng:</b> Dùng để đưa ra một mức độ hoặc số lượng tối thiểu, nhấn mạnh rằng dù không nhiều hơn nhưng chắc chắn cũng phải bằng mức đó.
<br>──────────<br><b>Ý nghĩa:</b> Chỉ mức tối thiểu, "ít nhất cũng phải...".
<br>──────────<br><b>Chú ý:</b>
<br>Dùng để nói về số lượng, mức độ một cách khách quan.
<br>──────────<br><b>Ví dụ:</b>
<br>この仕事には、少なくとも３人は必要だ。
<br>→ Công việc này cần ít nhất 3 người.
<br><br>旅行に行くなら、少なくとも１週間は休みが欲しい。
<br>→ Nếu đi du lịch thì tôi muốn nghỉ ít nhất 1 tuần.
<br><br>少なくとも、彼は嘘をつくような人ではない。
<br>→ Ít nhất thì anh ta cũng không phải là người nói dối.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>せめて  (<b>N2</b>): "Ít nhất", thường dùng để nói về mong muốn tối thiểu, mang tính chủ quan.
<br><br>最低でも（さいていでも）  (<b>N3</b>): "Tối thiểu cũng", nghĩa tương tự.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('151.  直ちに（ただちに）: Ngay lập tức; trực tiếp ~.', 'Common', '     <b>Công thức:</b>
<br>Là một trạng từ (副詞).
<br>──────────<br><b>Cách dùng:</b> Dùng để diễn tả việc thực hiện một hành động ngay lập tức, không chậm trễ. Là cách nói trang trọng.
<br>──────────<br><b>Ý nghĩa:</b> "Ngay lập tức".
<br>──────────<br><b>Chú ý:</b>
<br>Trang trọng hơn  「すぐに」. Thường dùng trong thông báo, chỉ thị, tin tức.
<br>──────────<br><b>Ví dụ:</b>
<br>火事が発生した場合は、直ちに避難してください。
<br>→ Trong trường hợp xảy ra hỏa hoạn, xin hãy sơ tán ngay lập tức.
<br><br>問題が見つかったら、直ちに報告してください。
<br>→ Nếu phát hiện vấn đề, xin hãy báo cáo ngay lập tức.
<br><br>この命令は直ちに実行されなければならない。
<br>→ Mệnh lệnh này phải được thực thi ngay lập tức.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>すぐに  (<b>N5</b>): "Ngay lập tức", là cách nói phổ biến nhất.
<br><br>至急（しきゅう）  (<b>N2/N1</b>): "Khẩn cấp", "ngay lập tức", nhấn mạnh tính
cấp bách.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('152.  たまえ: Hãy ~ (mệnh lệnh).', 'Common', '     <b>Công thức:</b>
<br>Động từ thể  ます (bỏ  ます) +  たまえ
<br>──────────<br><b>Cách dùng:</b> Là một dạng mệnh lệnh, thường được người có vị thế cao hơn (giáo viên, cấp trên, cha mẹ...) dùng với người dưới. Mang sắc thái hơi bề trên, cổ xưa, hoặc  dùng trong các tác phẩm văn học, phim ảnh.
<br>──────────<br><b>Ý nghĩa:</b> Mệnh lệnh "Hãy làm đi".
<br>──────────<br><b>Chú ý:</b>
<br>Chỉ dùng cho người dưới.
<br><br>Không dùng trong các tình huống thông thường hàng ngày vì có thể gây khó chịu.
<br><br>Thường là nam giới lớn tuổi sử dụng.
<br>──────────<br><b>Ví dụ:</b>
<br>君、ちょっとこれをコピーしたまえ。<br>→ (Cậu, hãy photo cái này một chút.)
<br><br>もう少し静かにしたまえ。<br>→ (Hãy yên lặng một chút đi.)
<br><br>分からないことがあれば、何でも聞きたまえ。<br>→ (Nếu có gì không hiểu, hãy cứ hỏi bất cứ điều gì.)
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～なさい  (<b>N5</b>): "Hãy ~", là mệnh lệnh phổ biến dùng cho người dưới (thường là cha mẹ nói với con, giáo viên với học sinh).
<br><br>～ろ  /  ～よ  (<b>N5</b>): Dạng mệnh lệnh thông thường, suồng sã.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('153.  てばかりはいられない: Không thể cứ mãi ~.', 'Common', '     <b>Công thức:</b>
<br>V て +  ばかりは +  いられない
<br><br>V て +  ばかりも +  いられない
<br>──────────<br><b>Cách dùng:</b> Diễn tả rằng không thể cứ tiếp tục mãi một hành động hoặc trạng thái nào đó, thường là vì có lý do, trách nhiệm, hoặc tình huống đòi hỏi phải thay đổi hoặc làm việc khác.
<br>──────────<br><b>Ý nghĩa:</b> Nhấn mạnh sự cần thiết phải dừng lại hoặc thay đổi, "không thể cứ mãi...".
<br>──────────<br><b>Chú ý:</b>
<br>Thường dùng khi muốn thể hiện ý thức trách nhiệm hoặc sự thay đổi cần thiết.
<br>──────────<br><b>Ví dụ:</b>
<br>もうすぐ試験だから、遊んでばかりはいられない。
<br>→ Sắp thi rồi nên không thể cứ mãi chơi được.
<br><br>困難な状況だが、泣いてばかりもいられない。何か行動を起こさなければ。
<br>→ Tình hình khó khăn thật, nhưng cũng không thể cứ mãi khóc được. Phải làm gì đó thôi.
<br><br>いつまでも親に頼ってばかりはいられない。自立しなければ。
<br>→ Không thể cứ mãi dựa dẫm vào bố mẹ được. Phải tự lập thôi.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～てばかりいる  (<b>N4</b>): "Chỉ toàn làm ~", chỉ sự lặp đi lặp lại của hành động (thường mang ý phàn nàn).
<br><br>～わけにはいかない  (<b>N3</b>): "Không thể ~" (vì lý do xã hội, tâm lý), có thể dùng khi không thể không làm hoặc không thể cứ làm.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('154.  てでも: Cho dù phải ~; bằng mọi giá ~.', 'Common', '     <b>Công thức:</b>
<br>V て +  でも
<br>──────────<br><b>Cách dùng:</b> Dùng để diễn tả sự quyết tâm mạnh mẽ sẽ làm một việc gì đó, cho dù phải dùng đến những biện pháp cực đoan, bất thường, hoặc phải hy sinh.
<br>──────────<br><b>Ý nghĩa:</b> Nhấn mạnh sự quyết tâm "bằng mọi giá", "dù phải... cũng làm".
<br>──────────<br><b>Chú ý:</b>
<br>Vế trước thường là những hành động cực đoan.
<br><br>Vế sau thể hiện mục tiêu muốn đạt được.
<br>──────────<br><b>Ví dụ:</b>
<br>家を売ってでも、彼の借金を返済しなければならない。
<br>→ Dù có phải bán nhà, tôi cũng phải trả nợ cho anh ấy.
<br><br>どんな手を使ってでも、この試合には勝ちたい。
<br>→ Dù phải dùng bất cứ thủ đoạn nào, tôi cũng muốn thắng trận này.
<br><br>徹夜してでも、このレポートを完成させるつもりだ。
<br>→ Dù có phải thức trắng đêm, tôi cũng định hoàn thành bài báo cáo này.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>たとえ～ても  (<b>N3</b>): "Giả sử ~ thì cũng ~", chỉ giả định và kết quả không đổi.  「てでも」 nhấn mạnh vào biện pháp cực đoan để đạt mục tiêu.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('155.  て以来（ていらい）: Kể từ khi ~.', 'Common', '     <b>Công thức:</b>
<br>V て +  以来 (いらい)
<br>──────────<br><b>Cách dùng:</b> Dùng để nói về một thời điểm trong quá khứ (khi V xảy ra) và diễn tả một trạng thái hoặc hành động nào đó đã bắt đầu từ lúc đó và kéo dài liên tục cho đến hiện tại.
<br>──────────<br><b>Ý nghĩa:</b> "Kể từ khi... thì (suốt)...".
<br>──────────<br><b>Chú ý:</b>
<br>Vế trước phải là một sự việc đã xảy ra trong quá khứ.
<br><br>Vế sau thường là một trạng thái kéo dài.
<br><br>Không dùng cho những sự việc mới xảy ra gần đây.
<br>──────────<br><b>Ví dụ:</b>
<br>日本に来て以来、一度も国に帰っていない。
<br>→ Kể từ khi đến Nhật, tôi chưa về nước lần nào.
<br><br>卒業して以来、彼とは会っていない。
<br>→ Kể từ khi tốt nghiệp, tôi không gặp anh ấy.
<br><br>母が入院して以来、父が家事をしている。
<br>→ Kể từ khi mẹ nhập viện, bố tôi (suốt) làm việc nhà.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～てから  (<b>N5</b>): "Sau khi ~", chỉ trình tự thời gian thông thường, không nhất thiết phải kéo dài đến hiện tại.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('156.  ていては: Nếu cứ ~ (thường dẫn đến kết quả không tốt).', 'Common', '     <b>Công thức:</b>
<br>V て +  いては
<br>──────────<br><b>Cách dùng:</b> Dùng để diễn tả rằng nếu cứ tiếp tục một hành động hoặc trạng thái nào đó (V ている), thì sẽ dẫn đến một kết quả không tốt hoặc không mong muốn. Thường mang sắc thái cảnh báo hoặc phê phán.
<br>──────────<br><b>Ý nghĩa:</b> Cảnh báo về hậu quả tiêu cực nếu tiếp tục V.
<br>──────────<br><b>Chú ý:</b>
<br>Có thể rút gọn thành  「～てちゃ」 hoặc  「～でちゃ」 trong văn nói.
<br>──────────<br><b>Ví dụ:</b>
<br>そんなに遊んでばかりいては、試験に落ちますよ。
<br>→ Nếu cứ chỉ toàn chơi như thế thì sẽ thi trượt đấy.
<br><br>いつまでも失敗を恐れていては、何も新しいことは始められない。
<br>→ Nếu cứ mãi sợ thất bại thì không thể bắt đầu được việc gì mới.
<br><br>そんなに甘やかしていては、子供のためにならない。
<br>→ Nếu cứ nuông chiều như thế thì sẽ không tốt cho đứa trẻ.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～たら  /  ～ば  (<b>N4</b>): Chỉ điều kiện thông thường, có thể dùng cho cả kết quả tốt và xấu.  「ていては」 gần như chỉ dùng cho kết quả xấu.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('157.  てこそ: Chỉ khi ~ (mới...).', 'Common', '     <b>Công thức:</b>
<br>V て +  こそ
<br>──────────<br><b>Cách dùng:</b> Dùng để nhấn mạnh rằng chỉ khi thực hiện hành động V (thường là một nỗ lực, trải nghiệm) thì mới có thể đạt được một kết quả tích cực, một sự hiểu biết, hoặc một giá trị nào đó.
<br>──────────<br><b>Ý nghĩa:</b> Nhấn mạnh A là điều kiện cần và đủ để có B, "Phải có A thì mới có B".
<br>──────────<br><b>Chú ý:</b>
<br>Vế sau thường là một kết quả tích cực hoặc một sự nhận thức.
<br>──────────<br><b>Ví dụ:</b>
<br>困難を乗り越えてこそ、本当の成功がある。
<br>→ Chỉ khi vượt qua khó khăn thì mới có thành công thực sự.
<br><br>親になってこそ、親のありがたみが分かる。
<br>→ Chỉ khi trở thành cha mẹ thì mới hiểu được sự biết ơn đối với cha mẹ.
<br><br>努力してこそ、夢は実現する。
<br>→ Chỉ khi nỗ lực thì giấc mơ mới thành hiện thực.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～てはじめて  (<b>N3</b>): "Chỉ sau khi ~ thì mới...", nhấn mạnh vào việc lần đầu nhận ra hoặc làm được sau khi có trải nghiệm.  「てこそ」 nhấn mạnh vào điều kiện cần thiết.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('158.  てまで: Đến mức phải ~; thậm chí ~.', 'Common', '     <b>Công thức:</b>
<br>V て +  まで
<br>──────────<br><b>Cách dùng:</b> Dùng để diễn tả một hành động (V) được thực hiện như một phương tiện cực đoan, đôi khi là phi thường hoặc đáng ngạc nhiên, để đạt được một mục đích nào đó. Nhấn mạnh sự hy sinh hoặc mức độ bất thường.
<br>──────────<br><b>Ý nghĩa:</b> "Đến mức phải...", "Thậm chí làm cả...".
<br>──────────<br><b>Chú ý:</b>
<br>Thường mang sắc thái ngạc nhiên hoặc phê phán về mức độ của hành động.
<br>──────────<br><b>Ví dụ:</b>
<br>借金してまで、海外旅行に行きたいとは思わない。
<br>→ Tôi không nghĩ là muốn đi du lịch nước ngoài đến mức phải vay nợ.
<br><br>親に嘘をついてまで、遊びに行きたくない。
<br>→ Tôi không muốn đi chơi đến mức phải nói dối bố mẹ.
<br><br>彼は仕事を休んでまで、そのコンサートを見に行った。
<br>→ Anh ta thậm chí đã nghỉ làm để đi xem buổi hòa nhạc đó.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～さえ  (<b>N3</b>): "Ngay cả ~", dùng để nêu ví dụ cực đoan.  「てまで」 nhấn mạnh vào hành động cực đoan để đạt mục đích.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('159.  てならない: Không chịu được; rất; không thể không ~.', 'Common', '     <b>Công thức:</b>
<br>V て +  ならない
<br><br>A くて +  ならない
<br><br>A で +  ならない
<br>──────────<br><b>Cách dùng:</b> Dùng để diễn tả một cảm xúc, cảm giác, hoặc suy nghĩ nảy sinh một cách tự nhiên và mạnh mẽ đến mức không thể kìm nén hoặc kiểm soát được.
<br>──────────<br><b>Ý nghĩa:</b> Nhấn mạnh mức độ "rất", "không thể chịu được".
<br>──────────<br><b>Chú ý:</b>
<br>Thường đi với các từ chỉ cảm xúc, cảm giác (気になる、心配だ、嬉しい、
悲しい...).
<br><br>Chủ ngữ thường là ngôi thứ nhất.
<br><br>Mang tính văn viết hơn  「てたまらない」.
<br>──────────<br><b>Ví dụ:</b>
<br>試験の結果が気になってならない。
<br>→ Tôi rất lo lắng về kết quả kỳ thi (không thể không lo).
<br><br>彼の将来が心配でならない。
<br>→ Tôi rất lo lắng cho tương lai của anh ấy.
<br><br>久しぶりに国に帰れるのが、嬉しくてならない。
<br>→ Việc có thể về nước sau một thời gian dài khiến tôi vui không chịu được.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～てたまらない  (<b>N2</b>): Nghĩa rất giống, "không chịu được", nhưng có thể dùng cho cả cảm giác vật lý và văn nói nhiều hơn.
<br><br>～て仕方がない  (<b>N3</b>): "Không thể chịu được", nghĩa tương tự.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('160.  てたまらない: Không chịu được; rất; không thể không ~.', 'Common', '     <b>Công thức:</b>
<br>V たくて +  たまらない
<br><br>A くて +  たまらない
<br><br>A で +  たまらない
<br>──────────<br><b>Cách dùng:</b> Tương tự như  「てならない」, dùng để diễn tả một cảm xúc, cảm giác, hoặc mong muốn mạnh mẽ đến mức không thể kìm nén.
<br>──────────<br><b>Ý nghĩa:</b> Nhấn mạnh mức độ "rất", "không chịu được", "muốn chết đi được".
<br>──────────<br><b>Chú ý:</b>
<br>Thường đi với các từ chỉ cảm xúc, cảm giác (cả thể chất và tinh thần), mong muốn (～たい).
<br><br>Phổ biến hơn trong văn nói so với  「てならない」.
<br>──────────<br><b>Ví dụ:</b>
<br>暑くてたまらない。エアコンをつけよう。
<br>→ Nóng không chịu được. Bật điều hòa lên thôi.
<br><br>会いたくてたまらない。
<br>→ Tôi muốn gặp (anh/cô ấy) không chịu được.
<br><br>息子が大学に合格して、嬉しくてたまらない。
<br>→ Con trai tôi đỗ đại học, tôi vui không chịu được.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～てならない  (<b>N2</b>): Nghĩa rất giống, nhưng trang trọng và ít dùng cho cảm giác vật lý hơn.
<br><br>～て仕方がない  (<b>N3</b>): "Không thể chịu được", nghĩa tương tự.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('161.  て当然だ（てとうぜんだ）: Là đương nhiên; tất nhiên ~.', 'Common', '     <b>Công thức:</b>
<br>V て +  当然だ (とうぜんだ)
<br><br>A くて +  当然だ
<br><br>A で +  当然だ
<br>──────────<br><b>Cách dùng:</b> Tương tự  「～のは当然だ」, dùng để diễn tả rằng một kết quả hoặc tình huống nào đó là điều hợp lý, dễ hiểu, không có gì đáng ngạc nhiên dựa trên nguyên nhân hoặc tình huống đã có.
<br>──────────<br><b>Ý nghĩa:</b> Khẳng định tính hợp lý, đương nhiên của một sự việc.
<br>──────────<br><b>Chú ý:</b>
<br>Thường dùng để thể hiện sự đồng tình hoặc một kết luận logic.
<br>──────────<br><b>Ví dụ:</b>
<br>あれだけ頑張ったのだから、成功して当然だ。
<br>→ Vì đã cố gắng đến thế nên thành công là điều đương nhiên.
<br><br>人の物を盗んだのだから、罰せられて当然だ。
<br>→ Vì đã trộm đồ của người khác nên bị trừng phạt là điều đương nhiên.
<br><br>彼は親切だから、人気があって当然だ。
<br>→ Anh ấy tốt bụng nên được yêu mến là điều tất nhiên.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～のは当然だ  (<b>N2</b>): Nghĩa hoàn toàn giống nhau.
<br><br>～て当たり前だ  (<b>N3</b>): "Là đương nhiên", nghĩa rất giống, có thể mang sắc
thái mạnh hơn.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('162.  ては  /  では: Mỗi khi; nếu; khi ~; hành động lặp đi lặp lại.', 'Common', '     <b>Công thức:</b>
<br>V ては
<br><br>A くては
<br><br>A では
<br><br>N では
<br>──────────<br><b>Cách dùng:</b> Là một cấu trúc đa nghĩa:
<br>1.   Điều kiện tiêu cực (Nếu ~ thì): Giống như  「ていては」, diễn tả nếu cứ làm A thì sẽ dẫn đến kết quả xấ<br>──────────<br><b>Ví dụ:</b>  そんなに食べては太るよ - Nếu cứ ăn thế thì sẽ béo đấy.)
<br>2.   Hành động lặp lại: Diễn tả hai hành động đối lập hoặc tương tự lặp đi lặp <br>──────────<br><b>Ví dụ:</b>  食べては寝て、食べては寝て - Cứ ăn rồi ngủ, ăn rồi ngủ.)
<br>3.   Mỗi khi: Diễn tả mỗi khi làm A thì B xảy ra. (Ít dùng hơn).
<br>──────────<br><b>Ý nghĩa:</b> Tùy thuộc vào ngữ cảnh, chỉ điều kiện, sự lặp lại.
<br>──────────<br><b>Chú ý:</b>
<br>Nghĩa (1) và (2) là phổ biến nhất ở N2.
<br><br>Cần chú ý ngữ cảnh để hiểu đúng.
<br>──────────<br><b>Ví dụ:</b>
<br>1.   そんなに急いでは、ミスをするよ。<br>→ (Nếu vội thế thì sẽ mắc lỗi đấy.)
<br>2.   書いては消し、書いては消し、なかなか進まない。<br>→ (Cứ viết rồi xóa, viết rồi xóa, mãi không tiến triển.)
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～たら  /  ～ば  (<b>N4</b>): Chỉ điều kiện.
<br><br>～ては～ては  (<b>N2</b>): Nhấn mạnh sự lặp lại.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('163.  てはいられない: Không thể cứ ~; không thể chịu đựng được ~.', 'Common', '     <b>Công thức:</b>
<br>V て +  は +  いられない
<br>──────────<br><b>Cách dùng:</b> Diễn tả rằng không thể tiếp tục ở trong một trạng thái hoặc thực hiện một hành động nào đó nữa, vì tình huống, cảm xúc, hoặc trách nhiệm không cho phép.
<br>──────────<br><b>Ý nghĩa:</b> Nhấn mạnh "không thể tiếp tục...", "không thể chịu đựng được nữa".
<br>──────────<br><b>Chú ý:</b>
<br>Rất giống  「～てばかりはいられない」 nhưng có thể dùng cho cả những hành động không lặp lại.
<br>──────────<br><b>Ví dụ:</b>
<br>もう時間がないから、のんびりしてはいられない。
<br>→ Vì không còn thời gian nữa nên không thể cứ thong thả được.
<br><br>人が困っているのを見て、黙ってはいられなかった。
<br>→ Thấy người khác gặp khó khăn, tôi đã không thể im lặng được.
<br><br>試験が近いのに、テレビを見てはいられない。
<br>→ Sắp thi rồi, không thể cứ xem TV được.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～てばかりはいられない  (<b>N2</b>): "Không thể cứ mãi ~", nhấn mạnh vào hành động lặp lại.
<br><br>～わけにはいかない  (<b>N3</b>): "Không thể ~" (vì lý do xã hội/tâm lý).') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('164.  てはならない: Không được; không thể; không nên ~.', 'Common', '     <b>Công thức:</b>
<br>V て +  は +  ならない
<br>──────────<br><b>Cách dùng:</b> Dùng để diễn tả sự cấm đoán mạnh mẽ, hoặc một điều không nên làm theo quy tắc, đạo đức, hoặc luật lệ. Đây là cách nói trang trọng và cứng rắn.
<br>──────────<br><b>Ý nghĩa:</b> "Tuyệt đối không được...", "Không nên...".
<br>──────────<br><b>Chú ý:</b>
<br>Trang trọng và mạnh hơn  「～てはいけない」.
<br><br>Thường dùng trong các quy định, luật lệ, hoặc khi muốn nhấn mạnh sự cấm đoán.
<br>──────────<br><b>Ví dụ:</b>
<br>法律は守らなければならない。決して破ってはならない。
<br>→ Pháp luật là phải tuân thủ. Tuyệt đối không được phá vỡ.
<br><br>人の信頼を裏切ってはならない。
<br>→ Không được phản bội lòng tin của người khác.
<br><br>危険な場所には近づいてはならない。
<br>→ Không được đến gần những nơi nguy hiểm.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～てはいけない  (<b>N5</b>): "Không được làm", phổ biến nhất, dùng trong nhiều
tình huống.
<br><br>～べきではない  (<b>N3</b>): "Không nên", chỉ điều không nên làm theo lẽ thường/đạo đức.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('165.  ては～ては: Cứ ~ rồi lại ~ (hành động lặp đi lặp lại).', 'Common', '     <b>Công thức:</b>
<br>V1 ては + V2 て
<br><br>(Thường V1 và V2 là một hoặc hai động từ đối lập/tương tự)
<br>──────────<br><b>Cách dùng:</b> Dùng để diễn tả một chuỗi hành động được lặp đi lặp lại nhiều lần.
<br>──────────<br><b>Ý nghĩa:</b> Nhấn mạnh sự lặp lại liên tục của hành động.
<br>──────────<br><b>Chú ý:</b>
<br>Thường dùng để mô tả một thói quen hoặc một tình trạng kéo dài.
<br>──────────<br><b>Ví dụ:</b>
<br>彼は食べては寝て、食べては寝ての生活をしている。
<br>→ Anh ta đang sống một cuộc sống cứ ăn rồi ngủ, ăn rồi ngủ.
<br><br>雨が降っては止み、降っては止み、はっきりしない天気だ。
<br>→ Trời cứ mưa rồi tạnh, mưa rồi tạnh, thời tiết thật không rõ ràng.
<br><br>試験の前、教科書を読んではノートにまとめ、読んではノートにまとめた。
<br>→ Trước kỳ thi, tôi cứ đọc sách giáo khoa rồi tóm tắt vào vở, đọc rồi lại tóm tắt.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>V たり V たりする  (<b>N4</b>): "Lúc thì ~ lúc thì ~", dùng để liệt kê các hành động không theo thứ tự, không nhất thiết lặp lại liên tục.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('166.  と同時に（とどうじに）: Đồng thời với; trong khi ~.', 'Common', '     <b>Công thức:</b>
<br>N +  と同時に (とどうじに)
<br><br>V る +  と同時に (とどうじに)
<br>──────────<br><b>Cách dùng:</b>
<br>1.   Đồng thời: Diễn tả hai hành động xảy ra cùng một lúc.
<br>2.   Ngay khi: Diễn tả hành động 2 xảy ra ngay sau hành động 1 (giống  ～たとたん).
<br>3.   Vừa... vừa...: Diễn tả hai mặt, hai đặc tính cùng tồn tại (giống A であり、Bでもある).
<br>──────────<br><b>Ý nghĩa:</b> Chỉ sự đồng thời hoặc mối liên hệ tức thì/song song.
<br>──────────<br><b>Chú ý:</b>
<br>Cần chú ý ngữ cảnh để hiểu đúng nghĩa.
<br>──────────<br><b>Ví dụ:</b>
<br>1.   ドアが開くと同時に、彼が入ってきた。<br>→ (Cửa vừa mở thì đồng thời anh ấy bước vào.)
<br>2.   彼は大学を卒業すると同時に、会社を設立した。<br>→ (Anh ấy ngay khi tốt nghiệp đại học thì đã thành lập công ty.)
<br>3.   この製品は、高品質であると同時に、価格も手頃だ。<br>→ (Sản phẩm này vừa có chất lượng cao, đồng thời giá cả cũng phải chăng.)
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～とともに  (<b>N2</b>): "Cùng với", có thể chỉ sự đồng thời hoặc thay đổi cùng lúc.
<br><br>～たとたん  (<b>N3</b>): "Ngay khi", chỉ hành động xảy ra ngay lập tức.
<br><br>～ながら  (<b>N4</b>): "Vừa... vừa...", chỉ hai hành động do cùng một chủ thể thực
hiện đồng thời.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('167.  といった: Như là ~ (liệt kê ví dụ).', 'Common', '     <b>Công thức:</b>
<br>N1  や N2 +  といった + N3
<br>──────────<br><b>Cách dùng:</b> Dùng để đưa ra một vài ví dụ (N1, N2...) tiêu biểu cho một nhóm hoặc một loại nào đó (<b>N3</b>).
<br>──────────<br><b>Ý nghĩa:</b> "Những N3 như là N1, N2...".
<br>──────────<br><b>Chú ý:</b>
<br>Là cách liệt kê mang tính ví dụ, không phải liệt kê đầy đủ.
<br>──────────<br><b>Ví dụ:</b>
<br>彼は、野球やサッカーといったスポーツが好きだ。
<br>→ Anh ấy thích những môn thể thao như là bóng chày hay bóng đá.
<br><br>この地域では、リンゴやブドウといった果物がよく取れる。
<br>→ Ở vùng này, những loại hoa quả như là táo hay nho được trồng nhiều.
<br><br>敬語には、尊敬語、謙譲語、丁寧語といった種類がある。
<br>→ Trong kính ngữ, có những loại như là tôn kính ngữ, khiêm nhường ngữ, và thể lịch sự.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～など  (<b>N4</b>): "Như là", "vân vân", dùng để liệt kê ví dụ, thường đứng cuối
danh sách.
<br><br>～のような  (<b>N4</b>): "Giống như là", dùng để so sánh hoặc nêu ví dụ.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('168.  というふうに: Theo cách mà ~; Như là ~.', 'Common', '     <b>Công thức:</b>
<br>[Câu / Cụm từ] +  というふうに
<br>──────────<br><b>Cách dùng:</b> Dùng để trích dẫn hoặc mô tả lại một nội dung, một cách nói, hoặc một cách làm nào đó.
<br>──────────<br><b>Ý nghĩa:</b> "Theo cách nói là...", "Giống như là...".
<br>──────────<br><b>Chú ý:</b>
<br>Thường dùng để giải thích hoặc làm rõ hơn.
<br><br>Có thể dùng  「～ように」 thay thế trong nhiều trường hợp.
<br>──────────<br><b>Ví dụ:</b>
<br>彼は「大丈夫だ」というふうに言った。
<br>→ Anh ấy đã nói theo cách là "Không sao đâu".
<br><br>もっと具体的に説明してほしいというふうに感じました。
<br>→ Tôi đã cảm thấy (muốn) rằng anh/chị giải thích cụ thể hơn.
<br><br>このボタンを押すと、こういうふうに動きます。
<br>→ Khi ấn nút này, nó sẽ chuyển động theo cách như thế này.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～ように  (<b>N4</b>): "Theo như", "giống như", cách nói phổ biến hơn.
<br><br>～というように  (<b>N3</b>): Nghĩa rất giống.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('169.  ということは: Điều đó có nghĩa là; nói cách khác ~.', 'Common', '     <b>Công thức:</b>
<br>[Sự thật / Thông tin] +  ということは + [Kết luận / Suy luận]
<br>──────────<br><b>Cách dùng:</b> Dùng để đưa ra một kết luận hoặc suy luận logic dựa trên một sự thật hoặc thông tin đã được nêu ra trước đó.
<br>──────────<br><b>Ý nghĩa:</b> "Việc... có nghĩa là...", "Nói cách khác...".
<br>──────────<br><b>Chú ý:</b>
<br>Dùng để giải thích hoặc làm rõ ý nghĩa của vế trước.
<br>──────────<br><b>Ví dụ:</b>
<br>彼はまだ来ない。ということは、道に迷ったのかもしれない。
<br>→ Anh ấy vẫn chưa đến. Điều đó có nghĩa là có lẽ anh ấy đã lạc đường.
<br><br>この部屋は家賃が安い。ということは、何か問題があるのではないか。
<br>→ Căn phòng này tiền thuê rẻ. Điều đó có nghĩa là chẳng phải có vấn đề gì đó sao?
<br><br>全員が賛成したということは、この案は可決されるだろう。
<br>→ Việc tất cả mọi người tán thành có nghĩa là phương án này chắc sẽ được thông qua.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>つまり  (<b>N3</b>): "Tóm lại", "nói cách khác", dùng để tóm tắt hoặc giải thích lại.
<br><br>すなわち  (<b>N1</b>): "Tức là", "nghĩa là", trang trọng hơn  「つまり」.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('170.  というものだ: Cái gọi là ~; quả là ~.', 'Common', '     <b>Công thức:</b>
<br>V / A い / A な / N + (thể thường) +  というものだ
<br>──────────<br><b>Cách dùng:</b> Dùng để đưa ra một kết luận hoặc nhận xét mang tính nhấn mạnh, khẳng định rằng một điều gì đó là đương nhiên, hợp lý, hoặc đúng với bản chất của nó.
<br>──────────<br><b>Ý nghĩa:</b> "Cái đó mới gọi là...", "Quả đúng là...".
<br>──────────<br><b>Chú ý:</b>
<br>Thường dùng để nhấn mạnh một sự thật hoặc một đánh giá.
<br>──────────<br><b>Ví dụ:</b>
<br>困った時に助け合うのが、本当の友達というものだ。
<br>→ Giúp đỡ nhau lúc khó khăn, đó mới gọi là bạn bè thực sự.
<br><br>何の説明もなく仕事を辞めるのは、無責任というものだ。
<br>→ Nghỉ việc mà không có lời giải thích nào thì quả là vô trách nhiệm.
<br><br>若者が未来に希望を持てない社会は、問題だというものだ。
<br>→ Một xã hội mà người trẻ không thể có hy vọng vào tương lai thì quả là có vấn đề.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～ものだ  (N2 - bản chất): "Là (bản chất)...", chỉ sự thật hiển nhiên.  「というものだ」 mang tính nhấn mạnh, kết luận hơn.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('171.  というものではない: Không hẳn là ~; không phải lúc nào cũng ~.', 'Common', '     <b>Công thức:</b>
<br>V / A い / A な / N + (thể thường) +  というものではない /  というものでもない
<br>──────────<br><b>Cách dùng:</b> Dùng để phủ định một cách nhẹ nhàng hoặc không hoàn toàn một quan điểm, một suy nghĩ thông thường. Khẳng định rằng không phải cứ A là sẽ B, hoặc không phải cứ A là tốt/đúng.
<br>──────────<br><b>Ý nghĩa:</b> "Không phải cứ... là...", "Không hẳn là...".
<br>──────────<br><b>Chú ý:</b>
<br>Dùng để bác bỏ một quan niệm phổ biến nhưng có thể không hoàn toàn đúng.
<br>──────────<br><b>Ví dụ:</b>
<br>努力すれば必ず成功するというものではない。
<br>→ Không phải cứ nỗ lực là chắc chắn sẽ thành công.
<br><br>お金があれば幸せだというものでもない。
<br>→ Không hẳn là cứ có tiền là sẽ hạnh phúc.
<br><br>有名な大学を出たからといって、仕事ができるというものではない。
<br>→ Không phải cứ tốt nghiệp đại học nổi tiếng là có thể làm được việc.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～わけではない  (<b>N3</b>): "Không hẳn là...", "không phải là...".
<br><br>～とは限らない  (<b>N3</b>): "Không nhất thiết là...", "chưa chắc là...".') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('172.  と考えられる（とかんがえられる）: Có thể nghĩ rằng; được cho là ~.', 'Common', '     <b>Công thức:</b>
<br>[Phán đoán] +  と考えられる (とかんがえられる) /  と思われる (とおもわれる)
<br>──────────<br><b>Cách dùng:</b> Dùng để đưa ra một phán đoán, suy luận hoặc giả thuyết một cách khách quan, thường dựa trên một số cơ sở. Đây là cách nói trang trọng, thường dùng trong văn viết, báo cáo, nghiên cứu.
<br>──────────<br><b>Ý nghĩa:</b> "Được cho là...", "Có thể suy đoán là...".
<br>──────────<br><b>Chú ý:</b>
<br>Là cách nói khách quan, tránh khẳng định trực tiếp.
<br>──────────<br><b>Ví dụ:</b>
<br>今後、この地域では人口が増加すると考えられる。
<br>→ Có thể nghĩ rằng trong tương lai, dân số ở khu vực này sẽ tăng.
<br><br>事件の原因は、不明だと考えられる。
<br>→ Nguyên nhân vụ án được cho là không rõ ràng.
<br><br>この結果から、A が B に影響を与えていると考えられる。
<br>→ Từ kết quả này, có thể cho rằng A đang ảnh hưởng đến B.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～だろう  (<b>N4</b>): "Có lẽ", chỉ sự phán đoán thông thường.
<br><br>～そうだ  (<b>N4/N3</b> - suy đoán): "Có vẻ là", dựa trên quan sát hoặc thông tin.
「と考えられる」 mang tính học thuật, phân tích hơn.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('173.  とか（で）: Nghe nói là ~.', 'Common', '     <b>Công thức:</b>
<br>[Thông tin] +  とか /  とかで
<br>──────────<br><b>Cách dùng:</b> Dùng để truyền đạt lại một thông tin mà mình nghe được từ người khác, nhưng không chắc chắn hoàn toàn về tính xác thực của nó. Thường dùng trong văn nói thân mật.
<br>──────────<br><b>Ý nghĩa:</b> "Nghe nói là...", "Nghe đồn là...".
<br>──────────<br><b>Chú ý:</b>
<br>Mức độ chắc chắn thấp hơn  「～そうだ」.
<br><br>Rất thân mật, không trang trọng.
<br>──────────<br><b>Ví dụ:</b>
<br>田中さん、来月結婚するとか。本当かな？
<br>→ Nghe nói anh Tanaka tháng sau cưới とか. Có thật không nhỉ?
<br><br>駅前のレストラン、美味しいとかで、いつも混んでいるよ。
<br>→ Nhà hàng trước ga nghe nói là ngon とかで, lúc nào cũng đông khách.
<br><br>明日は雪が降るとか。
<br>→ Nghe nói mai tuyết rơi とか.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～そうだ  (N4 - truyền 闻): "Nghe nói là", phổ biến và trang trọng hơn.
<br><br>～らしい  (<b>N3</b>): "Hình như là", "nghe nói là", dựa trên thông tin nghe được hoặc quan sát.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('174.  とっくに: Từ lâu rồi; đã ~.', 'Common', '     <b>Công thức:</b>
<br>Là một trạng từ (副詞).
<br>──────────<br><b>Cách dùng:</b> Dùng để nhấn mạnh rằng một hành động hoặc sự việc đã xảy ra hoặc hoàn thành từ rất lâu trước thời điểm nói, hoặc sớm hơn nhiều so với dự kiến.
<br>──────────<br><b>Ý nghĩa:</b> "Đã... từ lâu rồi", "Sớm hơn nhiều".
<br>──────────<br><b>Chú ý:</b>
<br>Thường mang sắc thái ngạc nhiên hoặc trách móc (nếu đi với phủ định).
<br>──────────<br><b>Ví dụ:</b>
<br>その宿題なら、とっくに終わらせたよ。
<br>→ Nếu là bài tập đó thì tớ đã làm xong từ lâu rồi.
<br><br>会議はとっくに始まっている。早く行こう！
<br>→ Cuộc họp đã bắt đầu từ lâu rồi. Nhanh lên đi!
<br><br>彼はとっくに帰ったと思っていたのに、まだいたのか。
<br>→ Cứ tưởng anh ta đã về từ lâu rồi, vậy mà vẫn còn ở đây à.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>もう  (<b>N5</b>): "Đã", cách nói thông thường.
<br><br>すでに  (<b>N3</b>): "Đã", trang trọng hơn  「もう」.  「とっくに」 nhấn mạnh
sự "lâu" hoặc "sớm" hơn.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('175.  ところだった: Suýt nữa thì ~.', 'Common', '     <b>Công thức:</b>
<br>V る +  ところだった
<br>──────────<br><b>Cách dùng:</b> Dùng để diễn tả một tình huống suýt nữa đã xảy ra (thường là việc không tốt), nhưng cuối cùng lại không xảy ra.
<br>──────────<br><b>Ý nghĩa:</b> Nhấn mạnh sự "suýt", "chút nữa thì...".
<br>──────────<br><b>Chú ý:</b>
<br>Thường đi với  「もう少しで」 hoặc  「あやうく」.
<br>──────────<br><b>Ví dụ:</b>
<br>注意していなかったら、車にひかれるところだった。
<br>→ Nếu không chú ý thì tôi đã suýt bị xe đâm.
<br><br>目覚ましが鳴らなかったら、寝坊するところだった。
<br>→ Nếu chuông báo thức không reo thì tôi đã suýt ngủ quên.
<br><br>あともう少しで勝てるところだったのに、残念だ。
<br>→ Suýt nữa thì thắng rồi, thật đáng tiếc.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>もう少しで～ところだった  (<b>N2</b>): "Suýt nữa", "chút nữa".
<br><br>あやうく～ところだった  (<b>N2</b>): "Suýt soát", "nguy hiểm", nhấn mạnh sự
may mắn.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('176.  ところに  /  ところへ: Đúng lúc; đúng vào lúc ~.', 'Common', '     <b>Công thức:</b>
<br>V ている / V た / V ようとした +  ところに /  ところへ
<br>──────────<br><b>Cách dùng:</b> Dùng để diễn tả rằng đúng vào thời điểm một hành động (V) đang diễn ra, vừa mới kết thúc, hoặc sắp bắt đầu thì có một hành động khác xảy ra (thường là bất ngờ hoặc làm gián đoạn).
<br>──────────<br><b>Ý nghĩa:</b> Nhấn mạnh sự trùng hợp về thời điểm, "đúng vào lúc...".
<br>──────────<br><b>Chú ý:</b>
<br>「ところに」 có thể dùng cho cả hành động đến và đi.
<br><br>「ところへ」 thường dùng khi có hành động di chuyển đến.
<br>──────────<br><b>Ví dụ:</b>
<br>出かけようとしたところに、電話がかかってきた。
<br>→ Đúng lúc tôi định ra ngoài thì có điện thoại gọi đến.
<br><br>料理をしているところに、友達が遊びに来た。
<br>→ Đúng lúc tôi đang nấu ăn thì bạn bè đến chơi.
<br><br>犯人が逃げようとしたところへ、警察官が駆けつけた。
<br>→ Đúng lúc tên tội phạm định bỏ chạy thì cảnh sát ập đến.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～とき  (<b>N5</b>): "Khi", chỉ thời điểm thông thường.
<br><br>～途中で  (<b>N4</b>): "Giữa chừng", chỉ sự gián đoạn.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('177.  ところを見ると（ところをみると）: Nhìn vào ~ thì thấy; xét từ ~.', 'Common', '     <b>Công thức:</b>
<br>V ている / V た +  ところを見ると
<br>──────────<br><b>Cách dùng:</b> Dùng để đưa ra một phán đoán hoặc suy luận dựa trên những gì quan sát được từ hành động hoặc trạng thái của người khác.
<br>──────────<br><b>Ý nghĩa:</b> "Nhìn vào cảnh/việc... thì có thể phán đoán là...".
<br>──────────<br><b>Chú ý:</b>
<br>Là cách nói đưa ra suy đoán dựa trên quan sát trực tiếp.
<br>──────────<br><b>Ví dụ:</b>
<br>彼が慌てているところを見ると、何か大変なことが起きたのかもしれない。
<br>→ Nhìn vào việc anh ấy đang hốt hoảng thì có lẽ đã có chuyện gì đó nghiêm trọng xảy ra.
<br><br>部屋の電気がついているところを見ると、彼はまだ起きているのだろ
う。
<br>→ Nhìn vào việc đèn phòng còn sáng thì có lẽ anh ấy vẫn còn thức.
<br><br>あの二人が親しそうに話しているところを見ると、付き合っているに
違いない。
<br>→ Nhìn vào cảnh hai người đó nói chuyện thân mật thì chắc chắn là họ đang hẹn hò.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～から見ると  (<b>N2</b>): "Nhìn từ ~", "xét từ ~", có thể dùng rộng hơn, không chỉ dựa vào quan sát trực tiếp hành động.
<br><br>～様子から  (<b>N3</b>): "Từ dáng vẻ ~", cũng chỉ sự phán đoán qua quan sát.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('178.  とも: Cho dù; bất kể; không ~.', 'Common', '     <b>Công thức:</b>
<br>V よう +  とも
<br><br>N +  とも + V ない
<br>──────────<br><b>Cách dùng:</b>
<br>1.   V よう  +  とも  (Cho dù): Diễn tả ý nghĩa "cho dù có làm V hay không, thì vế sau vẫn không thay đổi". Thường dùng với  「たとえ」, mang sắc thái trang trọng, văn viết.
<br>2.   N +  とも  + V ない  (Không ~): Dùng để phủ định hoàn toàn. (Ít phổ biến hơn).
<br>──────────<br><b>Ý nghĩa:</b>
<br>1.   Nhấn mạnh sự không thay đổi bất chấp điều kiện.
<br>2.   Phủ định mạnh.
<br>──────────<br><b>Chú ý:</b>
<br>「V よう +  とも」 là cách dùng chính ở N2.
<br>──────────<br><b>Ví dụ:</b>
<br>1.   たとえ誰に反対されようとも、私は自分の道を歩むつもりだ。
<br>→ Cho dù có bị ai phản đối đi nữa, tôi vẫn định đi con đường của mình.
<br>2.   どんな困難があろうとも、決して諦めない。
<br>→ Dù có khó khăn nào đi nữa, tôi cũng nhất quyết không bỏ cuộc.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～ても  (<b>N4</b>): "Dù ~ thì cũng ~", cách nói thông thường.
<br><br>たとえ～ても  (<b>N3</b>): "Giả sử ~ thì cũng ~", nhấn mạnh giả định.
<br><br>～にしろ  /  ～にせよ  (<b>N2</b>): "Cho dù ~", "Bất kể ~".') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('179.  として～ない: Hoàn toàn không; không một ~.', 'Common', '     <b>Công thức:</b>
<br>[Từ chỉ số lượng nhỏ nhất:  一人 (ひとり) /  一つ (ひとつ) /  一日 (いちにち) /  一度 (いちど) ...] +  として + V ない
<br>──────────<br><b>Cách dùng:</b> Dùng để phủ định hoàn toàn bằng cách nhấn mạnh rằng ngay cả đơn vị nhỏ nhất cũng không có.
<br>──────────<br><b>Ý nghĩa:</b> "Không một...", "Hoàn toàn không...".
<br>──────────<br><b>Chú ý:</b>
<br>Luôn đi với thể phủ định.
<br><br>Nhấn mạnh sự phủ định tuyệt đối.
<br>──────────<br><b>Ví dụ:</b>
<br>この秘密は、誰一人として知らない。
<br>→ Bí mật này, không một ai biết cả.
<br><br>会場には、一人として知っている人はいなかった。
<br>→ Trong hội trường, không có một người nào tôi quen cả.
<br><br>地震の被害を受けた地域には、一日として早く支援が必要だ。 (Trong trường hợp này không đi với  ない, mà mang nghĩa nhấn mạnh "dù chỉ một ngày cũng phải nhanh") Câu này có thể gây nhầm lẫn, nên tập trung vào dạng phủ định.
<br><br>彼は今まで一度として約束を破ったことがない。
<br>→ Anh ta từ trước đến giờ chưa từng một lần nào thất hứa.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>全く～ない  (<b>N2</b>) /  全然～ない  (<b>N5</b>): "Hoàn toàn không".  「として～ない」 nhấn mạnh vào sự "không một".') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('180.  としても: Giả sử là; ngay cả nếu ~.', 'Common', '     <b>Công thức:</b>
<br>V / A い / A な / N + (thể thường) +  としても /  としたって
<br>──────────<br><b>Cách dùng:</b> Dùng để đưa ra một giả định (thường là cực đoan hoặc khó xảy ra) và khẳng định rằng dù giả định đó có đúng đi nữa thì vế sau vẫn không thay đổi hoặc vẫn nên làm như vậy.
<br>──────────<br><b>Ý nghĩa:</b> "Ngay cả khi...", "Giả sử là...".
<br>──────────<br><b>Chú ý:</b>
<br>「としたって」 mang tính văn nói hơn.
<br>──────────<br><b>Ví dụ:</b>
<br>たとえ失敗するとしても、挑戦する価値はある。
<br>→ Ngay cả nếu thất bại, việc thử thách vẫn có giá trị.
<br><br>今から行くとしても、もう間に合わないだろう。
<br>→ Giả sử là bây giờ đi thì chắc cũng không kịp nữa.
<br><br>彼が本当のことを言ったとしても、誰も信じないだろう。
<br>→ Ngay cả nếu anh ta nói sự thật thì chắc cũng không ai tin.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～ても  (<b>N4</b>): "Dù ~ thì cũng ~".
<br><br>たとえ～ても  (<b>N3</b>): "Giả sử ~ thì cũng ~".  「としても」 gần như đồng
nghĩa.
<br><br>～にせよ  /  ～にしろ  (<b>N2</b>): "Cho dù ~", "Bất kể ~".') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('181.  つつ: Trong khi; mặc dù; dù ~.', 'Common', '     <b>Công thức:</b>
<br>Động từ thể  ます (bỏ  ます) +  つつ
<br>──────────<br><b>Cách dùng:</b>
<br>1.   Trong khi (Đồng thời): Diễn tả hai hành động diễn ra song song (giống  「ながら」).
<br>2.   Mặc dù (Đối lập): Diễn tả sự đối lập giữa hai vế, vế trước thừa nhận một điều nhưng vế sau lại trái ngược (giống  「ものの」).
<br>──────────<br><b>Ý nghĩa:</b> "Vừa... vừa..." hoặc "Mặc dù... nhưng...".
<br>──────────<br><b>Chú ý:</b>
<br>Mang tính văn viết và trang trọng hơn  「ながら」.
<br><br>Nghĩa (2) thường đi với các động từ chỉ nhận thức, suy nghĩ (知る、思う、
感じる).
<br>──────────<br><b>Ví dụ:</b>
<br>1.   彼はテレビを見つつ、食事をしている。<br>→ (Anh ta vừa xem TV vừa ăn cơm.)
<br>2.   危険だと知りつつ、彼は山に登り続けた。<br>→ (Dù biết là nguy hiểm, anh ta vẫn tiếp tục leo núi.)
<br>3.   体に悪いと知りつつも、タバコをやめられない。<br>→ (Dù biết là có hại cho sức khỏe nhưng tôi không thể bỏ thuốc lá.)
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～ながら  (<b>N4</b>): "Vừa... vừa...", phổ biến hơn cho nghĩa đồng thời.
<br><br>～ものの  (<b>N2</b>): "Mặc dù", chỉ sự đối lập.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('182.  つつある: Đang; đang trong quá trình ~.', 'Common', '     <b>Công thức:</b>
<br>Động từ thể  ます (bỏ  ます) +  つつある
<br>──────────<br><b>Cách dùng:</b> Diễn tả một sự thay đổi đang diễn ra, đang trong quá trình tiến triển. Thường dùng cho những thay đổi có quy mô lớn hoặc diễn ra trong một khoảng thời gian.
<br>──────────<br><b>Ý nghĩa:</b> Nhấn mạnh sự "đang dần dần thay đổi".
<br>──────────<br><b>Chú ý:</b>
<br>Mang tính văn viết và trang trọng hơn  「～ている」.
<br><br>Thường đi với các động từ chỉ sự thay đổi (増える、減る、変わる、進む...).
<br>──────────<br><b>Ví dụ:</b>
<br>日本の伝統文化は、失われつつある。
<br>→ Văn hóa truyền thống Nhật Bản đang dần mất đi.
<br><br>医療技術は、日々進歩しつつある。
<br>→ Kỹ thuật y tế đang tiến bộ từng ngày.
<br><br>景気は、徐々に回復しつつある。
<br>→ Tình hình kinh tế đang dần dần hồi phục.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～ている  (<b>N5</b>): "Đang", chỉ hành động/trạng thái đang diễn ra.
<br><br>～一方だ  (<b>N2</b>) /  ～ばかりだ  (<b>N2</b>): "Cứ ~", cũng chỉ xu hướng thay đổi.  「
つつある」 nhấn mạnh vào quá trình đang diễn ra.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('183.  上は（うえは）: Một khi đã; vì ~.', 'Common', '     <b>Công thức:</b>
<br>V る / V た +  上は (うえは)
<br>──────────<br><b>Cách dùng:</b> Tương tự  「からには」 và  「以上は」, diễn tả rằng một khi đã ở vào tình huống A, hoặc một khi đã quyết định/hứa/nói A, thì việc làm B là điều đương nhiên, tất yếu, hoặc là nghĩa vụ phải làm.
<br>──────────<br><b>Ý nghĩa:</b> Nhấn mạnh lý do mang tính quyết định hoặc bắt buộc.
<br>──────────<br><b>Chú ý:</b>
<br>Là cách nói trang trọng, cứng rắn.
<br>──────────<br><b>Ví dụ:</b>
<br>約束した上は、必ず守ります。
<br>→ Một khi đã hứa thì nhất định sẽ giữ lời.
<br><br>試合に出る上は、全力で戦うつもりだ。
<br>→ Một khi đã ra sân thi đấu thì tôi định sẽ chiến đấu hết sức.
<br><br>こうなった上は、覚悟を決めるしかない。
<br>→ Một khi đã đến nước này thì chỉ còn cách quyết tâm thôi.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～からには  (<b>N2</b>): Nghĩa rất giống.
<br><br>～以上は  (<b>N2</b>): Nghĩa rất giống.  「上は」 có thể được coi là trang trọng
nhất trong ba mẫu này.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('184.  はもとより: ~ là đương nhiên, mà cả ~ cũng; nói gì đến ~.', 'Common', '     <b>Công thức:</b>
<br>N1 +  はもとより + N2 +  も
<br>──────────<br><b>Cách dùng:</b> Dùng để diễn tả rằng N1 là điều đương nhiên, không cần bàn cãi, nhưng không chỉ dừng lại ở đó, mà N2 (thường ở mức độ cao hơn hoặc rộng hơn) cũng như vậy.
<br>──────────<br><b>Ý nghĩa:</b> "A thì đã đành, B cũng vậy", "Đừng nói đến A, B cũng...".
<br>──────────<br><b>Chú ý:</b>
<br>Trang trọng hơn  「はもちろん」.
<br>──────────<br><b>Ví dụ:</b>
<br>彼は英語はもとより、フランス語も話せる。
<br>→ Anh ấy tiếng Anh thì đã đành, mà cả tiếng Pháp cũng nói được.
<br><br>この村には、バスはもとより、電車も通っていない。
<br>→ Làng này, xe buýt đã đành, mà cả tàu điện cũng không chạy qua.
<br><br>見た目はもとより、味も素晴らしい。
<br>→ Vẻ ngoài thì đã đành, mà cả vị cũng tuyệt vời.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～はもちろん  (<b>N3</b>): "~ thì đương nhiên rồi", nghĩa rất giống nhưng phổ biến và ít trang trọng hơn.
<br><br>～だけでなく  (<b>N3</b>) /  ～ばかりか  (<b>N2</b>): "Không chỉ... mà còn...", cũng dùng để bổ sung, nhưng  「はもとより」 nhấn mạnh hơn vào sự "đương nhiên" của vế 1.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('185.  はともかく: Khoan hãy nói đến; bất kể ~.', 'Common', '     <b>Công thức:</b>
<br>N1 +  はともかく (として) + N2 +  は/が
<br>──────────<br><b>Cách dùng:</b> Dùng để nhấn mạnh rằng yếu tố N2 quan trọng hơn hoặc cần được ưu tiên xem xét hơn N1. N1 có thể quan trọng, nhưng trong ngữ cảnh này, người nói muốn tạm gác N1 lại để tập trung vào N2.
<br>──────────<br><b>Ý nghĩa:</b> "Khoan bàn đến A, B mới là quan trọng/vấn đề", "A thì chưa biết thế nào, nhưng B thì...".
<br>──────────<br><b>Chú ý:</b>
<br>Dùng để làm nổi bật yếu tố N2.
<br>──────────<br><b>Ví dụ:</b>
<br>見た目はともかく、味がとてもいい。
<br>→ Khoan hãy nói đến vẻ ngoài, vị của nó rất ngon.
<br><br>結果はともかく、最後まで努力したことが大切だ。
<br>→ Bất kể kết quả thế nào, việc đã nỗ lực đến cùng mới là quan trọng.
<br><br>値段はともかくとして、デザインが気に入らない。
<br>→ Khoan bàn đến giá cả, tôi không thích thiết kế này.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～はさておき  (<b>N1</b>): "Tạm gác A sang một bên", nghĩa rất giống nhau.
<br><br>～は別として  (<b>N3</b>): "Ngoại trừ A", "Không tính đến A".') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('186.  わずかに: Chỉ một chút; một ít; vừa đủ; suýt soát ~.', 'Common', '     <b>Công thức:</b>
<br>Là một trạng từ (副詞).
<br>──────────<br><b>Cách dùng:</b> Diễn tả một số lượng, mức độ, hoặc khoảng cách rất nhỏ, rất ít.
<br>──────────<br><b>Ý nghĩa:</b> "Chỉ một chút xíu", "Hơi".
<br>──────────<br><b>Chú ý:</b>
<br>Thường dùng trong văn viết hoặc khi muốn diễn tả sự nhỏ bé một cách chính xác.
<br>──────────<br><b>Ví dụ:</b>
<br>会場には、わずかに空席が残っていた。
<br>→ Trong hội trường, chỉ còn lại một vài chỗ trống.
<br><br>彼はわずかに微笑んだ。
<br>→ Anh ấy chỉ mỉm cười một chút.
<br><br>ゴールまでわずか１メートルのところで転んでしまった。
<br>→ Tôi đã bị ngã khi chỉ còn cách vạch đích suýt soát 1 mét.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>少し  (<b>N5</b>) /  ちょっと  (<b>N5</b>): "Một chút", "một ít", dùng phổ biến nhất.  「わずかに」 trang trọng hơn và nhấn mạnh mức độ rất ít.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('187.  やがて: Chẳng mấy chốc; sắp; gần như; cuối cùng thì ~.', 'Common', '     <b>Công thức:</b>
<br>Là một trạng từ (副詞).
<br>──────────<br><b>Cách dùng:</b> Dùng để diễn tả một sự việc sẽ xảy ra trong một tương lai không xa, hoặc một sự thay đổi sẽ diễn ra sau một khoảng thời gian. Cũng có thể dùng với nghĩa "cuối cùng thì".
<br>──────────<br><b>Ý nghĩa:</b> Chỉ sự thay đổi hoặc sự kiện xảy ra sau một thời gian ngắn hoặc cuối cùng.
<br>──────────<br><b>Chú ý:</b>
<br>Mang tính văn viết, văn chương.
<br>──────────<br><b>Ví dụ:</b>
<br>冬が終わり、やがて春が来る。
<br>→ Mùa đông kết thúc, chẳng mấy chốc mùa xuân sẽ đến.
<br><br>雨はやがて止むだろう。
<br>→ Mưa rồi cũng sẽ tạnh thôi.
<br><br>彼は努力を続け、やがて有名な作家になった。
<br>→ Anh ấy tiếp tục nỗ lực, và cuối cùng đã trở thành một nhà văn nổi tiếng.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>もうすぐ  (<b>N5</b>): "Sắp", dùng phổ biến.
<br><br>まもなく  (<b>N3</b>): "Sắp", trang trọng hơn  「もうすぐ」.
<br><br>そのうち  (<b>N3</b>): "Một lúc nào đó", "chẳng mấy chốc".
<br><br>結局（けっきょく）  (<b>N3</b>): "Cuối cùng", chỉ kết quả.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('188.  やら～やら: Nào là A nào là B; A và B vân vân ~.', 'Common', '     <b>Công thức:</b>
<br>N1 +  やら + N2 +  やら
<br><br>V1 る +  やら + V2 る +  やら
<br><br>A1 い +  やら + A2 い +  やら
<br>──────────<br><b>Cách dùng:</b> Dùng để liệt kê một vài ví dụ một cách lộn xộn, không theo thứ tự. Thường mang hàm ý rằng có rất nhiều thứ (hành động, sự vật, cảm xúc) và người nói không thể kể hết được, đôi khi thể hiện sự than phiền hoặc tình trạng bận rộn, hỗn loạn.
<br>──────────<br><b>Ý nghĩa:</b> Liệt kê ví dụ một cách lộn xộn, "nào là... nào là...".
<br>──────────<br><b>Chú ý:</b>
<br>Thường mang sắc thái hơi tiêu cực hoặc thể hiện sự bối rối, bận rộn.
<br>──────────<br><b>Ví dụ:</b>
<br>引っ越しの準備で、荷造りするやら、手続きするやらで、とても忙しい。
<br>→ Chuẩn bị chuyển nhà, nào là đóng gói hành lý, nào là làm thủ tục, rất bận rộn.
<br><br>嬉しいやら恥ずかしいやらで、顔が赤くなった。
<br>→ Vừa vui vừa xấu hổ, mặt tôi đỏ bừng lên.
<br><br>部屋には、本やら服やらが散らかっていた。
<br>→ Trong phòng, nào là sách nào là quần áo vứt bừa bãi.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～とか～とか  (<b>N4</b>): "Như là ~ như là ~", cũng liệt kê ví dụ, nhưng trung lập hơn.
<br><br>～たり～たり  (<b>N4</b>): Liệt kê các hành động không theo thứ tự.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('189.  よほど  /  よっぽど: Rất; lắm; nhiều; phần lớn ~.', 'Common', '     <b>Công thức:</b>
<br>Là một trạng từ (副詞).
<br>──────────<br><b>Cách dùng:</b> Dùng để nhấn mạnh mức độ cao của một tính chất, trạng thái, hoặc hành động. Cũng có thể dùng để diễn tả ý định hoặc suy nghĩ "suýt nữa thì định...".
<br>──────────<br><b>Ý nghĩa:</b> "Rất", "Lắm", "Chắc là... lắm".
<br>──────────<br><b>Chú ý:</b>
<br>「よっぽど」 là dạng văn nói, thân mật hơn của  「よほど」.
<br><br>Có thể đi với  「～だろう」,  「～に違いない」 để thể hiện sự phán đoán mạnh mẽ.
<br>──────────<br><b>Ví dụ:</b>
<br>よほど疲れていたのか、彼はソファで寝てしまった。
<br>→ Chắc là mệt lắm hay sao mà anh ấy ngủ thiếp đi trên sofa.
<br><br>あの人はよほどの金持ちに違いない。
<br>→ Người đó chắc chắn là một người rất giàu.
<br><br>よっぽど言おうかと思ったが、結局やめた。
<br>→ Tôi đã suýt nữa thì định nói ra, nhưng cuối cùng lại thôi.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>とても  (<b>N5</b>) /  かなり  (<b>N4</b>): "Rất".
<br><br>相当（そうとう）  (<b>N2</b>): "Khá là", "tương đối".  「よほど」 thường mang
sắc thái mạnh hơn hoặc chỉ sự phán đoán.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('190.  より: Từ~ (thời gian, địa điểm, người - trang trọng).', 'Common', '     <b>Công thức:</b>
<br>N +  より
<br>──────────<br><b>Cách dùng:</b> Dùng để chỉ điểm bắt đầu của thời gian, địa điểm, hoặc nguồn gốc. Đây là cách nói trang trọng hơn  「から」.
<br>──────────<br><b>Ý nghĩa:</b> "Từ ~".
<br>──────────<br><b>Chú ý:</b>
<br>Thường dùng trong văn viết, thư từ, thông báo chính thức.
<br><br>Khác với  「より」 dùng trong so sánh (<b>N5</b>).
<br>──────────<br><b>Ví dụ:</b>
<br>会議は午後１時より開始いたします。
<br>→ Cuộc họp sẽ bắt đầu từ 1 giờ chiều.
<br><br>大阪より参りました田中です。
<br>→ Tôi là Tanaka, đến từ Osaka.
<br><br>これより先は、立ち入り禁止です。
<br>→ Từ điểm này trở đi, cấm vào.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～から  (<b>N5</b>): "Từ ~", là cách nói phổ biến nhất.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('191.  よりほかない: Không còn cách nào khác ngoài ~.', 'Common', '     <b>Công thức:</b>
<br>V る +  よりほかない /  ほかはない
<br>──────────<br><b>Cách dùng:</b> Dùng để diễn tả rằng trong một tình huống nào đó, không còn lựa chọn nào khác ngoài việc phải làm V. Thể hiện sự bắt buộc hoặc không có phương án thay thế.
<br>──────────<br><b>Ý nghĩa:</b> "Chỉ còn cách là...", "Đành phải...".
<br>──────────<br><b>Chú ý:</b>
<br>Là cách nói trang trọng.
<br>──────────<br><b>Ví dụ:</b>
<br>終電が行ってしまったので、歩いて帰るよりほかない。
<br>→ Vì chuyến tàu cuối đã đi mất nên không còn cách nào khác ngoài đi bộ về.
<br><br>証拠がない以上、彼を信じるよりほかない。
<br>→ Một khi không có bằng chứng thì không còn cách nào khác ngoài tin anh ta.
<br><br>この病気を治すには、手術するよりほかはないと言われた。
<br>→ Tôi được bảo rằng để chữa khỏi bệnh này thì không còn cách nào khác ngoài phẫu thuật.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～しかない  (<b>N4</b>): "Chỉ còn cách ~", nghĩa tương tự nhưng phổ biến và ít trang trọng hơn.
<br><br>～ざるを得ない  (<b>N2</b>): "Buộc phải ~" (dù không muốn), nhấn mạnh sự bắt buộc do hoàn cảnh.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('192.  ようでは: Nếu mà ~ (thì sẽ có kết quả xấu).', 'Common', '     <b>Công thức:</b>
<br>V る / V ない +  ようでは
<br>──────────<br><b>Cách dùng:</b> Dùng để diễn tả rằng nếu cứ ở trong tình trạng A (thường là tiêu cực) thì sẽ dẫn đến kết quả xấu B. Mang sắc thái phê phán, cảnh báo, hoặc lo lắng.
<br>──────────<br><b>Ý nghĩa:</b> "Nếu cứ... thế này thì...", chỉ điều kiện dẫn đến kết quả xấu.
<br>──────────<br><b>Chú ý:</b>
<br>Vế sau thường là một kết quả tiêu cực hoặc một sự đánh giá không tốt.
<br>──────────<br><b>Ví dụ:</b>
<br>こんなに簡単な問題も分からないようでは、試験に合格するのは難しいだろう。
<br>→ Nếu mà đến cả vấn đề đơn giản thế này cũng không hiểu thì việc thi đỗ chắc là khó.
<br><br>少し注意されただけで泣くようでは、この仕事は続けられないよ。
<br>→ Nếu mà chỉ bị nhắc nhở một chút đã khóc thì không thể tiếp tục công việc này được đâu.
<br><br>計画も立てないようでは、成功はおぼつかない。
<br>→ Nếu mà đến cả kế hoạch cũng không lập thì thành công là không chắc chắn.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～なら  (<b>N4</b>): Chỉ điều kiện thông thường.
<br><br>～ていては  (<b>N2</b>): "Nếu cứ ~", cũng chỉ điều kiện dẫn đến kết quả xấu,
nhưng thường nhấn mạnh vào hành động đang tiếp diễn.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('193.  ようではないか: Chúng ta hãy ~; tại sao chúng ta không ~.', 'Common', '     <b>Công thức:</b>
<br>Động từ thể ý chí (V よう) +  ではないか /  じゃないか
<br>──────────<br><b>Cách dùng:</b> Dùng để đưa ra lời kêu gọi, rủ rê, hoặc đề xuất một cách mạnh mẽ, thường là trong các bài diễn văn, hoặc khi muốn khuyến khích, cổ vũ một nhóm người cùng làm gì đó.
<br>──────────<br><b>Ý nghĩa:</b> "Chúng ta hãy cùng nhau làm ~ đi!".
<br>──────────<br><b>Chú ý:</b>
<br>Mang sắc thái kêu gọi mạnh mẽ, thường do người có vai vế hoặc nam giới sử dụng.
<br><br>「じゃないか」 thân mật hơn.
<br>──────────<br><b>Ví dụ:</b>
<br>さあ、みんなで頑張ろうではないか。
<br>→ Nào, chúng ta hãy cùng nhau cố gắng lên nào!
<br><br>この機会に、新しいことに挑戦しようではないか。
<br>→ Nhân cơ hội này, chúng ta hãy thử thách những điều mới đi!
<br><br>問題解決のために、皆で話し合おうではないか。
<br>→ Để giải quyết vấn đề, chúng ta hãy cùng nhau thảo luận đi!
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～ましょう  (<b>N5</b>): "Chúng ta hãy ~", là cách rủ rê, đề xuất phổ biến và trung
lập nhất.
<br><br>～ませんか  (<b>N5</b>): "Chúng ta cùng ~ không?", là cách rủ rê lịch sự.  「ようではないか」 mang tính kêu gọi mạnh mẽ hơn.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('194.  ようか～まいか: Có nên ~ hay không; phân vân giữa hai lựa chọn.', 'Common', '     <b>Công thức:</b>
<br>V よう +  か + V る +  まいか
<br>──────────<br><b>Cách dùng:</b> Dùng để diễn tả sự phân vân, do dự, không biết nên làm hay không nên làm một hành động nào đó.
<br>──────────<br><b>Ý nghĩa:</b> "Phân vân không biết nên làm V hay không".
<br>──────────<br><b>Chú ý:</b>
<br>「まい」 là thể phủ định ý chí (sẽ không).
<br><br>Thường đi với các động từ như  「迷う (phân vân)」、「考える (suy nghĩ)」.
<br>──────────<br><b>Ví dụ:</b>
<br>会社を辞めようか辞めるまいか、ずっと悩んでいる。
<br>→ Tôi cứ mãi phân vân không biết nên nghỉ việc hay không.
<br><br>雨が降りそうだが、傘を持っていこうか行くまいか考えている。
<br>→ Trời có vẻ sắp mưa, tôi đang nghĩ không biết có nên mang ô đi hay không.
<br><br>本当のことを話そうか話すまいか、彼女は迷った。
<br>→ Cô ấy đã phân vân không biết có nên nói sự thật hay không.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～かどうか  (<b>N4</b>): "Có ~ hay không", dùng để chỉ sự không chắc chắn hoặc câu hỏi gián tiếp.  「ようか～まいか」 nhấn mạnh vào sự phân vân giữa làm và không làm.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('195.  要するに（ようするに）: Tóm lại; nói ngắn gọn ~.', 'Common', '     <b>Công thức:</b>
<br>要するに、[Câu tóm tắt]
<br>──────────<br><b>Cách dùng:</b> Dùng để tóm tắt lại những gì đã nói trước đó, đưa ra ý chính, hoặc kết luận một cách ngắn gọn.
<br>──────────<br><b>Ý nghĩa:</b> "Nói tóm lại là...", "Nói một cách đơn giản là...".
<br>──────────<br><b>Chú ý:</b>
<br>Đứng đầu câu để đưa ra kết luận hoặc tóm tắt.
<br>──────────<br><b>Ví dụ:</b>
<br>色々説明しましたが、要するに、この計画は中止ということです。
<br>→ Tôi đã giải thích nhiều thứ, nhưng tóm lại, kế hoạch này bị hủy.
<br><br>彼は遅刻が多く、仕事もミスばかり。要するに、彼は会社に必要ない人間だ。
<br>→ Anh ta đi muộn nhiều, công việc cũng toàn sai sót. Tóm lại, anh ta là người không cần thiết cho công ty.
<br><br>要するに、君は何が言いたいんだ？
<br>→ Tóm lại, cậu muốn nói gì?
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>つまり  (<b>N3</b>): "Tóm lại", "nói cách khác", rất giống nhau và phổ biến.
<br><br>結局（けっきょく）  (<b>N3</b>): "Cuối cùng", "rốt cuộc", chỉ kết quả cuối cùng.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('196.  ざるを得ない（ざるをえない）: Không thể không; buộc phải ~.', 'Common', '     <b>Công thức:</b>
<br>Động từ thể  ない (bỏ  ない) +  ざるを得ない (ざるをえない)
<br><br>(する →  せざるを得ない)
<br>──────────<br><b>Cách dùng:</b> Dùng để diễn tả rằng mặc dù không muốn làm nhưng vì hoàn cảnh, tình huống bắt buộc nên không còn cách nào khác là phải làm.
<br>──────────<br><b>Ý nghĩa:</b> Nhấn mạnh sự bắt buộc phải làm dù không muốn.
<br>──────────<br><b>Chú ý:</b>
<br>Là cách nói trang trọng, có phần cứng nhắc.
<br>──────────<br><b>Ví dụ:</b>
<br>台風のため、旅行は中止せざるを得なかった。
<br>→ Vì bão nên chuyến đi đã buộc phải hủy.
<br><br>上司の命令なので、やりたくなくてもやらざるを得ない。
<br>→ Vì là mệnh lệnh của cấp trên nên dù không muốn làm cũng buộc phải làm.
<br><br>多くの反対があったが、計画変更を認めざるを得なかった。
<br>→ Dù có nhiều ý kiến phản đối nhưng chúng tôi đã buộc phải chấp nhận thay đổi kế hoạch.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～なければならない  (<b>N4</b>): "Phải làm", chỉ sự bắt buộc thông thường.
<br><br>～よりほかない  (<b>N2</b>): "Không còn cách nào khác ngoài ~", nhấn mạnh sự
không có lựa chọn.  「ざるを得ない」 nhấn mạnh sự bắt buộc dù không
muốn.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('197.  ずに済む  （ずにすむ）: Không cần làm ~ cũng được (giống  なくて済
む).', 'Common', '     <b>Công thức:</b>
<br>Động từ thể  ない (bỏ  ない) +  ずに +  済む (すむ)
<br><br>(する →  せずに済む)
<br>──────────<br><b>Cách dùng:</b> Tương tự như  「なくて済む」, diễn tả rằng một việc gì đó đã được giải quyết hoặc hoàn thành mà không cần phải thực hiện hành động V.  「ずに」 là dạng phủ định trang trọng hơn  「ないで」.
<br>──────────<br><b>Ý nghĩa:</b> Nhấn mạnh sự may mắn hoặc tiện lợi khi không phải làm một việc gì đó.
<br>──────────<br><b>Chú ý:</b>
<br>Trang trọng hơn  「なくて済む」.
<br>──────────<br><b>Ví dụ:</b>
<br>予約していたおかげで、長時間待たずに済んだ。
<br>→ Nhờ đã đặt trước nên tôi đã không cần phải chờ lâu.
<br><br>友達がお金を貸してくれたので、銀行に行かずに済んだ。
<br>→ Vì bạn tôi cho vay tiền nên tôi đã không cần phải ra ngân hàng.
<br><br>幸い、薬を飲まずに済むほど回復した。
<br>→ May mắn là tôi đã hồi phục đến mức không cần uống thuốc nữa.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～なくて済む  (<b>N2</b>): Nghĩa hoàn toàn giống nhau, ít trang trọng hơn.
<br><br>～なくてもいい  (<b>N4</b>): "Không cần làm ~ cũng được", chỉ sự cho phép hoặc
không cần thiết.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('1.  敢えて（あえて）: Dám ~; mạnh dạn ~; cố tình ~; chủ đích ~', 'Common', '     <b>Công thức:</b>  敢えて + V/A/N
<br>──────────<br><b>Cách dùng:</b> Diễn tả hành động được thực hiện một cách có chủ ý, dù biết rằng điều đó có thể không cần thiết, khó khăn, hoặc đi ngược lại với lẽ thường/mong đợi.
<br>──────────<br><b>Ý nghĩa:</b> Nhấn mạnh sự lựa chọn có ý thức, sự dũng cảm hoặc sự cố tình.
<br>──────────<br><b>Chú ý:</b> Có thể dùng trong cả tình huống tích cực và tiêu cực.
<br>──────────<br><b>Ví dụ:</b>
<br>負けるとわかっていたが、敢えて彼に挑戦した。 <br>→ Dù biết sẽ thua, nhưng tôi vẫn dám thách đấu với anh ta.
<br><br>みんなが反対する中、彼は敢えてその計画を実行した。 <br>→ Giữa sự phản đối của mọi người, anh ấy vẫn mạnh dạn thực hiện kế hoạch đó.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>わざと  (<b>N3</b>): Mang nghĩa "cố tình", thường mang sắc thái tiêu cực hơn (cố ý làm điều xấu).  敢えて có thể tích cực (mạnh dạn) hoặc trung lập (chủ đích).
<br><br>無理に  (<b>N4</b>): "Ép buộc", "cố gắng quá sức".  敢えて nhấn mạnh sự lựa chọn có ý thức hơn.
<br><br>わざわざ  (<b>N3</b>): "Cất công", làm việc tốn sức (thường là tốt).  敢えて là làm việc khó/không cần thiết.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('2.  あくまでも: Đến cùng; kiên trì; tuyệt đối; chỉ là ~', 'Common', '     <b>Công thức:</b>  あくまでも + V/A/N/Cụm từ/Câu
<br>──────────<br><b>Cách dùng:</b> Nhấn mạnh việc giữ vững lập trường/thái độ đến cùng, hoặc nhấn mạnh một điều gì đó chỉ là/hoàn toàn là.
<br>──────────<br><b>Ý nghĩa:</b> Thể hiện sự quyết tâm ("đến cùng"), hoặc nhấn mạnh bản chất/giới hạn ("chỉ là").
<br>──────────<br><b>Chú ý:</b> Thường đi với các từ thể hiện ý chí, quan điểm.
<br>──────────<br><b>Ví dụ:</b>
<br>彼はあくまでも自分の無実を主張した。 <br>→ Anh ấy đã kiên trì khẳng định sự vô tội của mình đến cùng.
<br><br>これはあくまでも私個人の意見です。 <br>→ Đây tuyệt đối chỉ là ý kiến cá nhân của tôi.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>徹底的に  (<b>N2</b>): "Triệt để", nhấn mạnh làm gì đó toàn diện.  あくまでも
nhấn mạnh sự kiên trì về thái độ/lập trường.
<br><br>絶対  (<b>N5/N4</b>): "Tuyệt đối", dùng cho cấm đoán hoặc khẳng định chắc chắn.
あくまでも linh hoạt hơn, có cả nghĩa "chỉ là".
<br><br>単に  (<b>N2</b>): "Chỉ là", "đơn thuần là".  あくまでも khi mang nghĩa "chỉ là" thường nhấn mạnh hơn về việc giới hạn.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('3.  案の定（あんのじょう）: Đúng như đã nghĩ; như thường lệ; quả đúng là', 'Common', '     <b>Công thức:</b>  案の定、～
<br>──────────<br><b>Cách dùng:</b> Dùng khi một kết quả xảy ra đúng như dự đoán hoặc lo sợ trước đó.
<br>──────────<br><b>Ý nghĩa:</b> Nhấn mạnh sự việc xảy ra không nằm ngoài dự đoán, thường là kết quả không mong muốn.
<br>──────────<br><b>Chú ý:</b> Thường đi với những kết quả không tốt.
<br>──────────<br><b>Ví dụ:</b>
<br>怪しいと思っていたら、案の定、彼は詐欺師だった。 <br>→ Tôi đã nghi ngờ rồi, và đúng như dự đoán, hắn ta là một kẻ lừa đảo.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>やはり  /  やっぱり  (<b>N4/N3</b>): "Quả nhiên là", dùng rộng hơn, cho cả tích cực/tiêu cực.  案の定 thường trang trọng hơn và hay dùng cho kết quả tiêu cực đã dự đoán.
<br><br>思った通り  (<b>N4</b>): "Đúng như đã nghĩ", gần nghĩa nhất, nhưng  案の定
thường mang hàm ý mạnh hơn về kết quả không tốt đã được lường trước.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('4.  あらかじめ: Trước; sẵn; trước đó', 'Common', '     <b>Công thức:</b>  あらかじめ + V
<br>──────────<br><b>Cách dùng:</b> Diễn tả hành động hoặc sự chuẩn bị được thực hiện trước một thời điểm/sự kiện nhất định.
<br>──────────<br><b>Ý nghĩa:</b> Nhấn mạnh hành động chuẩn bị trước, làm sẵn.
<br>──────────<br><b>Chú ý:</b> Mang sắc thái trang trọng.
<br>──────────<br><b>Ví dụ:</b>
<br>会議に出席される方は、あらかじめ資料を読んでおいてください。 <br>→ Những vị tham dự cuộc họp, vui lòng đọc trước tài liệu.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>前もって  (<b>N3</b>): Gần nghĩa, nhưng  あらかじめ trang trọng hơn.
<br><br>事前に  (<b>N2</b>): Rất trang trọng, thường dùng trong văn viết.
<br><br>～ておく  (<b>N4</b>): "Làm sẵn", diễn tả sự chuẩn bị, nhưng  あらかじめ là trạng
từ và trang trọng hơn.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('5.  あっての: Tồn tại được là nhờ có; tất cả là nhờ vào ~', 'Common', '     <b>Công thức:</b> N1 +  あっての + N2
<br>──────────<br><b>Cách dùng:</b> Nhấn mạnh rằng N2 chỉ tồn tại/có ý nghĩa khi có N1. N1 là điều kiện tiên quyết.
<br>──────────<br><b>Ý nghĩa:</b> Nhấn mạnh tầm quan trọng và sự không thể thiếu của N1.
<br>──────────<br><b>Chú ý:</b> N1 thường là những thứ quan trọng.
<br>──────────<br><b>Ví dụ:</b>
<br>お客様あっての商売です。 <br>→ Việc kinh doanh tồn tại được là nhờ có khách hàng.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>おかげで  (<b>N4</b>): "Nhờ vào" (kết quả tốt).  あっての nhấn mạnh mạnh hơn về điều kiện tồn tại.
<br><br>からこそ  (<b>N3</b>): "Chính vì", nhấn mạnh lý do.  あっての nhấn mạnh nền tảng tồn tại.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('6.  ばこそ: Chỉ vì ~', 'Common', '     <b>Công thức:</b> V-ば / A-ければ / Na-であれば / N-であれば +  こそ
<br>──────────<br><b>Cách dùng:</b> Dùng để nhấn mạnh một lý do đặc biệt (thường là tích cực) dẫn đến một hành động.
<br>──────────<br><b>Ý nghĩa:</b> Chỉ vì... (nên mới...).
<br>──────────<br><b>Chú ý:</b> Vế sau thường là hành động có vẻ hơi lạ hoặc nghiêm khắc.
<br>──────────<br><b>Ví dụ:</b>
<br>あなたのことを思えばこそ、厳しく言うのです。 <br>→ Chỉ vì nghĩ cho bạn nên tôi mới nói nghiêm khắc như vậy.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>からこそ  (<b>N3</b>): Cũng nhấn mạnh lý do, nhưng  ばこそ thường mang sắc thái tình cảm, lý do đặc biệt hơn.
<br><br>～から  (<b>N5</b>): Chỉ lý do thông thường.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('7.  ばそれまでだ  /  たらそれまでだ: Nếu… thì hết; thì coi như xong', 'Common', '     <b>Công thức:</b> V-ば / V-たら +  それまでだ
<br>──────────<br><b>Cách dùng:</b> Diễn tả rằng nếu một sự việc nào đó xảy ra, thì mọi nỗ lực, giá trị khác sẽ trở nên vô nghĩa.
<br>──────────<br><b>Ý nghĩa:</b> Nhấn mạnh sự kết thúc hoặc sự vô ích.
<br>──────────<br><b>Chú ý:</b> Thường thể hiện sự thất vọng.
<br>──────────<br><b>Ví dụ:</b>
<br>どんなに高価なものでも、壊れてしまえばそれまでだ。 <br>→ Dù là đồ đắt tiền đến mấy, nếu hỏng mất thì cũng coi như xong.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>たら終わりだ  (<b>N?</b>): Gần nghĩa, nhưng  それまでだ nhấn mạnh sự vô ích hơn.
<br><br>～ても無駄だ  (<b>N3</b>): "Dù... cũng vô ích".  それまでだ nhấn mạnh sự "chấm hết".') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('8.  べからず  /  べからざる: Không được; không nên; cấm ~', 'Common', '     <b>Công thức:</b> V-る +  べからず / V-る +  べからざる + N
<br>──────────<br><b>Cách dùng:</b> Diễn tả sự cấm đoán mạnh, thường mang tính trang trọng, cổ xưa, dùng trong văn viết, quy tắc.
<br>──────────<br><b>Ý nghĩa:</b> Nhấn mạnh việc không được phép/nên làm.
<br>──────────<br><b>Chú ý:</b> Cách nói khá cứng và cổ.
<br>──────────<br><b>Ví dụ:</b>
<br>芝生に入るべからず。 <br>→ Cấm dẫm lên cỏ.
<br><br>政治家として許すべからざる発言だ。 <br>→ Với tư cách là một chính trị gia, đó là một phát ngôn không thể tha thứ được.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～てはいけない  (<b>N5</b>): Cấm đoán thông thường.
<br><br>～禁止  (<b>N3</b>): "Cấm", thường dùng trong biển báo.
<br><br>～べきではない  (<b>N3</b>): "Không nên", khuyên răn.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('9.  べく: Để; với mục đích ~', 'Common', '     <b>Công thức:</b> V-る +  べく (する ->  すべく)
<br>──────────<br><b>Cách dùng:</b> Diễn tả mục đích thực hiện hành động. Cách nói trang trọng, văn viết.
<br>──────────<br><b>Ý nghĩa:</b> Nhấn mạnh mục đích, ý định mạnh mẽ.
<br>──────────<br><b>Chú ý:</b> Chủ ngữ hai vế phải giống nhau. Vế sau không là mệnh lệnh.
<br>──────────<br><b>Ví dụ:</b>
<br>彼はサッカー選手になるべく、毎日厳しい練習をしている。 <br>→ Để trở thành cầu thủ bóng đá, anh ấy đang luyện tập khắc nghiệt mỗi ngày.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～ために  (<b>N4</b>): Phổ biến nhất.
<br><br>～ように  (<b>N4</b>): Dùng cho mục đích liên quan đến khả năng, trạng thái.
<br><br>～んがために  (<b>N1</b>): Gần nghĩa, văn chương hơn.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('10.  べくもない: Không thể nào ~', 'Common', '     <b>Công thức:</b> V-る +  べくもない
<br>──────────<br><b>Cách dùng:</b> Diễn tả rằng một việc gì đó là không thể xảy ra hoặc làm được.
<br>──────────<br><b>Ý nghĩa:</b> Nhấn mạnh sự bất khả thi.
<br>──────────<br><b>Chú ý:</b> Cách nói khá cứng và cổ, văn viết.
<br>──────────<br><b>Ví dụ:</b>
<br>素人の彼がプロに勝つべくもない。 <br>→ Một người nghiệp dư như anh ta thì làm sao có thể thắng được dân chuyên nghiệp.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～はずがない  (<b>N3</b>): Không thể (suy luận logic).
<br><br>～わけがない  (<b>N3</b>): Không thể (vô lý).
<br><br>～ことはできない  (<b>N5</b>): Không thể (khả năng).') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('11.  べくして: Như thể nó phải xảy ra; theo lẽ tự nhiên', 'Common', '     <b>Công thức:</b> V-る +  べくして + V-た
<br>──────────<br><b>Cách dùng:</b> Diễn tả một kết quả xảy ra là điều tất yếu, không thể tránh khỏi.
<br>──────────<br><b>Ý nghĩa:</b> Nhấn mạnh tính tất yếu, định mệnh.
<br>──────────<br><b>Chú ý:</b> Thường dùng với kết quả tiêu cực.
<br>──────────<br><b>Ví dụ:</b>
<br>事故は起こるべくして起こった。 <br>→ Vụ tai nạn xảy ra là điều không thể tránh khỏi.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>当然  (<b>N4</b>): "Đương nhiên".  べくして nhấn mạnh hơn vào quá trình/định mệnh.
<br><br>必然的に  (<b>N1/N2</b>): "Một cách tất yếu".') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('12.  びる  /  びて  /  びた: Có vẻ là; trông như; hành xử như ~', 'Common', '     <b>Công thức:</b> N / A-i (bỏ  い) +  びる
<br>──────────<br><b>Cách dùng:</b> Diễn tả có vẻ ngoài, thái độ giống N/A.
<br>──────────<br><b>Ý nghĩa:</b> Diễn tả sự xuất hiện của một đặc tính/vẻ ngoài (thường không vốn có).
<br>──────────<br><b>Chú ý:</b> Thường dùng với các từ nhất định (大人びる,  古びる).
<br>──────────<br><b>Ví dụ:</b>
<br>彼女はまだ子供なのに、ずいぶん大人びて見える。 <br>→ Dù vẫn còn là trẻ con, cô bé trông ra dáng người lớn.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～っぽい  (<b>N3/N2</b>): Gần nghĩa, nhưng  っぽい thường suồng sã hơn.
<br><br>～らしい  (<b>N4</b>): Phù hợp với bản chất.
<br><br>～めく  (<b>N1</b>): Thường dùng với danh từ trừu tượng.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('13.  ぶり  /  っぷり: Phong cách; cách thức; kiểu ~', 'Common', '     <b>Công thức:</b> V-ます (bỏ  ます) / N +  ぶり /  っぷり
<br>──────────<br><b>Cách dùng:</b> Diễn tả cách thức, trạng thái, hoặc mức độ của hành động.
<br>──────────<br><b>Ý nghĩa:</b> Mô tả "cách", "kiểu", "mức độ".
<br>──────────<br><b>Chú ý:</b>  っぷり nhấn mạnh hơn. Khác với  ぶり (<b>N4</b>) (sau ~ thời gian).
<br>──────────<br><b>Ví dụ:</b>
<br>彼の食べっぷりは見事だ。 <br>→ Cách anh ấy ăn thật đáng nể.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～方  (<b>N5</b>): "Cách", nhưng  ぶり /  っぷり thường mô tả sống động hơn.
<br><br>様子  (<b>N4</b>): "Trạng thái".') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('14.  ぶる  /  ぶって  /  ぶった: Ra vẻ; hành xử như; giả vờ như ~', 'Common', '     <b>Công thức:</b> N / A-i (bỏ  い) / Na +  ぶる
<br>──────────<br><b>Cách dùng:</b> Diễn tả hành động cố tỏ ra có đặc tính nào đó mà thực chất không có.
<br>──────────<br><b>Ý nghĩa:</b> Diễn tả sự giả tạo, thường mang hàm ý tiêu cực.
<br>──────────<br><b>Chú ý:</b> Thường dùng với các từ nhất định (偉ぶる,  知ったかぶる).
<br>──────────<br><b>Ví dụ:</b>
<br>彼は専門家ぶっているが、実は何も知らない。 <br>→ Anh ta ra vẻ là chuyên gia nhưng thực ra chẳng biết gì cả.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～ふりをする  (<b>N3</b>): "Giả vờ".  ぶる thường dùng để "ra vẻ" một tính cách/địa vị.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('15.  だに  /  だにしない: Ngay cả; thậm chí không ~', 'Common', '     <b>Công thức:</b> N / V-る +  だに / N +  だに + V-ない
<br>──────────<br><b>Cách dùng:</b> Khẳng định: "Chỉ cần ~ thôi cũng đã..." / Phủ định: "Ngay cả ~ cũng không...".
<br>──────────<br><b>Ý nghĩa:</b> Nhấn mạnh mức độ tối thiểu hoặc sự phủ định tuyệt đối.
<br>──────────<br><b>Chú ý:</b> Trang trọng, cổ, văn viết. Thường đi với các từ hạn chế.
<br>──────────<br><b>Ví dụ:</b>
<br>想像だにしなかった。 <br>→ Tôi thậm chí còn không tưởng tượng được.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～さえ  (<b>N3</b>): "Ngay cả". Phổ biến hơn.
<br><br>～すら  (<b>N1/N2</b>): "Ngay cả". Trang trọng hơn  さえ.
<br><br>～ですら  (<b>N1</b>): "Ngay cả". Gần nghĩa với  すら.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('16.  だの～だの: Nào là ~ nào là ~; và những thứ tương tự ~', 'Common', '     <b>Công thức:</b> N/V/A (Thể thông thường) +  だの + N/V/A (Thể thông thường) +  だの
<br>──────────<br><b>Cách dùng:</b> Dùng để liệt kê các ví dụ, thường là mang hàm ý phàn nàn, không hài lòng, hoặc kể lể một cách thiếu trật tự.
<br>──────────<br><b>Ý nghĩa:</b> Nào là... nào là... (liệt kê với thái độ chê bai, phàn nàn).
<br>──────────<br><b>Chú ý:</b> Thường mang sắc thái tiêu cực hoặc thể hiện sự lộn xộn, nhiều thứ.
<br>──────────<br><b>Ví dụ:</b>
<br>彼は給料が安いだの、仕事が忙しいだの、文句ばかり言っている。 <br>→ Anh ta toàn phàn nàn, nào là lương thấp, nào là công việc bận rộn.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～とか～とか  (<b>N4</b>): Cũng dùng để liệt kê, nhưng trung lập hơn, không nhất thiết mang ý phàn nàn.
<br><br>～や～など  (<b>N5</b>): Liệt kê không đầy đủ, mang tính trang trọng hơn.
<br><br>～なり～なり  (<b>N1</b>): Dùng để đưa ra ví dụ về lựa chọn hành động.  だの～だ
の chỉ liệt kê (thường là phàn nàn).') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('17.  だろうに: (1) Chắc chắn là..., nhưng ~ (2) Lẽ ra nên (hối tiếc)', 'Common', '     <b>Công thức:</b> (Thể thông thường) +  だろうに
<br>──────────<br><b>Cách dùng:</b> Diễn tả sự tiếc nuối, bất mãn hoặc ngạc nhiên về một sự thật trái với mong đợi ("Chắc là... vậy mà...") hoặc diễn tả sự hối tiếc ("Lẽ ra nên...").
<br>──────────<br><b>Ý nghĩa:</b> Thể hiện sự tiếc nuối, bất mãn, hoặc hối hận.
<br>──────────<br><b>Chú ý:</b> Thường đứng cuối câu hoặc giữa câu.
<br>──────────<br><b>Ví dụ:</b>
<br>あんなに勉強したんだろうに、合格できなかったなんて、残念だ。 <br>→ Chắc là đã học nhiều đến thế, vậy mà không thể đỗ được, thật đáng tiếc.
<br><br>言ってくれれば手伝っただろうに。 <br>→ Lẽ ra cậu nói thì tôi đã giúp rồi.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～のに  (<b>N4</b>): Cũng diễn tả sự tương phản, tiếc nuối, nhưng  だろうに
thường bao hàm cả sự suy đoán (だろう).
<br><br>～ばよかった  (<b>N4</b>): Diễn tả sự hối tiếc "lẽ ra nên làm".') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('18.  であれ  /  であろうと: Dù là ai; dù là gì; dù thế nào; ngay cả ~', 'Common', '     <b>Công thức:</b> N / Từ để hỏi +  であれ /  であろうと
<br>──────────<br><b>Cách dùng:</b> Dùng để đưa ra một ví dụ cực đoan hoặc bao hàm mọi trường hợp, và khẳng định rằng vế sau vẫn đúng.
<br>──────────<br><b>Ý nghĩa:</b> Dù là... / Ngay cả... thì cũng... (nhấn mạnh sự không ngoại lệ).
<br>──────────<br><b>Chú ý:</b> Cách nói trang trọng, văn viết.
<br>──────────<br><b>Ví dụ:</b>
<br>たとえ国王であれ、法を犯すことは許されない。 <br>→ Dù là quốc vương đi nữa, cũng không được phép vi phạm pháp luật.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～でも  (<b>N5</b>): Cách nói thông thường hơn.
<br><br>～(で)あっても  (<b>N2</b>): Gần nghĩa, cũng diễn tả sự nhượng bộ.
<br><br>～といえども  (<b>N1</b>): Cũng mang nghĩa "dù là", rất trang trọng.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('19.  であれ～であれ: Dù là [A] hay [B]', 'Common', '     <b>Công thức:</b> N1 +  であれ + N2 +  であれ
<br>──────────<br><b>Cách dùng:</b> Dùng để liệt kê hai hoặc nhiều ví dụ và khẳng định rằng vế sau đúng cho tất cả.
<br>──────────<br><b>Ý nghĩa:</b> Dù là A hay B thì cũng... (không phân biệt).
<br>──────────<br><b>Chú ý:</b> Cách nói trang trọng.
<br>──────────<br><b>Ví dụ:</b>
<br>男であれ女であれ、能力のある人がリーダーになるべきだ。 <br>→ Dù là nam hay nữ, người có năng lực nên trở thành lãnh đạo.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～でも～でも  (<b>N?</b>): Cách nói thông thường hơn.
<br><br>～といい～といい  (<b>N2</b>): Dùng để nêu ví dụ và đưa ra đánh giá chung.
<br><br>～ようと～ようと  (<b>N1</b>): Dùng với động từ thể ý chí.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('20.  でもあり～でもある: Vừa là… vừa là ~; cả… và ~', 'Common', '     <b>Công thức:</b> N1 +  でもあり + N2 +  でもある
<br>──────────<br><b>Cách dùng:</b> Dùng để nói rằng một người/vật có đồng thời hai đặc điểm, vai trò.
<br>──────────<br><b>Ý nghĩa:</b> Nhấn mạnh sự tồn tại song song của hai khía cạnh.
<br>──────────<br><b>Chú ý:</b> Thường dùng để giới thiệu hoặc mô tả.
<br>──────────<br><b>Ví dụ:</b>
<br>彼は私の先生でもあるし、親友でもある。 <br>→ Anh ấy vừa là thầy giáo của tôi, vừa là bạn thân của tôi.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～も～も  (<b>N5</b>): Chỉ liệt kê đơn thuần.
<br><br>～し～し  (<b>N4</b>): Liệt kê lý do hoặc đặc điểm.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('21.  でも何でもない  /  くも何ともない: Không hề; không có gì như thế cả', 'Common', '     <b>Công thức:</b> N +  でも何でもない / A-く +  も何ともない
<br>──────────<br><b>Cách dùng:</b> Dùng để phủ định mạnh mẽ một điều gì đó, khẳng định rằng nó hoàn toàn không phải như vậy.
<br>──────────<br><b>Ý nghĩa:</b> Hoàn toàn không phải là...; Chẳng có gì là... cả.
<br>──────────<br><b>Chú ý:</b> Mang tính phủ định dứt khoát.
<br>──────────<br><b>Ví dụ:</b>
<br>これは冗談でも何でもない。 <br>→ Đây không hề là trò đùa.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～ではない  (<b>N5</b>): Phủ định thông thường. Cấu trúc này nhấn mạnh hơn.
<br><br>決して～ない  (<b>N3</b>): "Tuyệt đối không".') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('22.  でなくてなんだろう: Hẳn là; chắc chắn là ~', 'Common', '     <b>Công thức:</b> N +  でなくてなんだろう /  でなくてなんだろうか
<br>──────────<br><b>Cách dùng:</b> Dùng để nhấn mạnh một cách đầy cảm xúc rằng một điều gì đó chắc chắn là N.
<br>──────────<br><b>Ý nghĩa:</b> Nếu không phải là... thì là gì nữa?; Chắc chắn là...
<br>──────────<br><b>Chú ý:</b> Cách nói mang tính văn chương, cảm thán.
<br>──────────<br><b>Ví dụ:</b>
<br>これこそ真実の愛でなくてなんだろう。 <br>→ Đây hẳn là tình yêu đích thực rồi, còn gì nữa!
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～に違いない  (<b>N3</b>): "Chắc chắn là" (suy luận logic).  でなくてなんだろう
mang tính cảm thán.
<br><br>まさに～だ  (<b>N2</b>): "Đúng là", "chính là".') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('23.  ではあるまいか: Chẳng phải là ~ sao; tôi tự hỏi liệu có phải là không ~', 'Common', '     <b>Công thức:</b> N/V/A (Thể thông thường) +  の +  ではあるまいか / N/Na +  ではあるまいか
<br>──────────<br><b>Cách dùng:</b> Dùng để đưa ra ý kiến, phán đoán một cách mềm mỏng.
<br>──────────<br><b>Ý nghĩa:</b> Có lẽ là...; Chẳng phải là... sao?
<br>──────────<br><b>Chú ý:</b> Cách nói trang trọng, văn viết.
<br>──────────<br><b>Ví dụ:</b>
<br>この計画には、まだ問題があるのではあるまいか。 <br>→ Kế hoạch này chẳng phải là vẫn còn vấn đề sao?
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～のではないだろうか  /  ～のではないでしょうか  (<b>N3</b>): Phổ biến hơn, ít trang trọng hơn.
<br><br>～かもしれない  (<b>N4</b>): "Có lẽ", diễn tả khả năng.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('24.  ではあるまいし: Đâu phải là ~; không phải như thể là ~', 'Common', '     <b>Công thức:</b> N / V/A (Thể thông thường) +  の /  ん +  ではあるまいし
<br>──────────<br><b>Cách dùng:</b> Dùng để phủ định một giả định, thường để đưa ra lời khuyên, phê bình.
<br>──────────<br><b>Ý nghĩa:</b> Đâu phải là... (nên đừng...).
<br>──────────<br><b>Chú ý:</b> Vế sau thường là câu phủ định, khuyên răn.
<br>──────────<br><b>Ví dụ:</b>
<br>子供ではあるまいし、そんなことで泣くのはやめなさい。 <br>→ Đâu phải là trẻ con, đừng khóc vì những chuyện như thế nữa.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～わけではない  (<b>N3</b>): "Không phải là...", nhưng  ではあるまいし thường mang hàm ý trách móc hoặc khuyên răn mạnh hơn.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('25.  では済まない（ではすまない）: Không chỉ dừng lại ở ~; sẽ cần nhiều
hơn ~', 'Common', '     <b>Công thức:</b> N / V る/V た +  だけ/こと +  では済まない
<br>──────────<br><b>Cách dùng:</b> Diễn tả rằng một vấn đề không thể giải quyết hoặc kết thúc chỉ bằng một hành động/mức độ đơn giản.
<br>──────────<br><b>Ý nghĩa:</b> Không thể xong chuyện chỉ bằng...
<br>──────────<br><b>Chú ý:</b> Thường dùng để cảnh báo về hậu quả tiêu cực.
<br>──────────<br><b>Ví dụ:</b>
<br>謝っただけでは済まない問題だ。 <br>→ Đây là vấn đề không thể xong chỉ bằng một lời xin lỗi.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～だけでいいわけではない  (<b>N?</b>): "Không phải chỉ cần... là được".
<br><br>～ずには済まない  (<b>N1</b>): "Không thể không...", "buộc phải...".') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('26.  どうにも～ない: Không ... bằng mọi cách; dù cố gắng thế nào cũng
không thể ~', 'Common', '     <b>Công thức:</b>  どうにも + V-ない / V-ようがない / A-くない / Na-ではない
<br>──────────<br><b>Cách dùng:</b> Dùng để nhấn mạnh rằng dù đã cố gắng bằng mọi cách nhưng vẫn không thể làm được gì.
<br>──────────<br><b>Ý nghĩa:</b> Không tài nào...; Không làm sao mà... được.
<br>──────────<br><b>Chú ý:</b> Thể hiện sự bất lực.
<br>──────────<br><b>Ví dụ:</b>
<br>この問題は難しすぎて、どうにも解けない。 <br>→ Vấn đề này khó quá, tôi không tài nào giải được.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>どうしても～ない  (<b>N4</b>): "Dù thế nào cũng không...".  どうにも～ない
thường mang sắc thái bất lực hơn.
<br><br>とても～ない  (<b>N4</b>): "Hoàn toàn không thể".') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('27.  が早いか（がはやいか）: Vừa mới ~ thì đã; ngay sau khi ~', 'Common', '     <b>Công thức:</b> V-る / V-た +  が早いか
<br>──────────<br><b>Cách dùng:</b> Diễn tả một hành động xảy ra gần như đồng thời hoặc ngay lập tức sau một hành động khác.
<br>──────────<br><b>Ý nghĩa:</b> Ngay khi... thì lập tức...
<br>──────────<br><b>Chú ý:</b> Thường diễn tả hành động bất ngờ. Vế sau không thể hiện ý chí.
<br>──────────<br><b>Ví dụ:</b>
<br>授業終了のチャイムが鳴るが早いか、生徒たちは教室を飛び出した。
- Chuông tan học vừa reo lên, học sinh đã lao ra khỏi lớp.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～たとたん(に) (<b>N3</b>): Nhấn mạnh sự bất ngờ của vế sau.
<br><br>～なり  (<b>N2</b>): Thường dùng với hành động bất thường.
<br><br>～や否や  (<b>N1</b>): Trang trọng hơn.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('28.  が/も～なら、～も～だ: Nối/so sánh tiêu cực (cha nào con nấy)', 'Common', '     <b>Công thức:</b> N1 +  が/も + N1 +  なら、 + N2 +  も + N2 +  だ
<br>──────────<br><b>Cách dùng:</b> Dùng để nêu ra hai sự vật/sự việc và nhận xét rằng cả hai đều có chung một đặc điểm (thường là tiêu cực).
<br>──────────<br><b>Ý nghĩa:</b> Nếu A đã... thì B cũng... (thường là tiêu cực).
<br>──────────<br><b>Chú ý:</b> Thường dùng với ý nghĩa chê bai.
<br>──────────<br><b>Ví dụ:</b>
<br>親も親なら、子も子だ。 <br>→ Cha nào con nấy.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～も～も  (<b>N5</b>): Chỉ liệt kê. Cấu trúc này mang tính đánh giá.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('29.  がましい: Trông giống; nghe giống; xấp xỉ; tương tự; hơi giống ~', 'Common', '     <b>Công thức:</b> N +  がましい
<br>──────────<br><b>Cách dùng:</b> Diễn tả rằng cái gì đó trông giống, nghe giống như N, thường mang sắc thái không cần thiết, giả tạo.
<br>──────────<br><b>Ý nghĩa:</b> Có vẻ như...; Ra vẻ...
<br>──────────<br><b>Chú ý:</b> Thường dùng với các từ nhất định và mang hàm ý tiêu cực (言い訳がましい,
恩着せがましい).
<br>──────────<br><b>Ví dụ:</b>
<br>言い訳がましいことは言いたくない。 <br>→ Tôi không muốn nói những lời nghe như bào chữa.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～らしい  (<b>N4</b>): "Đúng chất".
<br><br>～っぽい  (<b>N3/N2</b>): "Có vẻ", nhưng  がましい thường mang tính phê phán
hành động/thái độ hơn.
<br><br>～ぶる  (<b>N1</b>): "Ra vẻ", "giả vờ".') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('30.  がてら: Nhân tiện; đồng thời; cùng lúc; tình cờ ~', 'Common', '     <b>Công thức:</b> N (chỉ hành động) / V-ます (bỏ  ます) +  がてら
<br>──────────<br><b>Cách dùng:</b> Diễn tả việc thực hiện một hành động (vế sau) nhân tiện khi đang thực hiện một hành động chính khác.
<br>──────────<br><b>Ý nghĩa:</b> Nhân tiện làm A thì làm B.
<br>──────────<br><b>Chú ý:</b> Hành động chính thường là di chuyển.
<br>──────────<br><b>Ví dụ:</b>
<br>散歩がてら、コンビニに寄ってきた。 <br>→ Nhân tiện đi dạo, tôi đã ghé vào cửa hàng tiện lợi.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～ついでに  (<b>N3</b>): Gần như đồng nghĩa và phổ biến hơn.
<br><br>～かたわら  (<b>N2</b>): Hai hành động quan trọng song song trong thời gian dài.
<br><br>～を兼ねて  (<b>N1</b>): Kết hợp hai mục đích.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('31.  ごとき  /  ごとく  /  ごとし: Giống như; như thể; như là ~', 'Common', '     <b>Công thức:</b> N +  の/が +  ごとき + N / N/V-る +  ごとく + V/A/Adv / N/V-る +
ごとし
<br>──────────<br><b>Cách dùng:</b> Dùng để so sánh, ví von một cách trang trọng, có phần cổ xưa.
<br>──────────<br><b>Ý nghĩa:</b> Giống như; như là.
<br>──────────<br><b>Chú ý:</b> Trang trọng. N +  ごとき có thể mang ý coi thường.
<br>──────────<br><b>Ví dụ:</b>
<br>夢のごとき**年月だった。 <br>→ Đó là những năm tháng như một giấc mơ.
<br><br>矢のごとく**飛び去った。 <br>→ Bay đi nhanh như tên bắn.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～のような  /  ～のように  /  ～のようだ  (<b>N4</b>): Phổ biến nhất.
<br><br>～みたい  (<b>N4</b>): Dùng trong văn nói, suồng sã hơn.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('32.  ぐるみ: Cùng với; toàn ~', 'Common', '     <b>Công thức:</b> N +  ぐるみ
<br>──────────<br><b>Cách dùng:</b> Diễn tả ý nghĩa "bao gồm cả N", "toàn bộ N", thường dùng với nhóm người, gia đình, tổ chức.
<br>──────────<br><b>Ý nghĩa:</b> Cả...; Toàn bộ...
<br>──────────<br><b>Chú ý:</b> Nhấn mạnh tính toàn thể.
<br>──────────<br><b>Ví dụ:</b>
<br>彼らは家族ぐるみで旅行に出かけた。 <br>→ Họ đã đi du lịch cùng với cả gia đình.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～ごと  (<b>N3</b>): "Cả", nhưng  ぐるみ thường dùng với người/nhóm.
<br><br>～全体  (<b>N3</b>): "Toàn thể".') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('33.  羽目になる（はめになる）: Rơi vào tình thế; cuối cùng lại (gặp phải
điều khó chịu)', 'Common', '     <b>Công thức:</b> V-る +  羽目になる
<br>──────────<br><b>Cách dùng:</b> Diễn tả việc rơi vào một tình huống khó khăn, rắc rối, không mong muốn.
<br>──────────<br><b>Ý nghĩa:</b> Cuối cùng lại phải...; Rơi vào tình thế khó xử...
<br>──────────<br><b>Chú ý:</b> Luôn dùng cho kết quả tiêu cực.
<br>──────────<br><b>Ví dụ:</b>
<br>電車に乗り遅れて、結局タクシーで行く羽目になった。 <br>→ Vì lỡ chuyến tàu, cuối cùng tôi lại phải đi taxi.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～ことになった  (<b>N4</b>): Chỉ sự quyết định/kết quả nói chung.
<br><br>～ざるを得ない  (<b>N1</b>): "Buộc phải làm".
<br><br>～しまつだ  (<b>N1</b>): "Kết cục là" (xấu).') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('34.  ほどのことではない: Không đáng; không cần phải ~', 'Common', '     <b>Công thức:</b> V-る / N +  ほどのことではない
<br>──────────<br><b>Cách dùng:</b> Diễn tả rằng một việc gì đó không quan trọng, không nghiêm trọng, hoặc không đáng để bận tâm.
<br>──────────<br><b>Ý nghĩa:</b> Không đến mức phải...; Không đáng để...
<br>──────────<br><b>Chú ý:</b> Dùng để giảm nhẹ mức độ.
<br>──────────<br><b>Ví dụ:</b>
<br>こんな小さな怪我、心配するほどのことではないよ。 <br>→ Vết thương nhỏ thế này, không đáng để lo lắng đâu.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～必要はない  (<b>N4</b>): "Không cần thiết".  ほどのことではない nhấn mạnh "mức độ không đáng".
<br><br>～までもない  (<b>N1</b>): "Không cần phải" (vì hiển nhiên).') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('35.  ほうがましだ: Tốt hơn là; thà ~ còn hơn', 'Common', '     <b>Công thức:</b> V-る / V-ない +  ほうがましだ
<br>──────────<br><b>Cách dùng:</b> Dùng để so sánh hai lựa chọn, và cho rằng dù lựa chọn được nêu ra không tốt, nhưng nó vẫn tốt hơn so với một lựa chọn khác.
<br>──────────<br><b>Ý nghĩa:</b> Thà... còn hơn; ... còn tốt chán.
<br>──────────<br><b>Chú ý:</b> Thường dùng khi cả hai lựa chọn đều không lý tưởng.
<br>──────────<br><b>Ví dụ:</b>
<br>あんな人と結婚するくらいなら、一生独身のほうがましだ。 <br>→ Nếu phải kết hôn với người như thế thì thà sống độc thân cả đời còn hơn.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～ほうがいい  (<b>N5</b>): "Nên...", lời khuyên thông thường.
<br><br>～くらいなら  (<b>N2</b>): Thường dùng làm vế điều kiện ch<br><br>ほうがましだ.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('36.  放題（ほうだい）: Làm thỏa thích; làm hết ý; để mặc ~', 'Common', '     <b>Công thức:</b> V-ます (bỏ  ます) +  放題 (ほうだい)
<br>──────────<br><b>Cách dùng:</b> Diễn tả việc thực hiện một hành động nào đó một cách tự do, không bị giới hạn, thỏa thích. Thường đi kèm với ý nghĩa tiêu cực (làm quá mức) hoặc dùng trong các dịch vụ.
<br>──────────<br><b>Ý nghĩa:</b> ... thỏa thích; ... không giới hạn.
<br>──────────<br><b>Chú ý:</b> Thường dùng với ý phê phán hoặc trong các dịch vụ (食べ放題,  飲み放題).
<br>──────────<br><b>Ví dụ:</b>
<br>子供たちは夏休みだからと、遊び放題だ。 <br>→ Bọn trẻ vì là nghỉ hè nên chơi thỏa thích.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>好きなだけ  (<b>N4</b>): "Bao nhiêu tùy thích",  放題 thường có hàm ý mạnh hơn về sự không giới hạn, đôi khi là tiêu cực hoặc trong bối cảnh thương mại.
<br><br>～ままに  (<b>N2</b>): "Theo như", "cứ để...", chỉ sự thuận theo tự nhiên/ý muốn.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('37.  いかんだ  /  いかんでは  /  いかんによっては: Tùy theo; tùy thuộc vào;
dù có hay không ~', 'Common', '     <b>Công thức:</b> N +  いかんだ /  いかんでは /  いかんによっては
<br>──────────<br><b>Cách dùng:</b> Diễn tả rằng kết quả hoặc tình hình ở vế sau sẽ thay đổi, phụ thuộc vào nội dung hoặc trạng thái của N ở vế trước.
<br>──────────<br><b>Ý nghĩa:</b> Tùy thuộc vào N mà...
<br>──────────<br><b>Chú ý:</b> Cách nói trang trọng.  いかんだ là dạng kết thúc câu.
<br>──────────<br><b>Ví dụ:</b>
<br>試験の結果いかんでは、卒業できない可能性もある。 <br>→ Tùy thuộc vào kết quả kỳ thi mà cũng có khả năng không tốt nghiệp được.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～によって  /  ～によっては  (<b>N3</b>): "Tùy vào", phổ biến hơn.  いかん có phần trang trọng hơn.
<br><br>～次第で  (<b>N2</b>): "Tùy thuộc vào", rất gần nghĩa, cũng trang trọng.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('38.  いかんにかかわらず  /  いかんによらず  /  いかんをとわず: Bất kể; dù
có hay không; không quan trọng là ~', 'Common', '     <b>Công thức:</b> N +  の +  いかんにかかわらず /  いかんによらず /  いかんをとわず
<br>──────────<br><b>Cách dùng:</b> Diễn tả rằng vế sau vẫn xảy ra hoặc đúng, bất kể nội dung, trạng thái của N.
<br>──────────<br><b>Ý nghĩa:</b> Bất kể N là gì...; Không phụ thuộc vào N...
<br>──────────<br><b>Chú ý:</b> Cách nói trang trọng.
<br>──────────<br><b>Ví dụ:</b>
<br>理由のいかんにかかわらず、欠席は欠席として扱います。 <br>→ Bất kể lý do là gì, vắng mặt sẽ được xem là vắng mặt.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～に関わらず  (<b>N2</b>): "Bất kể", gần nghĩa và phổ biến hơn.
<br><br>～を問わず  (<b>N2</b>): "Bất kể", "không phân biệt", cũng gần nghĩa.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('39.  いかなる: Bất kỳ loại nào; mọi; bất cứ ~', 'Common', '     <b>Công thức:</b>  いかなる + N + (Trợ từ)
<br>──────────<br><b>Cách dùng:</b> Dùng trước danh từ để nhấn mạnh rằng điều ở vế sau áp dụng cho mọi trường hợp, không có ngoại lệ.
<br>──────────<br><b>Ý nghĩa:</b> Bất cứ... nào; Dù... thế nào đi nữa.
<br>──────────<br><b>Chú ý:</b> Cách nói trang trọng, thường dùng trong văn viết, quy định.
<br>──────────<br><b>Ví dụ:</b>
<br>いかなる理由があっても、暴力は許されない。 <br>→ Dù có bất cứ lý do nào, bạo lực cũng không được tha thứ.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>どんな  (<b>N5</b>): Phổ biến hơn.  いかなる trang trọng hơn.
<br><br>どのような  (<b>N3</b>): Trang trọng hơn  どんな.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('40.  いかに: Như thế nào; bằng cách nào; bao nhiêu; đến mức nào', 'Common', '     <b>Công thức:</b>  いかに + A/Na +  か /  いかに + V +  か /  いかに +  ～ても/でも
<br>──────────<br><b>Cách dùng:</b> Dùng để hỏi hoặc nhấn mạnh mức độ, cách thức. Thường dùng trong câu cảm thán hoặc nhượng bộ.
<br>──────────<br><b>Ý nghĩa:</b> Đến mức nào; Như thế nào.
<br>──────────<br><b>Chú ý:</b> Cách nói trang trọng, văn viết.
<br>──────────<br><b>Ví dụ:</b>
<br>彼がいかに努力したか、誰も知らない。 <br>→ Không ai biết anh ấy đã nỗ lực đến mức nào.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>どのように  (<b>N4</b>) /  どれほど  (<b>N3</b>): Phổ biến hơn.  いかに trang trọng hơn.
<br><br>どんなに  (<b>N4</b>): "Đến mức nào".  いかに trang trọng hơn.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('41.  いかにも: Quả thực; thực sự; thật là; giống như; rất; cực kỳ ~', 'Common', '     <b>Công thức:</b>  いかにも +  ～そうだ /  ～らしい /  ～のようだ / N
<br>──────────<br><b>Cách dùng:</b> Dùng để nhấn mạnh rằng một điều gì đó thực sự hoặc trông rất giống
với những gì được mô tả.
<br>──────────<br><b>Ý nghĩa:</b> Quả đúng là...; Trông rất...
<br>──────────<br><b>Chú ý:</b> Thường đi với các cấu trúc chỉ sự phán đoán/vẻ ngoài.
<br>──────────<br><b>Ví dụ:</b>
<br>その話はいかにも本当らしく聞こえる。 <br>→ Câu chuyện đó nghe quả thực giống như thật.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>本当に  (<b>N5</b>): "Thật sự".
<br><br>まるで～のようだ  (<b>N3</b>): "Cứ như là".  いかにも nhấn mạnh sự phù hợp với
hình mẫu.
<br><br>実に  (<b>N2</b>): "Thực sự", "quả thực".') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('42.  いずれにしても  /  いずれにしろ  /  いずれにせよ: Dù sao đi nữa; dù thế
nào đi nữa; trong mọi trường hợp ~', 'Common', '     <b>Công thức:</b>  いずれにしても /  いずれにしろ /  いずれにせよ、～
<br>──────────<br><b>Cách dùng:</b> Dùng để kết luận hoặc đưa ra ý kiến chung sau khi xem xét nhiều khả năng.
<br>──────────<br><b>Ý nghĩa:</b> Dù sao đi nữa...; Dù thế nào thì...
<br>──────────<br><b>Chú ý:</b>  いずれにせよ trang trọng hơn.
<br>──────────<br><b>Ví dụ:</b>
<br>いずれにしても、傘は持っていこう。 <br>→ Dù sao đi nữa, hãy mang theo ô.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>どっちみち  (<b>N?</b>): Dùng trong văn nói.
<br><br>とにかく  (<b>N3</b>): "Dù sao thì", thường dùng để chuyển hướng.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('43.  じみた: Trở nên; có vẻ như; trông giống như; nhuốm màu ~', 'Common', '     <b>Công thức:</b> N +  じみた + N
<br>──────────<br><b>Cách dùng:</b> Diễn tả rằng cái gì đó có vẻ, có khuynh hướng, hoặc nhuốm màu sắc của N, thường là theo hướng không mong muốn.
<br>──────────<br><b>Ý nghĩa:</b> Có vẻ...; Nhuốm màu... (thường là tiêu cực).
<br>──────────<br><b>Chú ý:</b> Thường dùng với các từ nhất định (子供じみた,  年寄りじみた).
<br>──────────<br><b>Ví dụ:</b>
<br>そんな子供じみたことはやめなさい。 <br>→ Hãy bỏ những hành động như trẻ con đó đi.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～っぽい  (<b>N3/N2</b>): "Có vẻ", nhưng  じみた thường mang hàm ý phê phán
mạnh hơn.
<br><br>～びる  (<b>N1</b>): "Trông như", thường chỉ vẻ bề ngoài/sự thay đổi.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('44.  か否か（かいなか）: Có hay không ~', 'Common', '     <b>Công thức:</b> V-る / V-ない +  か否か / N +  である +  か否か
<br>──────────<br><b>Cách dùng:</b> Dùng để diễn tả sự lựa chọn hoặc câu hỏi giữa hai khả năng đối lập: có hoặc không.
<br>──────────<br><b>Ý nghĩa:</b> Có... hay không.
<br>──────────<br><b>Chú ý:</b> Cách nói trang trọng, văn viết.
<br>──────────<br><b>Ví dụ:</b>
<br>出席するか否か、早めにご連絡ください。 <br>→ Xin vui lòng liên lạc sớm xem có tham dự hay không.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～かどうか  (<b>N4</b>): "Có... hay không", phổ biến nhất.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('45.  かと思いきや（かとおもいきや）: Trái với mong đợi; cứ tưởng là...,
nhưng ~', 'Common', '     <b>Công thức:</b> (Thể thông thường) +  かと思いきや、～
<br>──────────<br><b>Cách dùng:</b> Diễn tả một sự việc xảy ra trái ngược với những gì người nói đã nghĩ hoặc dự đoán.
<br>──────────<br><b>Ý nghĩa:</b> Cứ ngỡ là..., ai dè...; Tưởng là..., nhưng hóa ra...
<br>──────────<br><b>Chú ý:</b> Thể hiện sự bất ngờ.
<br>──────────<br><b>Ví dụ:</b>
<br>試験は簡単だったかと思いきや、意外に難しい問題が多かった。 <br>→ Cứ tưởng bài thi dễ, ai dè lại có nhiều câu khó bất ngờ.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～と思ったら  (<b>N4</b>): "Vừa nghĩ là... thì...".  かと思いきや nhấn mạnh sự bất ngờ và trái ngược mạnh hơn.
<br><br>～のに  (<b>N4</b>): "Vậy mà...", diễn tả sự tương phản.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('46.  限りだ（かぎりだ）: Cảm thấy rất ~; vô cùng ~', 'Common', '     <b>Công thức:</b> A-い / Na な +  限りだ
<br>──────────<br><b>Cách dùng:</b> Dùng để diễn tả cảm xúc của người nói đang ở mức độ cao nhất.
<br>──────────<br><b>Ý nghĩa:</b> Vô cùng...; Rất... (nhấn mạnh cảm xúc).
<br>──────────<br><b>Chú ý:</b> Thường đi với các tính từ chỉ cảm xúc.
<br>──────────<br><b>Ví dụ:</b>
<br>久しぶりに友人に会えて、嬉しい限りだ。 <br>→ Lâu lắm mới gặp lại bạn, tôi vui vô cùng.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>とても  (<b>N5</b>) /  非常に  (<b>N3</b>): "Rất".  限りだ nhấn mạnh mức độ cảm xúc cao nhất.
<br><br>極まる  /  極まりない  (<b>N1</b>): "Cực kỳ", có thể dùng cho cả đánh giá khách quan.
<br><br>この上ない  (<b>N1</b>): "Không gì hơn".') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('47.  甲斐もなく（かいもなく）: Bất chấp; mặc dù ~ (công cốc)', 'Common', '     <b>Công thức:</b> V-た / N +  の +  甲斐もなく
<br>──────────<br><b>Cách dùng:</b> Diễn tả rằng mặc dù đã nỗ lực hoặc có giá trị nhưng kết quả lại không như mong đợi, trở nên vô ích.
<br>──────────<br><b>Ý nghĩa:</b> Bõ công... mà (kết quả lại)...; Mặc dù... nhưng (vô ích).
<br>──────────<br><b>Chú ý:</b> Luôn đi với kết quả tiêu cực, thể hiện sự thất vọng.
<br>──────────<br><b>Ví dụ:</b>
<br>必死の治療の甲斐もなく、祖父は亡くなってしまった。 <br>→ Mặc dù đã hết lòng chữa trị nhưng ông tôi vẫn qua đời.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～のに  (<b>N4</b>): "Vậy mà".  甲斐もなく nhấn mạnh sự vô ích của nỗ lực.
<br><br>～にもかかわらず  (<b>N3</b>): "Bất chấp".') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('48.  可能性がある（かのうせいがある）: Có thể; có khả năng là ~', 'Common', '     <b>Công thức:</b> V-る / N +  の +  可能性がある
<br>──────────<br><b>Cách dùng:</b> Diễn tả sự tồn tại của một khả năng nào đó có thể xảy ra.
<br>──────────<br><b>Ý nghĩa:</b> Có khả năng là...
<br>──────────<br><b>Chú ý:</b> Thường dùng cho khả năng trong tương lai.
<br>──────────<br><b>Ví dụ:</b>
<br>このままでは、計画が失敗する可能性がある。 <br>→ Nếu cứ thế này, có khả năng kế hoạch sẽ thất bại.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～かもしれない  (<b>N4</b>): "Có lẽ", phổ biến hơn, chủ quan hơn.
<br><br>～恐れがある  (<b>N2</b>): "Có nguy cơ" (tiêu cực).') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('49.  からある  /  からする  /  からの: Ít nhất; đến; những ~', 'Common', '     <b>Công thức:</b> (Số lượng) +  からある /  からする /  からの + N
<br>──────────<br><b>Cách dùng:</b> Dùng sau một con số để nhấn mạnh rằng số lượng đó là rất lớn. (からある: trọng lượng, kích thước;  からする: giá tiền;  からの: số người).
<br>──────────<br><b>Ý nghĩa:</b> Nhấn mạnh số lượng lớn "hơn / ít nhất...".
<br>──────────<br><b>Chú ý:</b> Chỉ dùng với số lượng lớn.
<br>──────────<br><b>Ví dụ:</b>
<br>彼は 100 キロからあるバーベルを持ち上げた。 <br>→ Anh ấy đã nâng được quả tạ nặng đến 100kg.
<br><br>この絵は 500 万円からするそうだ。 <br>→ Bức tranh này nghe nói có giá đến 5 triệu yên.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～も  (<b>N4</b>): "Đến", cũng nhấn mạnh số lượng lớn, nhưng cấu trúc này trang trọng hơn.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('50.  かれ～かれ: Sớm hay muộn; ít nhiều', 'Common', '     <b>Công thức:</b> A-かれ + B-かれ (Thường dùng với  遅かれ早かれ)
<br>──────────<br><b>Cách dùng:</b> Dùng để kết hợp hai tính từ/trạng từ trái ngược, mang ý nghĩa "dù là A hay B thì...", "ít nhiều".
<br>──────────<br><b>Ý nghĩa:</b> Sớm hay muộn; Ít nhiều.
<br>──────────<br><b>Chú ý:</b> Cách nói có phần cổ và hạn chế.
<br>──────────<br><b>Ví dụ:</b>
<br>遅かれ早かれ、真実は明らかになるだろう。 <br>→ Sớm hay muộn thì sự thật cũng sẽ được làm sáng tỏ.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>いつか  (<b>N5</b>): "Một lúc nào đó".') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('51.  かたがた: Nhân tiện; đồng thời; tình cờ; với mục đích ~', 'Common', '     <b>Công thức:</b> N (chỉ hành động/sự kiện) +  かたがた
<br>──────────<br><b>Cách dùng:</b> Diễn tả việc thực hiện một hành động nhân tiện hoặc kết hợp với một mục đích chính khác.
<br>──────────<br><b>Ý nghĩa:</b> Nhân tiện...; Đồng thời cũng là để...
<br>──────────<br><b>Chú ý:</b> Trang trọng hơn  がてら và  ついでに.
<br>──────────<br><b>Ví dụ:</b>
<br>お礼かたがた、ご挨拶に伺います。 <br>→ Tôi đến để chào hỏi, đồng thời cũng là để cảm ơn.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～がてら  (<b>N1</b>): Gần nghĩa, nhưng  かたがた trang trọng hơn.
<br><br>～ついでに  (<b>N3</b>): Phổ biến nhất, ít trang trọng nhất.
<br><br>～を兼ねて  (<b>N1</b>): "Kết hợp", nhấn mạnh hai mục đích.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('52.  かたわら: Trong khi; bên cạnh đó; đồng thời; ngoài ra', 'Common', '     <b>Công thức:</b> N +  の +  かたわら / V-る +  かたわら
<br>──────────<br><b>Cách dùng:</b> Diễn tả việc thực hiện hai hành động quan trọng song song trong một khoảng thời gian nhất định.
<br>──────────<br><b>Ý nghĩa:</b> Vừa làm A (chính), vừa làm B (phụ).
<br>──────────<br><b>Chú ý:</b> Hai hành động thường kéo dài.
<br>──────────<br><b>Ví dụ:</b>
<br>彼は大学で教えるかたわら、小説を書いている。 <br>→ Anh ấy vừa dạy học ở đại học, vừa viết tiểu thuyết.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～ながら  (<b>N4</b>): "Vừa... vừa...", dùng cho hai hành động đồng thời trong khoảnh khắc ngắn.
<br><br>～一方（で）(<b>N2</b>): "Mặt khác", dùng để so sánh hai mặt hoặc hai hành động song song.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('53.  かつて: Đã từng; trước đây; xưa kia', 'Common', '     <b>Công thức:</b>  かつて + V-た /  かつて +  の + N /  かつて～ない
<br>──────────<br><b>Cách dùng:</b> Dùng để chỉ một sự việc, trạng thái đã tồn tại trong quá khứ, nhưng hiện tại không còn nữa.
<br>──────────<br><b>Ý nghĩa:</b> Đã từng; Trước đây.
<br>──────────<br><b>Chú ý:</b> Văn viết.  かつてない = chưa từng có.
<br>──────────<br><b>Ví dụ:</b>
<br>ここはかつて海だったと言われている。 <br>→ Nơi đây được cho là đã từng là biển.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>以前  (<b>N4</b>): "Trước đây".
<br><br>昔  (<b>N5</b>): "Ngày xưa".  かつて trang trọng hơn.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('54.  嫌いがある（きらいがある）: Có tật xấu; có xu hướng ~', 'Common', '     <b>Công thức:</b> V-る / N +  の +  嫌いがある
<br>──────────<br><b>Cách dùng:</b> Dùng để chỉ ra một khuynh hướng, một thói quen không tốt.
<br>──────────<br><b>Ý nghĩa:</b> Có xu hướng (xấu)...; Có tật là...
<br>──────────<br><b>Chú ý:</b> Luôn dùng cho khuynh hướng tiêu cực.
<br>──────────<br><b>Ví dụ:</b>
<br>彼は物事を大げさに言う嫌いがある。 <br>→ Anh ta có tật là hay nói quá mọi chuyện.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～傾向がある  (<b>N2</b>): "Có khuynh hướng", trung lập hơn.
<br><br>～がち  (<b>N3</b>): "Thường hay",  嫌いがある mang tính phê phán mạnh hơn.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('55.  切りがない（きりがない）: Vô tận; không giới hạn; kéo dài mãi; không
có hồi kết ~', 'Common', '     <b>Công thức:</b> V-ば / V-たら +  切りがない / N +  を言い出したら切りがない
<br>──────────<br><b>Cách dùng:</b> Diễn tả rằng nếu cứ tiếp tục làm gì đó thì sẽ không bao giờ kết thúc.
<br>──────────<br><b>Ý nghĩa:</b> ... thì không có hồi kết; ... thì vô tận.
<br>──────────<br><b>Chú ý:</b> Thường dùng để thể hiện sự nản lòng.
<br>──────────<br><b>Ví dụ:</b>
<br>彼の欠点を数え上げれば切りがない。 <br>→ Nếu cứ đếm những khuyết điểm của anh ta thì không biết bao giờ mới hết.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～ばかりだ  (<b>N3</b>): "Cứ...", thường chỉ sự thay đổi theo một hướng.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('56.  きっての: ... nhất trong số ~', 'Common', '     <b>Công thức:</b> (Phạm vi/Nhóm) +  きっての + N (Người/Vật xuất sắc)
<br>──────────<br><b>Cách dùng:</b> Dùng để nhấn mạnh rằng ai đó hoặc cái gì đó là người/vật nổi bật nhất, xuất sắc nhất, hoặc tiêu biểu nhất trong một phạm vi hoặc nhóm cụ thể.
<br>──────────<br><b>Ý nghĩa:</b> ... nhất trong số...; Nổi tiếng nhất...; Hàng đầu...
<br>──────────<br><b>Chú ý:</b> Thường dùng để ca ngợi, đánh giá cao.
<br>──────────<br><b>Ví dụ:</b>
<br>彼は政界きっての実力者だ。 <br>→ Ông ấy là người có thực lực nhất trong giới chính trị.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～の中で一番～  (<b>N5</b>): "Nhất trong số...", là cách nói phổ biến và cơ bản nhất.  きっての mang sắc thái trang trọng hơn và thường dùng cho những người/vật thực sự nổi bật, có tiếng tăm.
<br><br>随一（ずいいち）(<b>N?</b>): "Số một", "đệ nhất", gần nghĩa và cũng trang trọng.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('57.  極まる  /  極まりない（きわまる  /  きわまりない）: Cực kỳ; rất ~', 'Common', '     <b>Công thức:</b>
<br><br>N +  極まる
<br><br>A な +  極まる /  極まりない
<br><br>A い +  こと +  極まりない
<br>──────────<br><b>Cách dùng:</b> Dùng để nhấn mạnh rằng một trạng thái, tình huống, hoặc cảm xúc đang ở mức độ tột cùng.  極まりない thường mang sắc thái tiêu cực hoặc trang trọng hơn.
<br>──────────<br><b>Ý nghĩa:</b> Cực kỳ...; Hết sức...; Vô cùng...
<br>──────────<br><b>Chú ý:</b>  極まる thường dùng cho trạng thái (感極まる - vô cùng cảm động).  極まりない thường dùng cho đánh giá (失礼極まりない - cực kỳ thất lễ).
<br>──────────<br><b>Ví dụ:</b>
<br>感動極まるスピーチだった。 <br>→ Đó là một bài phát biểu vô cùng cảm động.
<br><br>要求を無視するとは、失礼極まりない態度だ。 <br>→ Phớt lờ yêu cầu là một
thái độ cực kỳ thất lễ.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>とても  (<b>N5</b>) /  非常に  (<b>N3</b>): "Rất".  極まる/極まりない nhấn mạnh mức độ cao nhất, tột cùng và trang trọng hơn.
<br><br>～限りだ  (<b>N1</b>): "Vô cùng", thường dùng cho cảm xúc cá nhân.
<br><br>この上ない  (<b>N1</b>): "Không gì hơn", cũng diễn tả mức độ cao nhất.
<br><br>～の至り  (<b>N1</b>) /  ～の極み  (<b>N1</b>): "Tột cùng", thường đi với danh từ.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('58.  こそあれ: Mặc dù; dù cho ~', 'Common', '     <b>Công thức:</b> N / A な +  で +  こそあれ / A く +  こそあれ
<br>──────────<br><b>Cách dùng:</b> Dùng để thừa nhận sự tồn tại của một đặc điểm (vế trước), nhưng đồng thời nhấn mạnh rằng vế sau mới là điều quan trọng hoặc trái ngược.
<br>──────────<br><b>Ý nghĩa:</b> Tuy có... nhưng...
<br>──────────<br><b>Chú ý:</b> Thường dùng trong cấu trúc  「A こそあれ、B ない」 hoặc  「A こそあれ
、B」.
<br>──────────<br><b>Ví dụ:</b>
<br>苦労こそあれ、後悔はしていない。 <br>→ Tuy có vất vả nhưng tôi không hối hận.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～はあっても  (<b>N?</b>): Gần nghĩa.  こそあれ nhấn mạnh hơn vào sự tồn tại của vế trước.
<br><br>～けれども  (<b>N4</b>): "Nhưng".  こそあれ trang trọng hơn.
<br><br>～といえども  (<b>N1</b>): "Dù là", cũng mang tính nhượng bộ, nhưng thường
nhấn mạnh sự tương phản giữa địa vị/trạng thái và hành động/kết quả.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('59.  こそすれ: Và; mặc dù; nhưng ~', 'Common', '     <b>Công thức:</b> V-ます (bỏ  ます) +  こそすれ、～ない
<br>──────────<br><b>Cách dùng:</b> Dùng để nhấn mạnh rằng một hành động hoặc trạng thái chỉ xảy ra (vế trước) chứ tuyệt đối không xảy ra điều ngược lại hoặc điều tiêu cực (vế sau).
<br>──────────<br><b>Ý nghĩa:</b> Chỉ có... chứ không...; Chỉ làm... chứ không...
<br>──────────<br><b>Chú ý:</b> Luôn đi với thể phủ định ở vế sau.
<br>──────────<br><b>Ví dụ:</b>
<br>感謝こそすれ、恨む気持ちなど全くない。 <br>→ Tôi chỉ có lòng biết ơn chứ hoàn toàn không có cảm giác oán hận.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～ばかりか～ない  (<b>N2</b>): "Không những không... mà còn...", có thể dùng để nhấn mạnh sự trái ngược.  こそすれ tập trung vào "chỉ có A, chứ không B".') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('60.  こそ「～が・けれど」: Nhưng; mặc dù (nhấn mạnh)', 'Common', '     <b>Công thức:</b> (Mệnh đề) +  こそ +  が /  けれど、～
<br>──────────<br><b>Cách dùng:</b> Dùng  こそ để nhấn mạnh mệnh đề đứng trước nó, sau đó dùng  が hoặc
けれど để nối với mệnh đề sau, tạo ra ý nghĩa tương phản hoặc bổ sung.
<br>──────────<br><b>Ý nghĩa:</b> Chính là... nhưng...
<br>──────────<br><b>Chú ý:</b>  こそ nhấn mạnh phần được thừa nhận,  が/けれど đưa ra ý tương phản.
<br>──────────<br><b>Ví dụ:</b>
<br>彼の日本語は上手だこそ、が、まだビジネスで使うには難しい点もある。 <br>→ Tiếng Nhật của anh ấy chính là giỏi, nhưng vẫn còn những điểm khó khăn để sử dụng trong kinh doanh.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～が  /  けれど  (<b>N4/N5</b>): Chỉ là liên từ nối. Thêm  こそ để nhấn mạnh vế đầu.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('61.  ことごとく: Hoàn toàn; toàn bộ; tất cả ~', 'Common', '     <b>Công thức:</b>  ことごとく + V /  ことごとく +  の + N
<br>──────────<br><b>Cách dùng:</b> Dùng như một trạng từ để nhấn mạnh rằng tất cả mọi thứ trong một nhóm hoặc phạm vi nào đó đều có chung một đặc điểm hoặc chịu chung một hành động, không có ngoại lệ.
<br>──────────<br><b>Ý nghĩa:</b> Tất cả, toàn bộ (không sót một cái nào).
<br>──────────<br><b>Chú ý:</b> Thường mang sắc thái tiêu cực hoặc nhấn mạnh sự triệt để.
<br>──────────<br><b>Ví dụ:</b>
<br>提出した案はことごとく却下された。 <br>→ Tất cả các phương án tôi đưa ra đều bị bác bỏ.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>全部  (<b>N5</b>) /  すべて  (<b>N4</b>): "Tất cả".  ことごとく mang sắc thái mạnh hơn,
nhấn mạnh sự "không trừ một cái nào" và thường dùng trong văn viết.
<br><br>残らず  (<b>N?</b>): "Không còn sót lại", gần nghĩa.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('62.  ことこの上ない  /  この上ない  /  この上なく: Nhất trong tất cả; tốt
nhất; không gì ... hơn ~', 'Common', '     <b>Công thức:</b> A い / Na な / N +  の +  ことこの上ない /  この上ない /  この上なく + A/Adv
<br>──────────<br><b>Cách dùng:</b> Dùng để diễn tả mức độ cao nhất, không có gì có thể hơn được nữa.
<br>──────────<br><b>Ý nghĩa:</b> ... không gì bằng; ... tột bậc; ... nhất.
<br>──────────<br><b>Chú ý:</b> Là cách nói nhấn mạnh mức độ rất cao.
<br>──────────<br><b>Ví dụ:</b>
<br>晴れ渡った空の下、この上なく気持ちがいい。 <br>→ Dưới bầu trời trong xanh, cảm giác thật dễ chịu không gì bằng.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>最高  (<b>N3</b>): "Tốt nhất", "cao nhất".
<br><br>極まる  /  極まりない  (<b>N1</b>): "Cực kỳ".
<br><br>～限りだ  (<b>N1</b>): "Vô cùng".
<br><br>～の至り  (<b>N1</b>) /  ～の極み  (<b>N1</b>): "Tột cùng".  この上ない nhấn mạnh
"không có gì sánh bằng".') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('63.  こともあって: Một phần vì; cũng vì; cộng thêm lý do ~', 'Common', '     <b>Công thức:</b> (Thể thông thường) +  こともあって、～
<br>──────────<br><b>Cách dùng:</b> Dùng để nêu ra một trong số nhiều lý do dẫn đến kết quả ở vế sau.
<br>──────────<br><b>Ý nghĩa:</b> Cũng một phần là do... nên...
<br>──────────<br><b>Chú ý:</b> Dùng khi có nhiều lý do, hoặc muốn nêu lý do một cách nhẹ nhàng.
<br>──────────<br><b>Ví dụ:</b>
<br>彼は元々体が弱いこともあって、よく病気になる。 <br>→ Cũng một phần vì vốn dĩ sức khỏe yếu, nên anh ấy hay bị bệnh.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～から  /  ～ので  (<b>N5/N4</b>): Chỉ lý do nói chung.
<br><br>～せいもあって  (<b>N?</b>): "Cũng một phần là tại vì" (tiêu cực).
<br><br>～おかげもあって  (<b>N?</b>): "Cũng một phần nhờ" (tích cực).') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('64.  ことなしに: Mà không làm gì đó', 'Common', '     <b>Công thức:</b> V-る +  ことなしに (は)  ～ない /  できない
<br>──────────<br><b>Cách dùng:</b> Diễn tả rằng nếu không thực hiện hành động ở vế trước thì không thể thực hiện hành động/đạt được kết quả ở vế sau.
<br>──────────<br><b>Ý nghĩa:</b> Nếu không... thì không thể...; Không thể... nếu không...
<br>──────────<br><b>Chú ý:</b> Cách nói trang trọng, văn viết.
<br>──────────<br><b>Ví dụ:</b>
<br>努力することなしに、成功は得られない。 <br>→ Nếu không nỗ lực thì không thể có được thành công.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～なければ～ない  (<b>N4</b>): Phổ biến hơn, nghĩa tương tự.
<br><br>～ずに  (<b>N3</b>): "Mà không".  ことなしに thường nhấn mạnh điều kiện hơn.
<br><br>～なしに  (<b>N1</b>): Gần nghĩa, nhưng  ことなしに thường đi với động từ.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('65.  ことのないように: Để không ~', 'Common', '     <b>Công thức:</b> V-る +  ことのないように、～
<br>──────────<br><b>Cách dùng:</b> Dùng để đưa ra lời khuyên, yêu cầu, hoặc thể hiện ý định nhằm mục đích ngăn chặn một việc gì đó (thường là tiêu cực) xảy ra.
<br>──────────<br><b>Ý nghĩa:</b> Để không...; Để tránh...
<br>──────────<br><b>Chú ý:</b> Thường dùng trong các lời dặn dò, quy định.
<br>──────────<br><b>Ví dụ:</b>
<br>同じ失敗を繰り返すことのないように、注意してください。 <br>→ Hãy chú ý để không lặp lại sai lầm tương tự.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～ないように  (<b>N4</b>): Phổ biến hơn, nghĩa tương tự.  ことのないように
trang trọng và nhấn mạnh hơn.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('66.  こととて: Bởi vì; vì ~', 'Common', '     <b>Công thức:</b> (Thể thông thường) +  こととて、～ / N +  の +  こととて、～
<br>──────────<br><b>Cách dùng:</b> Dùng để nêu lý do, thường là những lý do mang tính khách quan, hoàn cảnh đặc biệt, hoặc để biện minh một cách nhẹ nhàng.
<br>──────────<br><b>Ý nghĩa:</b> Bởi vì...; Do là...
<br>──────────<br><b>Chú ý:</b> Cách nói có phần cổ và trang trọng.
<br>──────────<br><b>Ví dụ:</b>
<br>急な話こととて、準備が間に合わなかった。 <br>→ Vì là chuyện gấp nên tôi đã không kịp chuẩn bị.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～から  /  ～ので  (<b>N5/N4</b>): Chỉ lý do thông thường.
<br><br>～もので  /  ～ものだから  (<b>N3</b>): Cũng dùng để biện minh.  こととて cổ
hơn.
<br><br>～ゆえに  (<b>N1</b>): Cũng chỉ lý do trang trọng, nhưng thường mang tính kết luận hơn.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('67.  くらいなら: Thay vì (làm ...) ~', 'Common', '     <b>Công thức:</b> V-る +  くらいなら、～ほうがいい /  ～ほうがましだ / V-たい / V-
よう
<br>──────────<br><b>Cách dùng:</b> Dùng để so sánh hai hành động, và cho rằng thà làm hành động ở vế sau còn hơn là làm hành động ở vế trước.
<br>──────────<br><b>Ý nghĩa:</b> Nếu phải... thì thà... còn hơn.
<br>──────────<br><b>Chú ý:</b> Nhấn mạnh sự không muốn làm hành động ở vế trước.
<br>──────────<br><b>Ví dụ:</b>
<br>あんな人に頭を下げるくらいなら、会社を辞めたほうがましだ。 <br>→ Nếu phải cúi đầu trước người như thế thì thà nghỉ việc còn hơn.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～より～ほうがいい/ましだ  (<b>N5/N1</b>): Cũng dùng để so sánh.  くらいなら
nhấn mạnh sự chán ghét V1.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('68.  くらいのものだ: Chỉ (nhấn mạnh)', 'Common', '     <b>Công thức:</b> N / V-る +  くらいのものだ /  くらいなものだ
<br>──────────<br><b>Cách dùng:</b> Dùng để nhấn mạnh rằng chỉ có N hoặc chỉ có thể làm V là lựa chọn duy nhất, hoặc là người/vật duy nhất.
<br>──────────<br><b>Ý nghĩa:</b> Chỉ có... mà thôi; Chỉ...
<br>──────────<br><b>Chú ý:</b> Thường mang ý nghĩa giới hạn.
<br>──────────<br><b>Ví dụ:</b>
<br>彼を説得できるのは、君くらいのものだ。 <br>→ Người có thể thuyết phục được anh ta chỉ có cậu mà thôi.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～だけだ  (<b>N5</b>): "Chỉ là".  くらいのものだ nhấn mạnh hơn vào tính duy nhất.
<br><br>～しかない  (<b>N4</b>): "Chỉ còn cách", nhấn mạnh sự không có lựa chọn khác.
<br><br>～をおいて～ない  (<b>N1</b>): "Ngoài... ra thì không...", nhấn mạnh sự độc nhất
vô nhị.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('69.  までだ  /  までのことだ: Chỉ; chỉ là; không gì khác', 'Common', '     <b>Công thức:</b> V-る / V-た +  までだ /  までのことだ
<br>──────────<br><b>Cách dùng:</b> Diễn tả rằng hành động đó được làm chỉ vì một lý do đơn giản, hoặc nếu việc không thành thì chỉ cần làm việc khác.
<br>──────────<br><b>Ý nghĩa:</b> Chỉ là... thôi; Nếu... thì chỉ cần... là được.
<br>──────────<br><b>Chú ý:</b> Thể hiện sự quyết tâm hoặc chấp nhận.
<br>──────────<br><b>Ví dụ:</b>
<br>聞かれたから答えたまでだ。 <br>→ Vì được hỏi nên tôi trả lời thôi.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～だけだ  (<b>N5</b>): "Chỉ là".  までだ thường mang thêm sắc thái "không hơn không kém".
<br><br>ただ～のみだ  (<b>N1</b>): "Chỉ... mà thôi", trang trọng hơn.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('70.  までもない  /  までもなく: Không cần phải; không cần thiết phải ~', 'Common', '     <b>Công thức:</b> V-る +  までもない /  までもなく
<br>──────────<br><b>Cách dùng:</b> Dùng để diễn tả rằng một hành động nào đó là không cần thiết vì kết quả đã quá rõ ràng.
<br>──────────<br><b>Ý nghĩa:</b> Không cần phải... (cũng biết/hiểu).
<br>──────────<br><b>Chú ý:</b> Thường dùng với  言う,  聞く,  調べる...
<br>──────────<br><b>Ví dụ:</b>
<br>その結果は言うまでもなく、彼の圧勝だった。 <br>→ Kết quả đó thì không cần nói cũng biết, là chiến thắng áp đảo của anh ấy.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～必要はない  (<b>N4</b>): "Không cần thiết".  までもない nhấn mạnh sự hiển nhiên.
<br><br>～ほどのことではない  (<b>N1</b>): "Không đáng".') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('71.  まじき: Không nên; không được ~', 'Common', '     <b>Công thức:</b> N +  として +  ある +  まじき + N / N +  に +  ある +  まじき + N
<br>──────────<br><b>Cách dùng:</b> Dùng để phê phán mạnh mẽ một hành động là hoàn toàn không thể chấp nhận được, không phù hợp với tư cách, địa vị (<b>N</b>).
<br>──────────<br><b>Ý nghĩa:</b> ... không được phép có/làm (với tư cách là N).
<br>──────────<br><b>Chú ý:</b> Cách nói rất trang trọng và cứng.
<br>──────────<br><b>Ví dụ:</b>
<br>それは教育者としてあるまじき行為だ。 <br>→ Đó là hành vi không được phép có ở một nhà giáo.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～べきではない  (<b>N3</b>): "Không nên", nhẹ hơn.
<br><br>～として許されない  (<b>N?</b>): "Không thể tha thứ với tư cách là".') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('72.  まくる: Làm đi làm lại; làm không ngừng', 'Common', '     <b>Công thức:</b> V-ます (bỏ  ます) +  まくる
<br>──────────<br><b>Cách dùng:</b> Diễn tả việc thực hiện một hành động lặp đi lặp lại, liên tục, với mức độ hoặc cường độ lớn.
<br>──────────<br><b>Ý nghĩa:</b> ... liên tục; ... không ngừng; ... tới tấp.
<br>──────────<br><b>Chú ý:</b> Thường dùng trong văn nói.
<br>──────────<br><b>Ví dụ:</b>
<br>彼は一日中ゲームをやりまくっている。 <br>→ Cậu ta chơi game liên tục cả ngày.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～続ける  (<b>N4</b>): "Tiếp tục làm".  まくる nhấn mạnh cường độ và sự lặp lại nhiều lần.
<br><br>～放題  (<b>N1</b>): "Làm thỏa thích".  まくる nhấn mạnh sự lặp lại và cường độ.
<br><br>～通す  (<b>N2</b>): "Làm cho đến cùng".') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('73.  まみれ: Phủ đầy; dính; bám đầy ~', 'Common', '     <b>Công thức:</b> N +  まみれ
<br>──────────<br><b>Cách dùng:</b> Diễn tả rằng bề mặt bị bao phủ, dính đầy bởi một thứ gì đó (thường là bẩn).
<br>──────────<br><b>Ý nghĩa:</b> Dính đầy...; Phủ đầy...
<br>──────────<br><b>Chú ý:</b> Thường dùng với  血,  泥,  汗,  ほこり...
<br>──────────<br><b>Ví dụ:</b>
<br>子供たちは泥まみれになって遊んでいた。 <br>→ Bọn trẻ chơi đùa dính đầy bùn đất.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～だらけ  (<b>N3</b>): "Toàn là" (tiêu cực), nhấn mạnh số lượng nhiều, có thể dùng cho trừu tượng.  まみれ thường dùng cho chất bẩn bao phủ bề mặt.
<br><br>～ずくめ  (<b>N1</b>): "Toàn là" (đồng nhất).') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('74.  まるっきり: Hoàn toàn; tuyệt đối; (không) chút nào ~', 'Common', '     <b>Công thức:</b>  まるっきり +  ～ない /  ～だ /  ～のようだ
<br>──────────<br><b>Cách dùng:</b> Dùng như một trạng từ để nhấn mạnh sự hoàn toàn, tuyệt đối.
<br>──────────<br><b>Ý nghĩa:</b> Hoàn toàn...; Giống hệt...
<br>──────────<br><b>Chú ý:</b> Cách nói có phần suồng sã.
<br>──────────<br><b>Ví dụ:</b>
<br>彼の話はまるっきり嘘だった。 <br>→ Câu chuyện của anh ta hoàn toàn là dối trá.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>全く  (<b>N4</b>) /  全然  (<b>N5</b>): "Hoàn toàn", phổ biến hơn.
<br><br>すっかり  (<b>N3</b>): "Hoàn toàn" (thường dùng cho sự thay đổi trạng thái).') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('75.  めく: Có vẻ; có dấu hiệu; có vẻ ngoài ~', 'Common', '     <b>Công thức:</b> N +  めく /  めいて /  めいた + N
<br>──────────<br><b>Cách dùng:</b> Gắn vào sau danh từ để tạo động từ/tính từ, diễn tả rằng cái gì đó bắt đầu có vẻ, có dấu hiệu, hoặc mang không khí của N.
<br>──────────<br><b>Ý nghĩa:</b> Có vẻ...; Ra dáng...; Mang màu sắc...
<br>──────────<br><b>Chú ý:</b> Thường dùng với danh từ chỉ mùa, màu sắc, hoặc khái niệm trừu tượng (春めく,  謎めく).
<br>──────────<br><b>Ví dụ:</b>
<br>最近、少しずつ春めいてきた。 <br>→ Gần đây, trời đã dần dần có vẻ xuân.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～びる  (<b>N1</b>): "Trông như", thường dùng với danh từ cụ thể hơn.
<br><br>～っぽい  (<b>N3/N2</b>): "Có vẻ", nhưng  めく thường trang trọng hơn và dùng
với danh từ trừu tượng hoặc chỉ sự thay đổi tinh tế.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('76.  も同然だ（もどうぜんだ）: Giống hệt; như là ~', 'Common', '     <b>Công thức:</b> N +  も同然だ / V-た +  も同然だ
<br>──────────<br><b>Cách dùng:</b> Diễn tả rằng mặc dù không hoàn toàn giống 100%, nhưng tình trạng hoặc bản chất của sự việc gần như là giống hệt, có thể coi là như vậy.
<br>──────────<br><b>Ý nghĩa:</b> Coi như là...; Gần như là...; Giống như là...
<br>──────────<br><b>Chú ý:</b> Thường dùng để nhấn mạnh sự tương đồng gần như tuyệt đối.
<br>──────────<br><b>Ví dụ:</b>
<br>この中古車は新品も同然だ。 <br>→ Chiếc xe cũ này coi như là xe mới.
<br><br>契約にサインしたのだから、もう買ったも同然だ。 <br>→ Vì đã ký hợp đồng
rồi nên coi như là đã mua rồi.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～のようだ  (<b>N4</b>): "Giống như", dùng để ví von thông thường.  も同然だ
nhấn mạnh sự tương đồng về mặt bản chất hoặc kết quả, "coi như là".
<br><br>～と同じだ  (<b>N5</b>): "Giống hệt".  も同然だ có thể dùng khi không hoàn toàn giống 100% nhưng có thể xem là như vậy.
<br><br>～も同じ  (<b>N?</b>): "Cũng giống như vậy".') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('77.  もさることながら: Đã đành, nhưng~; không chỉ... mà còn ~', 'Common', '     <b>Công thức:</b> N +  もさることながら、～
<br>──────────<br><b>Cách dùng:</b> Dùng để thừa nhận rằng N (vế trước) là quan trọng/đáng chú ý/đúng, nhưng đồng thời nhấn mạnh rằng vế sau còn quan trọng/đáng chú ý hơn nữa.
<br>──────────<br><b>Ý nghĩa:</b> A là đương nhiên rồi, nhưng B còn hơn thế...; Không chỉ A, mà B cũng...
<br>──────────<br><b>Chú ý:</b> Nhấn mạnh vế sau hơn vế trước.
<br>──────────<br><b>Ví dụ:</b>
<br>デザインもさることながら、機能性も優れている。 <br>→ Thiết kế đã đành (rất tốt), nhưng tính năng cũng rất ưu việt.
<br><br>味もさることながら、この店の雰囲気は最高だ。 <br>→ Mùi vị đã đành (rất ngon), nhưng bầu không khí của quán này mới là tuyệt nhất.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～だけでなく～も  (<b>N3</b>): "Không chỉ... mà còn...", phổ biến hơn, dùng để liệt kê song song.  もさることながら có sắc thái "A là đương nhiên rồi, B còn hơn thế".
<br><br>～はもちろん～も  (<b>N3</b>): "A là đương nhiên, B cũng...", gần nghĩa, nhưng
もさることながら thường mang tính đánh giá cao cả hai vế.
<br><br>～上に  (<b>N2</b>): "Thêm vào đó", "hơn nữa", dùng để bổ sung thêm thông tin cùng chiều.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('78.  もしないで: Ngay cả ~ cũng không làm', 'Common', '     <b>Công thức:</b> V-ます (bỏ  ます) +  もしないで
<br>──────────<br><b>Cách dùng:</b> Dùng để phê phán hoặc thể hiện sự ngạc nhiên về việc ai đó ngay cả một hành động tối thiểu hoặc cần thiết cũng không làm.
<br>──────────<br><b>Ý nghĩa:</b> Đến cả... cũng không làm.
<br>──────────<br><b>Chú ý:</b> Nhấn mạnh sự thiếu sót, sự bỏ qua một hành động đáng lẽ nên làm.
<br>──────────<br><b>Ví dụ:</b>
<br>彼は挨拶もしないで部屋に入ってきた。 <br>→ Anh ta vào phòng mà đến cả chào hỏi cũng không.
<br><br>よく確かめもしないで、高価なものを買ってしまった。 <br>→ Tôi đã mua đồ đắt tiền mà chẳng thèm kiểm tra kỹ lưỡng gì cả.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～ないで  (<b>N4</b>): "Mà không", chỉ đơn thuần là không làm.  もしないで nhấn mạnh sự phê phán "đến cả... cũng không".
<br><br>～ずに  (<b>N3</b>): Tương tự  ～ないで nhưng trang trọng hơn.
<br><br>～ことなしに  (<b>N1</b>): "Mà không...", trang trọng hơn, thường dùng trong văn
viết.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('79.  もはや: Đã; bây giờ; không còn nữa', 'Common', '     <b>Công thức:</b>  もはや +  ～ない /  ～だ /  ～V-てしまった
<br>──────────<br><b>Cách dùng:</b> Dùng để diễn tả rằng một tình trạng nào đó đã thay đổi và không còn như trước nữa, hoặc một sự việc đã xảy ra và không thể đảo ngược được nữa.
<br>──────────<br><b>Ý nghĩa:</b> Giờ thì đã...; Không còn... nữa.
<br>──────────<br><b>Chú ý:</b> Thường đi với phủ định (もはや～ない - không còn nữa) hoặc thể hiện sự việc đã rồi. Mang sắc thái trang trọng, văn viết.
<br>──────────<br><b>Ví dụ:</b>
<br>彼が助かる見込みは、もはやない。 <br>→ Hy vọng anh ấy qua khỏi giờ đã không còn nữa.
<br><br>もはや手遅れだ。 <br>→ Giờ thì đã quá muộn rồi.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>もう  (<b>N5</b>): "Đã", "rồi", phổ biến hơn.  もはや trang trọng hơn và thường nhấn mạnh sự kết thúc, không thể thay đổi.
<br><br>すでに  (<b>N3</b>): "Đã", nhấn mạnh sự việc đã hoàn thành.  もはや nhấn mạnh sự thay đổi trạng thái đến mức không thể quay lại.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('80.  もので: Bởi vì; vì lý do đó', 'Common', '     <b>Công thức:</b> (Thể thông thường) +  もので /  ものですから
<br>──────────<br><b>Cách dùng:</b> Dùng để nêu lý do, thường là những lý do mang tính cá nhân, hoàn cảnh, để biện minh hoặc giải thích một cách mềm mỏng, lịch sự.
<br>──────────<br><b>Ý nghĩa:</b> Bởi vì... (dùng để giải thích, biện minh).
<br>──────────<br><b>Chú ý:</b> Thường dùng trong văn nói, mang tính lịch sự, đôi khi là để xin lỗi hoặc biện hộ.  ものですから lịch sự hơn.
<br>──────────<br><b>Ví dụ:</b>
<br>事故があったもので、遅れてしまいました。申し訳ありません。 <br>→ Vì có tai nạn nên tôi đã đến muộn. Xin lỗi anh/chị.
<br><br>まだ新入社員なものですから、わからないことばかりです。 <br>→ Vì còn là nhân viên mới nên tôi có nhiều điều chưa biết.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～から  /  ～ので  (<b>N5/N4</b>): Chỉ lý do thông thường.  もので/ものだから
mang sắc thái biện minh, giải thích nhẹ nhàng, lịch sự hơn.
<br><br>～もの  (<b>N3</b>): Cũng chỉ lý do, nhưng thường dùng trong văn nói thân mật, đặc biệt là phụ nữ và trẻ em, hoặc khi phàn nàn "tại vì (con nít mà/con gái mà...)".
<br><br>～こととて  (<b>N1</b>): "Bởi vì", trang trọng và có phần cổ hơn, thường dùng cho lý do mang tính hoàn cảnh đặc biệt.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('81.  ものを: Giá mà; ước gì; tiếc là không phải (hối tiếc)', 'Common', '     <b>Công thức:</b> (Thể thông thường) +  ものを、～
<br>──────────<br><b>Cách dùng:</b> Dùng ở cuối mệnh đề thứ nhất để diễn tả sự không hài lòng, tiếc nuối, hoặc trách móc về việc lẽ ra nên có một kết quả tốt hơn (hoặc khác đi) nhưng thực tế lại không như vậy.
<br>──────────<br><b>Ý nghĩa:</b> Giá mà... thì đã... (vậy mà...); Lẽ ra... thì... (tiếc là...).
<br>──────────<br><b>Chú ý:</b> Vế sau thường là kết quả không mong muốn hoặc trái ngược. Mang sắc thái tiếc nuối, bất mãn.
<br>──────────<br><b>Ví dụ:</b>
<br>早く言えば手伝ってあげたものを、今言われても無理だよ。 <br>→ Giá mà cậu nói sớm thì tôi đã giúp rồi, bây giờ mới nói thì chịu thôi.
<br><br>知っていれば教えてあげたものを。 <br>→ Nếu mà tôi biết thì tôi đã chỉ cho rồi (tiếc là không biết).
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～のに  (<b>N4</b>): Cũng diễn tả sự tiếc nuối, tương phản, nhưng  ものを mang sắc thái bất mãn hoặc trách móc mạnh hơn và thường là điều đã qua không thể thay đổi.
<br><br>～だろうに  (<b>N1</b>): Cũng diễn tả sự tiếc nuối, nhưng thường bao hàm cả sự suy đoán về điều kiện ở vế trước.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('82.  ものと思われる  /  ものと見られる: Được cho là; được giả định là; được
tin/mong đợi là ~', 'Common', '     <b>Công thức:</b> (Thể thông thường) +  ものと思われる /  ものと見られる
<br>──────────<br><b>Cách dùng:</b> Dùng để đưa ra phán đoán, suy luận một cách khách quan, thường dựa trên các bằng chứng hoặc thông tin có sẵn. Thường dùng trong tin tức, báo cáo.
<br>──────────<br><b>Ý nghĩa:</b> Được cho là...; Được xem là...; Có lẽ là...
<br>──────────<br><b>Chú ý:</b> Cách nói trang trọng, mang tính khách quan.
<br>──────────<br><b>Ví dụ:</b>
<br>犯人はすでに海外へ逃亡したものと思われる。 <br>→ Kẻ tình nghi được cho là đã bỏ trốn ra nước ngoài.
<br><br>今後、この地域ではさらに雨が強まるものと見られる。 <br>→ Được dự đoán là từ giờ trở đi, mưa ở khu vực này sẽ còn mạnh hơn.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～だろう  (<b>N4</b>): "Có lẽ", suy đoán thông thường. Cấu trúc này trang trọng và khách quan hơn, dựa trên cơ sở nào đó.
<br><br>～ようだ  /  ～そうだ  (<b>N4</b>): "Có vẻ", "nghe nói", dựa trên cảm nhận hoặc thông tin nghe được. Cấu trúc này thường dựa trên phân tích, dữ liệu.
<br><br>～とされる  (<b>N1</b>): "Được coi là", "người ta nói rằng", rất gần nghĩa và cũng
mang tính khách quan, trang trọng.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('83.  ものとする: Sẽ; giả định là; được hiểu là ~', 'Common', '     <b>Công thức:</b> V-る / N +  である +  ものとする
<br>──────────<br><b>Cách dùng:</b> Dùng trong các văn bản quy định, hợp đồng, luật lệ để quy định hoặc giả định một điều gì đó là đúng hoặc sẽ được thực hiện.
<br>──────────<br><b>Ý nghĩa:</b> Sẽ được coi là...; Sẽ...
<br>──────────<br><b>Chú ý:</b> Cách nói rất trang trọng, dùng trong văn bản chính thức, mang tính quy định.
<br>──────────<br><b>Ví dụ:</b>
<br>契約期間は一年ものとする。 <br>→ Thời hạn hợp đồng sẽ là một năm.
<br><br>提出された書類は返却しないものとする。 <br>→ Các tài liệu đã nộp sẽ không
được hoàn trả.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～ことにする  (<b>N4</b>): "Quyết định là", thường dùng cho quyết định cá nhân.
ものとする dùng cho quy định chung, có tính ràng buộc.
<br><br>～ことになっている  (<b>N3</b>): "Được quy định là", "theo lệ là", chỉ quy tắc đã có sẵn.  ものとする thường dùng để đặt ra quy định mới.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('84.  ものとして: Giả định là; cho là; với giả định rằng ~', 'Common', '     <b>Công thức:</b> (Thể thông thường) +  ものとして、～
<br>──────────<br><b>Cách dùng:</b> Dùng để đưa ra một giả định hoặc coi một điều gì đó là sự thật để làm tiền đề cho hành động hoặc suy luận ở vế sau.
<br>──────────<br><b>Ý nghĩa:</b> Coi như là...; Giả định rằng...
<br>──────────<br><b>Chú ý:</b> Thường dùng khi muốn tiếp tục một hành động/suy nghĩ dựa trên một giả định nào đó, dù giả định đó có thể chưa chắc chắn.
<br>──────────<br><b>Ví dụ:</b>
<br>彼は会議に出席するものとして、準備を進めてください。 <br>→ Hãy tiến hành chuẩn bị với giả định rằng anh ấy sẽ tham dự cuộc họp.
<br><br>説明はすでに聞いたものとして、次の議題に移ります。 <br>→ Coi như là mọi người đã nghe giải thích, chúng ta sẽ chuyển sang chủ đề tiếp theo.
<br>──────────<br><b>So sánh:</b>
<br>～と仮定して  (<b>N?</b>): "Giả sử là", gần nghĩa, nhưng  ものとして thường dùng khi giả định đó có khả năng cao hơn hoặc được chấp nhận tạm thời để tiến hành việc khác.
<br><br>～という前提で  (<b>N1</b>): "Với tiền đề là", gần như đồng nghĩa và cũng trang trọng.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('85.  もしくは: Hoặc; nếu không thì', 'Common', '     <b>Công thức:</b> A  もしくは B
<br>──────────<br><b>Cách dùng:</b> Dùng để nối hai danh từ, cụm từ hoặc mệnh đề, đưa ra sự lựa chọn giữa hai hoặc nhiều khả năng.
<br>──────────<br><b>Ý nghĩa:</b> Hoặc là...; Hay là...
<br>──────────<br><b>Chú ý:</b> Cách nói trang trọng, thường dùng trong văn viết, thông báo, hoặc các tình huống chính thức.
<br>──────────<br><b>Ví dụ:</b>
<br>申し込みは、郵送もしくは窓口で受け付けます。 <br>→ Việc đăng ký được tiếp nhận qua đường bưu điện hoặc tại quầy.
<br><br>本人もしくは代理人が手続きを行ってください。 <br>→ Chính chủ hoặc người đại diện hãy thực hiện thủ tục.
<br>──────────<br><b>So sánh:</b>
<br>または  (<b>N3</b>): "Hoặc là", trang trọng, gần nghĩa nhất.
<br><br>あるいは  (<b>N2</b>): "Hoặc là", cũng trang trọng.
<br><br>か  (<b>N5</b>): "Hoặc", dùng phổ biến nhất, ít trang trọng nhất.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('86.  んばかりに: Như thể; như là ~', 'Common', '     <b>Công thức:</b> V-ない (bỏ  ない) +  んばかりに /  んばかりの + N (する ->  せんばかりに)
<br>──────────<br><b>Cách dùng:</b> Dùng để ví von, diễn tả rằng một hành động hoặc trạng thái trông gần như sắp xảy ra hoặc như thể muốn làm điều gì đó, mặc dù thực tế có thể không phải vậy.
<br>──────────<br><b>Ý nghĩa:</b> Như thể muốn...; Gần như...
<br>──────────<br><b>Chú ý:</b> Không dùng cho hành động của chính người nói. Nhấn mạnh mức độ cực đoan của hành động/trạng thái, rất sát với việc xảy ra.
<br>──────────<br><b>Ví dụ:</b>
<br>彼は「出て行け」と言わんばかりに、ドアを指さした。 <br>→ Anh ta chỉ tay ra cửa như thể muốn nói "Đi ra đi".
<br><br>彼女は喜びで飛び上がらんばかりだった。 <br>→ Cô ấy trông như thể sắp nhảy cẫng lên vì sung sướng.
<br>──────────<br><b>So sánh:</b>
<br>～ように  (<b>N4</b>): "Giống như", cách ví von thông thường.  んばかりに nhấn mạnh mức độ cao, "gần như", "sắp sửa".
<br><br>～かのように  (<b>N2</b>): "Cứ như thể là", gần nghĩa, nhưng  んばかりに thường đi với động từ thể hiện hành động hoặc trạng thái sắp xảy ra, rất mạnh mẽ.
<br><br>～とばかりに  (<b>N1</b>): "Như thể muốn nói", tập trung vào việc diễn đạt ý nghĩ.
んばかりに tập trung vào trạng thái/hành động "gần như".') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('87.  んがために: Để ~', 'Common', '     <b>Công thức:</b> V-ない (bỏ  ない) +  んがために (は) /  んがための + N (する ->  せんがために)
<br>──────────<br><b>Cách dùng:</b> Dùng để diễn tả một mục đích rất lớn lao, quan trọng mà người thực hiện hành động quyết tâm đạt được.
<br>──────────<br><b>Ý nghĩa:</b> Để...; Với mục đích... (nhấn mạnh mục đích lớn, sự nỗ lực lớn).
<br>──────────<br><b>Chú ý:</b> Cách nói trang trọng, có phần cổ, thường dùng trong văn viết hoặc diễn văn. Vế sau không thể là câu mệnh lệnh, nhờ vả.
<br>──────────<br><b>Ví dụ:</b>
<br>彼は夢を実現せんがために、故郷を離れた。 <br>→ Anh ấy đã rời quê hương để thực hiện ước mơ.
<br><br>一命を救わんがための必死の措置だった。 <br>→ Đó là biện pháp liều mình để cứu một mạng người.
<br>──────────<br><b>So sánh:</b>
<br>～ために  (<b>N4</b>): "Để", phổ biến nhất.  んがために nhấn mạnh mục đích lớn lao, sự hy sinh và trang trọng hơn.
<br><br>～べく  (<b>N1</b>): "Để", cũng trang trọng, nhưng  んがために mang sắc thái mạnh mẽ, quyết tâm và có phần văn chương hơn.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('88.  ながらに  /  ながらの: Trong khi; trong lúc; không thay đổi; được thực
hiện trong tình trạng này', 'Common', '     <b>Công thức:</b> V-ます (bỏ  ます) / N +  ながらに /  ながらの
<br>──────────<br><b>Cách dùng:</b> Dùng để diễn tả một hành động hoặc trạng thái diễn ra trong một tình trạng hoặc hoàn cảnh nhất định, hoặc một trạng thái tồn tại từ khi sinh ra, không thay đổi.
<br>──────────<br><b>Ý nghĩa:</b> Trong khi vẫn...; Với...; Bẩm sinh...; Vẫn giữ nguyên...
<br>──────────<br><b>Chú ý:</b> Thường dùng với các từ hạn chế (居ながらに - trong khi ngồi,  涙ながらに
- trong nước mắt,  生まれながらに - bẩm sinh,  昔ながらの - như ngày xưa).
<br>──────────<br><b>Ví dụ:</b>
<br>彼女は涙ながらに別れを告げた。 <br>→ Cô ấy nói lời chia tay trong nước mắt.
<br><br>ここは昔ながらの風景が残っている。 <br>→ Nơi đây vẫn còn lưu giữ phong
cảnh như ngày xưa.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～ながら  (<b>N4</b>): "Vừa... vừa...", thường dùng cho hai hành động đồng thời do một chủ thể thực hiện.  ながらに/ながらの thường chỉ trạng thái cố hữu hoặc hành động đi kèm trạng thái đó.
<br><br>～まま  (<b>N4</b>): "Cứ để nguyên", chỉ trạng thái không thay đổi, nhưng  ながらの thường dùng với những thứ mang tính truyền thống hoặc bẩm sinh.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('89.  ないまでも: Chưa đến mức; dù không đạt đến mức ~', 'Common', '     <b>Công thức:</b> V-ない +  までも
<br>──────────<br><b>Cách dùng:</b> Diễn tả rằng dù không đạt đến mức độ lý tưởng hoặc mức độ cao nhất (V), nhưng ít nhất cũng đạt được một mức độ thấp hơn hoặc một trạng thái nào đó có thể chấp nhận được.
<br>──────────<br><b>Ý nghĩa:</b> Dù không... thì ít nhất cũng...; Không đến mức... nhưng cũng...
<br>──────────<br><b>Chú ý:</b> Dùng để thể hiện sự nhượng bộ hoặc một mức độ tối thiểu chấp nhận được.
<br>──────────<br><b>Ví dụ:</b>
<br>満点は取れないまでも、合格点は取りたい。 <br>→ Dù không đạt được điểm tối đa thì ít nhất cũng muốn đạt điểm đỗ.
<br><br>毎日とは言わないまでも、週に 2、3 回は運動すべきだ。 <br>→ Dù không nói là mỗi ngày, nhưng ít nhất cũng nên vận động 2, 3 lần một tuần.
<br>──────────<br><b>So sánh:</b>
<br>せめて  (<b>N3</b>): "Ít nhất thì", thường đứng đầu câu.  ないまでも là một phần của cấu trúc câu, diễn tả sự nhượng bộ về mức độ.
<br><br>～とは言わないが  (<b>N?</b>): "Không nói là...", gần nghĩa khi dùng với V-ないまでも.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('90.  ないものでもない: Không phải là hoàn toàn không thể', 'Common', '     <b>Công thức:</b> V-ない (thể khả năng) +  ものでもない / V-ない +  こともない
<br>──────────<br><b>Cách dùng:</b> Dùng để diễn tả rằng mặc dù có chút khó khăn hoặc không hoàn toàn chắc chắn, nhưng vẫn có một chút khả năng có thể thực hiện được, không phải là hoàn toàn không thể. Là cách nói phủ định hai lần để thể hiện sự khẳng định yếu.
<br>──────────<br><b>Ý nghĩa:</b> Không phải là không...; Cũng có thể... (nếu có điều kiện).
<br>──────────<br><b>Chú ý:</b> Là cách nói vòng vo, thể hiện khả năng nhưng không chắc chắn, thường ngầm chỉ cần có điều kiện nào đó.
<br>──────────<br><b>Ví dụ:</b>
<br>条件によっては、引き受けないものでもない。 <br>→ Tùy vào điều kiện, không phải là tôi không thể nhận lời. (Tức là nếu điều kiện tốt thì có thể nhận)
<br><br>頑張れば、できないこともないだろう。 <br>→ Nếu cố gắng thì có lẽ không phải là không làm được.
<br>──────────<br><b>So sánh:</b>
<br>～かもしれない  (<b>N4</b>): "Có lẽ", thể hiện khả năng nói chung.  ないものでもない nhấn mạnh "không phải là không thể", thường kèm theo điều kiện ngầm.
<br><br>～可能性がある  (<b>N1</b>): "Có khả năng", khách quan hơn.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('91.  ないものか  /  ないものだろうか: Không có sao; chúng ta không thể…?;
tôi không thể…?', 'Common', '     <b>Công thức:</b> V-ない / V-れる (thể khả năng) +  ものか /  ものだろうか
<br>──────────<br><b>Cách dùng:</b> Dùng để diễn tả một mong muốn mạnh mẽ rằng một điều gì đó (thường là khó khăn) có thể xảy ra hoặc có thể thực hiện được, dù biết là khó.
<br>──────────<br><b>Ý nghĩa:</b> Liệu có thể... không?; Ước gì có thể...; Mong sao...
<br>──────────<br><b>Chú ý:</b> Thể hiện sự mong mỏi, hy vọng mạnh mẽ, đôi khi là trong tình huống khó khăn, tìm kiếm giải pháp.
<br>──────────<br><b>Ví dụ:</b>
<br>どうにかして、この病気を治す方法はないものだろうか。 <br>→ Liệu có cách nào chữa khỏi căn bệnh này không nhỉ?
<br><br>もう少し安くならないものかと交渉してみた。 <br>→ Tôi đã thử thương lượng xem liệu có thể rẻ hơn chút nữa không.
<br>──────────<br><b>So sánh:</b>
<br>～たい  (<b>N5</b>): "Muốn", thể hiện mong muốn thông thường.  ないものか thể hiện mong muốn mạnh mẽ hơn đối với những điều khó khăn, như một lời cầu nguyện.
<br><br>～といいな  (<b>N4</b>): "Giá mà...", cũng thể hiện mong ước.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('92.  ないとも限らない（ないともかぎらない）: Không hẳn là không;
không thể nói rằng không; có lẽ; có thể ~', 'Common', '     <b>Công thức:</b> (Thể thông thường phủ định) +  とも限らない / (Thể thông thường khẳng định) +  とは限らない
<br>──────────<br><b>Cách dùng:</b> Dùng để diễn tả rằng không thể khẳng định chắc chắn 100% một điều gì đó (đặc biệt là phủ định). Luôn có một khả năng (dù nhỏ) rằng điều ngược lại có thể xảy ra.
<br>──────────<br><b>Ý nghĩa:</b> Chưa chắc đã không...; Cũng có thể là...; Không hẳn là...
<br>──────────<br><b>Chú ý:</b> Phủ định lại một khẳng định/phủ định chắc chắn.
<br>──────────<br><b>Ví dụ:</b>
<br>必ずしも成功するとは限らないが、失敗するとも限らない。 <br>→ Không hẳn là sẽ thành công, nhưng cũng chưa chắc đã thất bại. (Không phải là không có khả năng thất bại)
<br><br>安いからといって、品質が悪いとは限らない。 <br>→ Không thể nói rằng vì rẻ mà chất lượng xấu. (Tức là rẻ cũng có thể tốt)
<br>──────────<br><b>So sánh:</b>
<br>～とは限らない  (<b>N3</b>): "Không hẳn là", thường dùng để phủ định một điều thường được cho là đúng.  ないとも限らない dùng để phủ định một điều phủ định (chưa chắc đã không...).
<br><br>～かもしれない  (<b>N4</b>): "Có lẽ", chỉ khả năng nói chung.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('93.  なくしては: Không thể làm nếu không có ~', 'Common', '     <b>Công thức:</b> N +  なくしては +  ～ない /  できない
<br>──────────<br><b>Cách dùng:</b> Dùng để nhấn mạnh rằng N là điều kiện tuyệt đối cần thiết, không thể thiếu để thực hiện hoặc đạt được điều gì đó ở vế sau.
<br>──────────<br><b>Ý nghĩa:</b> Nếu không có N thì không thể...
<br>──────────<br><b>Chú ý:</b> Nhấn mạnh tầm quan trọng của N. Cách nói trang trọng.
<br>──────────<br><b>Ví dụ:</b>
<br>皆様の協力なくしては、このプロジェクトは成功しなかっただろう。
- Nếu không có sự hợp tác của mọi người thì dự án này đã không thể thành công.
<br><br>努力なくしては、夢は実現できない。 <br>→ Nếu không có nỗ lực thì không
thể thực hiện ước mơ.
<br>──────────<br><b>So sánh:</b>
<br>～がなければ  (<b>N4</b>): "Nếu không có", phổ biến hơn.  なくしては trang trọng và nhấn mạnh hơn vào tính thiết yếu.
<br><br>～なしでは  (<b>N3</b>): Gần nghĩa, nhưng  なくしては thường dùng trong văn viết và tình huống trang trọng hơn, nhấn mạnh hơn.
<br><br>～ことなしに(は)～ない  (<b>N1</b>): Cũng có nghĩa "nếu không... thì không...", nhưng thường đi với động từ.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('94.  並み（なみ）: Trung bình; bình thường; ngang bằng; tương đương ~', 'Common', '     <b>Công thức:</b> N +  並み /  並みの + N
<br>──────────<br><b>Cách dùng:</b>
<br>Diễn tả mức độ, khả năng, hoặc kích thước tương đương với N (N thường là tiêu chuẩn hoặc mức độ cao).
<br><br>Diễn tả mức độ trung bình, thông thường.
<br>──────────<br><b>Ý nghĩa:</b> Ngang với...; Cỡ như...; Bình thường.
<br>──────────<br><b>Chú ý:</b> Có thể mang nghĩa "ngang với mức cao" (プロ並み - ngang dân chuyên nghiệp) hoặc "mức trung bình" (人並み - như người bình thường).
<br>──────────<br><b>Ví dụ:</b>
<br>彼はまだ子供だが、大人並みの知識を持っている。 <br>→ Cậu bé tuy còn nhỏ nhưng có kiến thức ngang người lớn.
<br><br>人並みの生活がしたい。 <br>→ Tôi muốn có một cuộc sống bình thường như mọi người.
<br>──────────<br><b>So sánh:</b>
<br>～くらい  /  ～ぐらい  (<b>N5</b>): "Khoảng", "cỡ".  並み thường nhấn mạnh sự tương đương về cấp độ, trình độ, hoặc tiêu chuẩn.
<br><br>普通  (<b>N5</b>): "Bình thường".  人並み là một cách nói khác.
<br><br>～同様  (<b>N2</b>): "Tương tự", "giống như".') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('95.  なんという  /  なんと  /  なんて: Thật (đẹp, v.v.); thật là ~', 'Common', '     <b>Công thức:</b>  なんという + N + (だろう/ことだろう) /  なんと + A/Na + (だろう/
ことだろう) /  なんて + A/Na/N + (なんだ/だろう/ことだろう)
<br>──────────<br><b>Cách dùng:</b> Dùng để diễn tả sự ngạc nhiên, cảm thán, hoặc xúc động mạnh mẽ của người nói về một sự việc, tình trạng, hoặc đặc điểm nào đó.
<br>──────────<br><b>Ý nghĩa:</b> Thật là...!; Quả là...!
<br>──────────<br><b>Chú ý:</b> Là cấu trúc cảm thán.  なんて thường dùng trong văn nói và suồng sã hơn.
<br>──────────<br><b>Ví dụ:</b>
<br>なんと美しい景色だろう。 <br>→ Thật là một cảnh sắc tươi đẹp!
<br><br>なんてひどい話なんだ。 <br>→ Quả là một câu chuyện tồi tệ!
<br><br>なんという偶然でしょう。 <br>→ Thật là một sự trùng hợp ngẫu nhiên!
<br>──────────<br><b>So sánh:</b>
<br>とても  (<b>N5</b>): "Rất". Cấu trúc này dùng để cảm thán, nhấn mạnh cảm xúc.
<br><br>本当に  (<b>N5</b>): "Thật sự".') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('96.  何しろ（なにしろ）: Dù sao đi nữa; rốt cuộc; dù sao; bởi vì; như bạn
biết ~', 'Common', '     <b>Công thức:</b>  何しろ、～ / (Mệnh đề) +  何しろ + (Mệnh đề giải thích)
<br>──────────<br><b>Cách dùng:</b> Dùng để nhấn mạnh một lý do chính, một sự thật không thể chối cãi, hoặc một đặc điểm nổi bật nhất để giải thích cho tình huống hoặc ý kiến được nêu ra.
<br>──────────<br><b>Ý nghĩa:</b> Dù sao thì cũng...; Nói gì thì nói...; Bởi vì... (nhấn mạnh lý do chính).
<br>──────────<br><b>Chú ý:</b> Thường dùng để đưa ra lý do hiển nhiên hoặc quan trọng nhất.
<br>──────────<br><b>Ví dụ:</b>
<br>今年の夏は暑かった。何しろ、40 度を超えた日が何日もあったのだから。 <br>→ Mùa hè năm nay nóng thật. Nói gì thì nói, cũng có mấy ngày nhiệt độ vượt quá 40 độ cơ mà.
<br><br>彼女が人気があるのは、何しろ可愛いからだ。 <br>→ Cô ấy được yêu thích là bởi vì, dù sao đi nữa, cô ấy dễ thương mà.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>とにかく  (<b>N3</b>): "Dù sao thì", thường dùng để chuyển hướng hoặc nhấn mạnh điều quan trọng nhất cần làm.  何しろ dùng để nhấn mạnh lý do/sự thật.
<br><br>なぜなら  (<b>N3</b>): "Bởi vì", dùng để đưa ra lý do một cách trang trọng.  何しろ
có phần nói hơn và nhấn mạnh sự hiển nhiên.
<br><br>だって  (<b>N4</b>): "Bởi vì", dùng trong văn nói thân mật, thường để biện minh.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('97.  ならでは: Chỉ có ở; đặc trưng của; đặc biệt của ~', 'Common', '     <b>Công thức:</b> N +  ならでは (の + N)
<br>──────────<br><b>Cách dùng:</b> Dùng để nhấn mạnh một đặc điểm, phẩm chất, hoặc trải nghiệm độc đáo, đặc trưng, chỉ có thể tìm thấy ở N, không có ở nơi khác.
<br>──────────<br><b>Ý nghĩa:</b> Chỉ N mới có...; Đặc trưng của N...
<br>──────────<br><b>Chú ý:</b> Thường mang ý nghĩa tích cực, ca ngợi tính độc đáo.
<br>──────────<br><b>Ví dụ:</b>
<br>この味は、この店ならではのものだ。 <br>→ Mùi vị này là thứ chỉ có ở quán này mà thôi.
<br><br>京都ならではの美しい景色を楽しんだ。 <br>→ Tôi đã thưởng thức cảnh đẹp đặc trưng của Kyoto.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～だけ  (<b>N5</b>): "Chỉ".  ならでは nhấn mạnh tính độc đáo, đặc trưng.
<br><br>～に特有の  (<b>N?</b>): "Đặc trưng của", gần nghĩa, nhưng  ならでは mang tính
đánh giá cao hơn và thường là những điều tốt đẹp.
<br><br>～でしか～ない  (<b>N3</b>): "Chỉ có ở... mới...", gần nghĩa, nhấn mạnh sự giới hạn.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('98.  ならいざしらず  /  はいざしらず: Tôi không biết về ... nhưng; có thể ...
thì được nhưng ~', 'Common', '     <b>Công thức:</b> N +  なら +  いざしらず / N +  は +  いざしらず、～
<br>──────────<br><b>Cách dùng:</b> Dùng để nói rằng trường hợp N thì không bàn đến (vì nó đặc biệt, hoặc không biết), nhưng trường hợp khác (vế sau) thì lại khác/là vấn đề.
<br>──────────<br><b>Ý nghĩa:</b> Nếu là N thì không nói làm gì, nhưng...; N thì tôi không biết thế nào, chứ...
<br>──────────<br><b>Chú ý:</b> Thường dùng để so sánh, nêu bật sự khác biệt của vế sau so với N.  いざしら
ず =  いざ知らず.
<br>──────────<br><b>Ví dụ:</b>
<br>子供ならいざしらず、大人がそんなことをしてはいけない。 <br>→ Nếu là trẻ con thì không nói làm gì, nhưng người lớn thì không được làm chuyện đó.
<br><br>昔はいざしらず、今では海外旅行は珍しくない。 <br>→ Ngày xưa thì không biết thế nào, chứ bây giờ du lịch nước ngoài không còn hiếm nữa.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～はともかく  (<b>N2</b>): "Khoan hãy bàn đến...", gần nghĩa, nhưng  いざしらず thường có hàm ý N là trường hợp ngoại lệ hoặc người nói không có kinh nghiệm/thông tin về N.
<br><br>～ならまだしも  (<b>N2</b>): "Nếu là... thì còn được/chấp nhận được, nhưng đằng này...", cũng dùng để so sánh, nhưng thường với ý chê bai vế sau.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('99.  なり: Ngay sau khi ~', 'Common', '     <b>Công thức:</b> V-る +  なり
<br>──────────<br><b>Cách dùng:</b> Diễn tả rằng ngay sau khi hành động V-る xảy ra thì một hành động khác (thường là bất ngờ, không lường trước) xảy ra ngay lập tức.
<br>──────────<br><b>Ý nghĩa:</b> Vừa mới... thì liền...
<br>──────────<br><b>Chú ý:</b> Chủ ngữ của hai vế thường là một. Vế sau thường là hành động bất ngờ hoặc không bình thường. Không dùng cho hành động có ý chí của người nói.
<br>──────────<br><b>Ví dụ:</b>
<br>彼は部屋に入るなり、大声で怒鳴り始めた。 <br>→ Anh ta vừa mới vào phòng thì liền bắt đầu la hét lớn tiếng.
<br><br>子供は母親の顔を見るなり、わっと泣き出した。 <br>→ Đứa bé vừa nhìn thấy mặt mẹ thì bật khóc nức nở.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～が早いか  (<b>N1</b>): Gần nghĩa, nhấn mạnh sự đồng thời, phản ứng nhanh.
<br><br>～たとたん(に) (<b>N3</b>): Gần nghĩa, nhấn mạnh sự bất ngờ của vế sau.  なり
thường dùng với hành động bất ngờ và có thể là tiêu cực hoặc hành động có tính bản năng.
<br><br>～や否や  (<b>N1</b>): Gần như đồng nghĩa, cũng diễn tả sự tức thời, trang trọng.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('100.  なりに  /  なりの: Phù hợp; theo cách/kiểu riêng ~', 'Common', '     <b>Công thức:</b> N / V/A (Thể thông thường) +  なりに /  なりの + N
<br>──────────<br><b>Cách dùng:</b> Diễn tả rằng một hành động hoặc trạng thái nào đó được thực hiện hoặc tồn tại theo cách riêng, trong giới hạn, hoặc phù hợp với khả năng, địa vị, hoặc tình trạng của người/vật đó, dù có thể không hoàn hảo hoặc không đạt chuẩn cao.
<br>──────────<br><b>Ý nghĩa:</b> Theo cách của...; Trong mức độ của...; Dù... nhưng cũng theo cách của nó.
<br>──────────<br><b>Chú ý:</b> Thường mang ý nghĩa "dù không hoàn hảo nhưng cũng đã cố gắng/có giá trị riêng".
<br>──────────<br><b>Ví dụ:</b>
<br>私は私なりに一生懸命やっています。 <br>→ Tôi đang cố gắng hết sức theo cách của riêng tôi.
<br><br>子供には子供なりの考えがある。 <br>→ Trẻ con có suy nghĩ theo kiểu của trẻ con.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～らしい  (<b>N4</b>): "Ra dáng", "phù hợp với bản chất".  なりに/なりの nhấn mạnh sự phù hợp trong giới hạn/khả năng của đối tượng đó, dù có thể chưa đạt đến mức lý tưởng.
<br><br>～なりに頑張る  (Thành ngữ): "Cố gắng theo cách của mình".') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('101.  なりとも: Ít nhất; dù chỉ một chút (trợ từ trạng thái)', 'Common', '     <b>Công thức:</b> N (Thường là từ chỉ số lượng nhỏ, hoặc từ mang ý nghĩa tối thiểu) +  なりとも
<br>──────────<br><b>Cách dùng:</b> Dùng để đưa ra một ví dụ tối thiểu, mang ý nghĩa "dù chỉ một chút" hoặc "ít nhất là". Thường dùng trong câu yêu cầu, đề nghị, hoặc mong muốn một cách lịch sự, khiêm tốn.
<br>──────────<br><b>Ý nghĩa:</b> Dù chỉ...; Ít nhất cũng...
<br>──────────<br><b>Chú ý:</b> Là cách nói trang trọng. Thường đi với  一言 (một lời),  一日 (một ngày),  少
し (một chút),  何か (cái gì đó)...
<br>──────────<br><b>Ví dụ:</b>
<br>何か一言なりとも、アドバイスをいただけませんか。 <br>→ Anh có thể cho tôi một lời khuyên, dù chỉ một chút được không ạ?
<br><br>少しなりともお役に立てれば幸いです。 <br>→ Nếu có thể giúp ích dù chỉ một chút, tôi cũng rất vui.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>せめて  (<b>N3</b>): "Ít nhất thì", gần nghĩa, nhưng  なりとも thường mang sắc thái khiêm tốn hơn và đi sau danh từ chỉ lượng tối thiểu.
<br><br>～でも  (<b>N5</b>): "Ngay cả", dùng để nêu ví dụ, nhưng  なりとも thường dùng với mong muốn/yêu cầu tối thiểu một cách lịch sự.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('102.  なり～なり: [A] hoặc [B] hoặc gì đó; ví dụ ~', 'Common', '     <b>Công thức:</b> N/V-る +  なり + N/V-る +  なり ( + V  する)
<br>──────────<br><b>Cách dùng:</b> Dùng để đưa ra hai hoặc nhiều ví dụ về hành động hoặc lựa chọn, gợi ý rằng người nghe có thể chọn bất kỳ cái nào trong số đó hoặc làm một việc tương tự để giải quyết vấn đề hoặc đạt mục đích.
<br>──────────<br><b>Ý nghĩa:</b> Hoặc là A, hoặc là B, ... (hãy làm gì đó).
<br>──────────<br><b>Chú ý:</b> Thường đi với vế sau thể hiện sự yêu cầu, mệnh lệnh, hoặc ý chí ("hãy làm đi", "nên làm").
<br>──────────<br><b>Ví dụ:</b>
<br>熱があるなら、薬を飲むなり、早く寝るなりしたほうがいい。 <br>→ Nếu bị sốt thì nên làm gì đó, hoặc là uống thuốc, hoặc là đi ngủ sớm.
<br><br>わからないことがあれば、先生に聞くなり、自分で調べるなりしてください。 <br>→ Nếu có điều không hiểu, hãy hoặc là hỏi giáo viên, hoặc là tự mình tra cứu.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～とか～とか  (<b>N4</b>): Dùng để liệt kê ví dụ, không nhất thiết phải là lựa chọn hành động và không có sắc thái thúc giục mạnh bằng.
<br><br>～か～か  (<b>N5</b>): "Hoặc... hoặc...", dùng để nối hai lựa chọn.  なり～なり có thể bao hàm cả những lựa chọn tương tự khác và thường đi kèm với một hành động giải quyết.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('103.  なしに  /  なしで: Không có; mà không làm ~', 'Common', '     <b>Công thức:</b> N +  なしに (は) /  なしで (は)
<br>──────────<br><b>Cách dùng:</b> Diễn tả rằng một việc gì đó xảy ra hoặc được thực hiện mà không có N (thường là sự cho phép, sự thông báo, sự nỗ lực...), hoặc không thể xảy ra/thực hiện nếu không có N.
<br>──────────<br><b>Ý nghĩa:</b> Không có...; Mà không...
<br>──────────<br><b>Chú ý:</b>  なしに trang trọng hơn  なしで. Khi đi với  は, thường đi với thể phủ định (không thể... nếu không có...).
<br>──────────<br><b>Ví dụ:</b>
<br>涙なしには語れない物語だ。 <br>→ Đó là câu chuyện không thể kể mà không có nước mắt.
<br><br>予告なしに、試験が行われた。 <br>→ Kỳ thi đã được tổ chức mà không báo trước.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～なくて  (<b>N4</b>): "Vì không...", chỉ lý do.  なしに chỉ sự thiếu vắng, sự không tồn tại của N khi hành động xảy ra.
<br><br>～ずに  (<b>N3</b>): "Mà không", thường dùng với động từ.  なしに/なしで thường dùng với danh từ.
<br><br>～なくしては  (<b>N1</b>): "Nếu không có...", nhấn mạnh mạnh mẽ hơn về điều
kiện tuyệt đối cần thiết.
<br><br>～ことなしに  (<b>N1</b>): Gần nghĩa với  なしに nhưng thường đi với động từ ở dạng V-る +  ことなしに.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('104.  に: Và; thêm vào đó; sự kết hợp của ~', 'Common', '     <b>Công thức:</b> N1 +  に + N2 +  に + ...
<br>──────────<br><b>Cách dùng:</b> Dùng để liệt kê các danh từ cùng loại, tạo ra cảm giác nhiều thứ được xếp chồng lên nhau hoặc tồn tại cùng lúc một cách tự nhiên.
<br>──────────<br><b>Ý nghĩa:</b> Nào là... nào là...; Và... và... (liệt kê đơn thuần, không có sắc thái đặc biệt).
<br>──────────<br><b>Chú ý:</b> Thường dùng trong văn nói hoặc văn viết mang tính mô tả, liệt kê. Khác vớiと (liệt kê hết) hay  や (liệt kê ví dụ),  に có thể liệt kê nhiều thứ và tạo cảm giác tự nhiên hơn.
<br>──────────<br><b>Ví dụ:</b>
<br>机の上には、本にノートに辞書に、たくさんのものが置いてあった。
- Trên bàn có rất nhiều thứ, nào là sách, nào là vở, nào là từ điển.
<br><br>朝食はパンに卵にサラダだった。 <br>→ Bữa sáng có bánh mì, trứng và salad.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～と  (<b>N5</b>): Liệt kê đầy đủ (A và B, và C...).
<br><br>～や  (<b>N5</b>): Liệt kê không đầy đủ, mang tính ví dụ (A, B, và những thứ
khác...).
<br><br>～だの～だの  (<b>N1</b>): Liệt kê (thường là phàn nàn hoặc những thứ lộn xộn).
に chỉ liệt kê đơn thuần, không có sắc thái cảm xúc.
<br><br>～とか  (<b>N4</b>): Liệt kê ví dụ, có thể dùng cho cả danh từ và động từ.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('105.  に値する（にあたいする）: Đáng; xứng đáng ~', 'Common', '     <b>Công thức:</b> N / V-る +  に値する
<br>──────────<br><b>Cách dùng:</b> Dùng để đánh giá rằng một người, vật, hoặc hành động có đủ giá trị, phẩm chất để nhận được sự tôn trọng, khen ngợi, tin cậy, hoặc sự chú ý.
<br>──────────<br><b>Ý nghĩa:</b> Xứng đáng...; Đáng để...
<br>──────────<br><b>Chú ý:</b> Thường dùng để đánh giá cao, công nhận giá trị.
<br>──────────<br><b>Ví dụ:</b>
<br>彼の勇気ある行動は、尊敬に値する。 <br>→ Hành động dũng cảm của anh ấy xứng đáng được tôn trọng.
<br><br>この作品は、注目に値する。 <br>→ Tác phẩm này đáng để chú ý.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～価値がある  (<b>N3</b>): "Có giá trị", gần nghĩa, nhưng  に値する thường trang trọng hơn và mang hàm ý xứng đáng với một sự công nhận hoặc đánh giá cao về mặt tinh thần, đạo đức.
<br><br>～に足る  (<b>N1</b>): "Đủ để", "đáng để", gần như đồng nghĩa, cũng mang tính trang trọng.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('106.  にあって: Tại; vào; trong; trong điều kiện ~', 'Common', '     <b>Công thức:</b> N +  にあって /  にあっても
<br>──────────<br><b>Cách dùng:</b> Dùng để chỉ một tình huống, hoàn cảnh, hoặc thời điểm đặc biệt mà một sự việc nào đó xảy ra hoặc một người nào đó hành động. Nhấn mạnh hoàn cảnh đặc biệt đó, thường là khó khăn hoặc quan trọng.
<br>──────────<br><b>Ý nghĩa:</b> Trong (hoàn cảnh)...; Vào (lúc)...; Ở (vị trí)...
<br>──────────<br><b>Chú ý:</b> Cách nói trang trọng, thường dùng trong văn viết.  にあっても có nghĩa là "ngay cả trong (hoàn cảnh)... thì vẫn...".
<br>──────────<br><b>Ví dụ:</b>
<br>この困難な状況にあって、彼は冷静さを失わなかった。 <br>→ Trong tình huống khó khăn này, anh ấy đã không đánh mất sự bình tĩnh.
<br><br>首相という立場にあって、軽率な発言は許されない。 <br>→ Với vị trí là thủ tướng, những phát ngôn thiếu thận trọng là không thể chấp nhận được.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～で  (<b>N5</b>): Chỉ địa điểm, thời gian, hoàn cảnh thông thường.  にあって nhấn mạnh tính đặc biệt hoặc tính thử thách của hoàn cảnh.
<br><br>～において  (<b>N2</b>): "Tại", "trong", cũng trang trọng, dùng để chỉ phạm vi, lĩnh vực, thời gian, địa điểm của sự việc.  にあって thường nhấn mạnh hơn vào tính chất của hoàn cảnh và hành động tương ứng.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('107.  に引き換え（にひきかえ）: So với; trái ngược với; không giống như;
trong khi; còn ~', 'Common', '     <b>Công thức:</b> N +  に引き換え / (Thể thông thường) +  の +  に引き換え
<br>──────────<br><b>Cách dùng:</b> Dùng để so sánh hai sự vật, sự việc có sự tương phản rõ rệt, nhấn mạnh sự khác biệt đó một cách nổi bật.
<br>──────────<br><b>Ý nghĩa:</b> Trái ngược với...; Khác hẳn với...; Trong khi... thì...
<br>──────────<br><b>Chú ý:</b> Thường dùng để làm nổi bật sự khác biệt đáng kể giữa hai đối tượng.
<br>──────────<br><b>Ví dụ:</b>
<br>活発な兄に引き換え、弟はおとなしい性格だ。 <br>→ Trái ngược với người anh hoạt bát, người em có tính cách trầm lặng.
<br><br>去年が大豊作だったのに引き換え、今年は不作だ。 <br>→ Trái ngược với năm ngoái được mùa lớn, năm nay lại mất mùa.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～に比べて  (<b>N3</b>): "So với", chỉ so sánh thông thường.  に引き換え nhấn mạnh sự tương phản mạnh mẽ.
<br><br>～に対して  (<b>N3</b>): "Đối với", "trái lại", cũng dùng để so sánh sự khác biệt, nhưng  に引き換え thường thể hiện sự khác biệt rõ rệt và bất ngờ hơn.
<br><br>～反面  (<b>N2</b>): "Mặt khác", chỉ hai mặt đối lập của cùng một sự vật/sự việc.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('108.  に至る  /  に至った（にいたる  /  にいたった）: Dẫn đến; đi đến kết
luận', 'Common', '     <b>Công thức:</b> N / V-る +  に至る /  に至った
<br>──────────<br><b>Cách dùng:</b> Dùng để diễn tả một quá trình đã phát triển và cuối cùng đạt đến một trạng thái, kết quả, hoặc giai đoạn nào đó (thường là quan trọng hoặc cực điểm).
<br>──────────<br><b>Ý nghĩa:</b> Đã đến mức...; Đã dẫn đến...; Cuối cùng đã...
<br>──────────<br><b>Chú ý:</b> Thường dùng để mô tả một quá trình dài hoặc một kết quả quan trọng, một điểm đến cuối cùng.
<br>──────────<br><b>Ví dụ:</b>
<br>長い議論の末、ようやく合意に至った。 <br>→ Sau một thời gian dài thảo luận, cuối cùng chúng tôi đã đi đến thỏa thuận.
<br><br>事態は、もはや手の施しようがないところに至っている。 <br>→ Tình hình đã đến mức không còn cách nào cứu vãn được nữa.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～になる  (<b>N5</b>): "Trở thành", cách nói thông thường.  に至る trang trọng hơn và thường chỉ quá trình dẫn đến kết quả mang tính bước ngoặt hoặc kết thúc.
<br><br>ついに～  (<b>N3</b>): "Cuối cùng thì", nhấn mạnh kết quả sau một thời gian dài.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('109.  に至るまで（にいたるまで）: Đến tận; cho đến; mọi thứ từ ... đến ~', 'Common', '     <b>Công thức:</b> N +  に至るまで
<br>──────────<br><b>Cách dùng:</b> Dùng để nhấn mạnh phạm vi rộng lớn của một sự việc, bao gồm cả những thứ tưởng chừng nhỏ nhặt hoặc cực đoan nhất, không bỏ sót.
<br>──────────<br><b>Ý nghĩa:</b> Đến cả...; Cho đến tận...; Từ... cho đến...
<br>──────────<br><b>Chú ý:</b> Thường dùng để liệt kê phạm vi từ A đến B (A から B に至るまで) hoặc nhấn mạnh một điểm cực đoan, chi tiết.
<br>──────────<br><b>Ví dụ:</b>
<br>彼は洋服から下着に至るまで、ブランド品で固めている。 <br>→ Anh ta dùng toàn đồ hiệu, từ quần áo cho đến tận đồ lót.
<br><br>大企業の社長から小学生に至るまで、多くの人がそのゲームに夢中になっている。 <br>→ Rất nhiều người, từ giám đốc công ty lớn cho đến học sinh tiểu học, đều mê mẩn trò chơi đó.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～まで  (<b>N5</b>): "Đến".  に至るまで nhấn mạnh hơn về sự bao quát toàn diện hoặc mức độ chi tiết.
<br><br>～から～にかけて  (<b>N3</b>): "Từ... đến...", chỉ khoảng không gian hoặc thời gian, không nhấn mạnh sự chi tiết bằng  に至るまで.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('110.  に至っても（にいたっても）: Ngay cả khi; mặc dù; dù ~ đã đến mức ~', 'Common', '     <b>Công thức:</b> N / V-る +  に至っても
<br>──────────<br><b>Cách dùng:</b> Dùng để diễn tả rằng ngay cả khi tình hình đã tiến triển đến một mức độ nhất định (thường là nghiêm trọng hoặc đã muộn), một hành động hoặc trạng thái nào đó vẫn không xảy ra hoặc không thay đổi như mong đợi.
<br>──────────<br><b>Ý nghĩa:</b> Ngay cả khi đã đến mức... (mà vẫn...).
<br>──────────<br><b>Chú ý:</b> Thường thể hiện sự ngạc nhiên, thất vọng, hoặc phê phán.
<br>──────────<br><b>Ví dụ:</b>
<br>死者が出るに至っても、彼らはまだ責任を認めようとしない。 <br>→ Ngay cả khi đã có người chết, họ vẫn không chịu thừa nhận trách nhiệm.
<br><br>何度も説明したに至っても、彼は理解してくれない。 <br>→ Ngay cả khi đã giải thích nhiều lần (đến mức này rồi), anh ta vẫn không hiểu.
<br>──────────<br><b>So sánh:</b>
<br>～ても  (<b>N4</b>): "Dù... cũng".  に至っても nhấn mạnh rằng tình hình đã "đến mức" nào đó mà vẫn không có sự thay đổi mong muốn.
<br><br>～たところで  (<b>N1</b>): "Dù có... thì cũng (vô ích)".') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('111.  に至っては（にいたっては）: Khi nói đến; đối với ~', 'Common', '     <b>Công thức:</b> N +  に至っては
<br>──────────<br><b>Cách dùng:</b> Dùng để đưa ra một ví dụ đặc biệt, thường là cực đoan hoặc tồi tệ nhất (hoặc tốt nhất) trong số những ví dụ đã được nêu trước đó hoặc so với những cái khác, để nhấn mạnh mức độ.
<br>──────────<br><b>Ý nghĩa:</b> Riêng đối với... thì...; Khi nói đến... (thì càng...).
<br>──────────<br><b>Chú ý:</b> Thường dùng để nhấn mạnh một trường hợp nổi bật, làm nổi bật sự khác biệt.
<br>──────────<br><b>Ví dụ:</b>
<br>他の科目はまあまあだが、数学に至っては、全く理解できない。 <br>→ Các môn khác thì cũng tạm được, nhưng riêng đối với môn toán thì tôi hoàn toàn không hiểu.
<br><br>兄も弟も怠け者だが、弟に至っては、一日中寝てばかりいる。 <br>→ Cả anh và em đều lười biếng, nhưng riêng thằng em thì nó ngủ suốt cả ngày (mức độ lười biếng cao hơn).
<br>──────────<br><b>So sánh:</b>
<br>～は  (<b>N5</b>): Chỉ chủ đề.  に至っては dùng để nêu bật một ví dụ cực đoan hoặc đặc biệt trong số đó.
<br><br>～となると  (<b>N1</b>): "Khi nói đến", nhưng thường dùng để chuyển sang một tình huống cụ thể hơn.  に至っては dùng để chỉ ra một trường hợp cụ thể trong một nhóm.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('112.  に言わせれば（にいわせれば）: Nếu bạn hỏi; nếu tôi được phép nói ~', 'Common', '     <b>Công thức:</b> N (Người) +  に言わせれば
<br>──────────<br><b>Cách dùng:</b> Dùng để trình bày ý kiến, quan điểm từ lập trường của một người nào đó (<b>N</b>), thường là để nhấn mạnh rằng đó là ý kiến cá nhân hoặc có thể khác với ý kiến của người khác, hoặc là một sự thật mà N muốn nhấn mạnh.
<br>──────────<br><b>Ý nghĩa:</b> Theo ý kiến của N thì...; Nếu để N nói thì...; Từ góc độ của N...
<br>──────────<br><b>Chú ý:</b> Thường dùng để đưa ra ý kiến có phần chủ quan, đánh giá hoặc phản biện.
<br>──────────<br><b>Ví dụ:</b>
<br>私に言わせれば、それはただの言い訳にすぎない。 <br>→ Nếu để tôi nói thì đó chỉ là một lời bao biện mà thôi.
<br><br>専門家に言わせれば、その方法はあまり効果がないそうだ。 <br>→ Theo ý kiến của chuyên gia thì phương pháp đó nghe nói không có hiệu quả lắm.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～によると  (<b>N3</b>): "Theo như", thường dùng để trích dẫn nguồn thông tin khách quan.  に言わせれば dùng để trích dẫn ý kiến chủ quan.
<br><br>～から見れば  /  ～からすると  (<b>N2</b>): "Nhìn từ phía...", "xét từ...", gần nghĩa, nhưng  に言わせれば nhấn mạnh vào "lời nói", "ý kiến được phát biểu".') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('113.  に限ったことではない（にかぎったことではない）: Không chỉ giới
hạn ở ~', 'Common', '     <b>Công thức:</b> N / V-る +  の +  に限ったことではない
<br>──────────<br><b>Cách dùng:</b> Dùng để nói rằng một sự việc hoặc tình trạng nào đó không chỉ xảy ra hoặc áp dụng cho một trường hợp cụ thể (N/V), mà còn xảy ra ở những trường hợp khác nữa, mang tính phổ biến hơn.
<br>──────────<br><b>Ý nghĩa:</b> Không chỉ riêng...; Không chỉ giới hạn ở... (mà còn ở những cái khác nữa).
<br>──────────<br><b>Chú ý:</b> Mở rộng phạm vi của một nhận định, cho thấy tính phổ biến.
<br>──────────<br><b>Ví dụ:</b>
<br>遅刻が多いのは、彼に限ったことではない。 <br>→ Việc đi muộn nhiều không chỉ riêng anh ta.
<br><br>若者の活字離れは、日本に限ったことではない。 <br>→ Việc giới trẻ xa rời chữ viết không chỉ giới hạn ở Nhật Bản.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～だけではない  (<b>N3</b>): "Không chỉ", gần nghĩa, nhưng  に限ったことではない thường mang tính trang trọng hơn và nhấn mạnh việc không chỉ giới hạn trong một phạm vi cụ thể đã được đề cập hoặc ngầm hiểu.
<br><br>～に限らず  (<b>N2</b>): "Không chỉ giới hạn ở", gần như đồng nghĩa.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('114.  にかかっては  /  にかかったら  /  にかかると  /  かかれば: Khi được xử
lý bởi (<b>N</b>), trở thành một kết quả hoàn toàn khác', 'Common', '     <b>Công thức:</b> N (Người có khả năng đặc biệt) +  にかかっては /  にかかったら /  にかかると /  にかかれば、～
<br>──────────<br><b>Cách dùng:</b> Dùng để nhấn mạnh rằng khi một việc gì đó được thực hiện bởi một người có tài năng, kỹ năng, hoặc quyền lực đặc biệt (<b>N</b>), thì kết quả sẽ rất khác biệt, thường là dễ dàng hoặc xuất sắc một cách đáng ngạc nhiên, vượt xa người thường.
<br>──────────<br><b>Ý nghĩa:</b> Với N thì...; Nếu là N ra tay thì... (việc khó cũng thành dễ).
<br>──────────<br><b>Chú ý:</b> Thường dùng để ca ngợi tài năng, sự chuyên nghiệp của N.
<br>──────────<br><b>Ví dụ:</b>
<br>どんな難しい料理でも、彼にかかれば、簡単に作ってしまう。 <br>→ Dù là món ăn khó đến mấy, nếu là anh ấy ra tay thì cũng làm xong một cách dễ dàng.
<br><br>この道のプロにかかると、修理なんてあっという間だ。 <br>→ Với dân chuyên trong lĩnh vực này thì việc sửa chữa chỉ trong nháy mắt.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～なら  (<b>N4</b>): "Nếu là", dùng để đưa ra điều kiện thông thường.  にかかっては nhấn mạnh vào khả năng đặc biệt, sự thay đổi kết quả nhờ vào N.
<br><br>N の手にかかれば  (<b>N?</b>): "Nếu rơi vào tay N thì...", gần nghĩa.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('115.  にかかっている: Tùy thuộc vào; phụ thuộc vào; có hay không', 'Common', '     <b>Công thức:</b> N +  にかかっている
<br>──────────<br><b>Cách dùng:</b> Dùng để diễn tả rằng một kết quả hoặc sự thành bại của một việc gì đó hoàn toàn phụ thuộc vào N, N là yếu tố quyết định.
<br>──────────<br><b>Ý nghĩa:</b> Phụ thuộc vào...; Tùy vào...; Nắm giữ bởi...
<br>──────────<br><b>Chú ý:</b> Nhấn mạnh tầm quan trọng mang tính quyết định của N đối với kết quả.
<br>──────────<br><b>Ví dụ:</b>
<br>このプロジェクトが成功するかどうかは、君の努力にかかっている。
- Dự án này có thành công hay không là phụ thuộc vào nỗ lực của cậu.
<br><br>大会で優勝できるかどうかは、明日の試合にかかっている。 <br>→ Có thể vô địch giải đấu hay không là tùy thuộc vào trận đấu ngày mai.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～次第だ  (<b>N2</b>): "Tùy thuộc vào", gần nghĩa, nhưng  にかかっている
thường nhấn mạnh hơn vào yếu tố quyết định, "nằm ở chỗ...".
<br><br>～いかんだ  (<b>N1</b>): "Tùy thuộc vào", trang trọng hơn.
<br><br>～による  (<b>N3</b>): "Do...", "bởi...", chỉ sự phụ thuộc.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('116.  にかこつけて: Lấy làm cớ; dùng làm lý do', 'Common', '     <b>Công thức:</b> N +  にかこつけて
<br>──────────<br><b>Cách dùng:</b> Diễn tả việc lợi dụng một sự kiện hoặc tình huống (<b>N</b>) nào đó làm lý do, làm cớ để thực hiện một hành động khác, thường là hành động có mục đích riêng, không hoàn toàn liên quan hoặc thậm chí là không tốt.
<br>──────────<br><b>Ý nghĩa:</b> Lấy cớ là...; Viện lý do là...
<br>──────────<br><b>Chú ý:</b> Thường mang hàm ý rằng lý do được đưa ra không phải là lý do chính, hoặc có ý đồ khác đằng sau.
<br>──────────<br><b>Ví dụ:</b>
<br>彼は出張にかこつけて、観光を楽しんだ。 <br>→ Anh ta lấy cớ đi công tác để đi tham quan.
<br><br>取材にかこつけて、好きな作家に会いに行った。 <br>→ Lấy cớ đi lấy tin, tôi đã đi gặp tác giả mình yêu thích.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～を理由に  (<b>N3</b>): "Với lý do là", cách nói trung lập hơn.  にかこつけて
thường ám chỉ việc "lợi dụng" cái cớ đó một cách có chủ đích.
<br><br>～という名目で  (<b>N2</b>): "Dưới danh nghĩa là", gần nghĩa, cũng thường chỉ lý do bề mặt để che đậy mục đích thật.
<br><br>～を言い訳に  (<b>N?</b>): "Lấy... làm lý do bao biện".') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('117.  にかまけて: Quá bận rộn; chỉ tập trung vào ~', 'Common', '     <b>Công thức:</b> N +  にかまけて
<br>──────────<br><b>Cách dùng:</b> Diễn tả việc vì quá bận rộn hoặc quá tập trung vào một việc (<b>N</b>) mà lơ là, bỏ bê những việc quan trọng khác đáng lẽ phải làm.
<br>──────────<br><b>Ý nghĩa:</b> Do mải mê...; Do quá bận... (mà lơ là việc khác).
<br>──────────<br><b>Chú ý:</b> Thường mang sắc thái tiêu cực hoặc hối tiếc vì đã bỏ bê việc khác.
<br>──────────<br><b>Ví dụ:</b>
<br>忙しさにかまけて、家族サービスを怠っていた。 <br>→ Do quá bận rộn mà tôi đã lơ là việc dành thời gian cho gia đình.
<br><br>目先の利益にかまけて、大切なことを見失ってはいけない。 <br>→ Không được vì mải mê cái lợi trước mắt mà đánh mất những điều quan trọng.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～に追われて  (<b>N2</b>): "Bị cuốn theo", "bị bận rộn với".  にかまけて nhấn mạnh hơn vào hậu quả là lơ là, bỏ bê việc khác.
<br><br>～に気を取られて  (<b>N?</b>): "Bị phân tâm bởi...", kết quả cũng có thể là lơ là việc khác.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('118.  に難くない（にかたくない）: Dễ làm; không khó để (tưởng tượng,
hiểu, đoán)', 'Common', '     <b>Công thức:</b> N +  する / V-る +  に難くない
<br>──────────<br><b>Cách dùng:</b> Diễn tả rằng một việc gì đó (thường là tưởng tượng, hiểu, đoán) có thể được thực hiện một cách dễ dàng, không hề khó khăn, dựa trên tình hình hoặc lẽ thường.
<br>──────────<br><b>Ý nghĩa:</b> Không khó để...; Dễ dàng... (nhận ra, tưởng tượng).
<br>──────────<br><b>Chú ý:</b> Thường đi với các động từ như  想像する (tưởng tượng),  理解する (hiểu),
推察する (suy đoán),  察する (cảm nhận). Cách nói trang trọng.
<br>──────────<br><b>Ví dụ:</b>
<br>彼がどれほど苦労したか、想像に難くない。 <br>→ Không khó để tưởng tượng anh ấy đã vất vả đến mức nào.
<br><br>その知らせを聞いた両親の喜びようは、察するに難くない。 <br>→ Dễ dàng đoán được niềm vui của bố mẹ khi nghe tin đó.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～ことは簡単だ  /  ～ことは難しくない  (<b>N4</b>): "Việc... thì dễ / không khó", phổ biến hơn.  に難くない trang trọng hơn và thường dùng với các động từ nhận thức, mang tính suy luận.
<br><br>容易に～できる  (<b>N?</b>): "Có thể... một cách dễ dàng".') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('119.  にまつわる: Liên quan đến; liên quan; gắn liền với ~', 'Common', '     <b>Công thức:</b> N +  にまつわる + N (thường là  話,  伝説,  出来事...)
<br>──────────<br><b>Cách dùng:</b> Dùng để chỉ những câu chuyện, truyền thuyết, sự kiện, hoặc sự vật có mối liên hệ hoặc gắn liền với một danh từ (<b>N</b>) nào đó, thường là một chủ đề rộng hoặc có nhiều khía cạnh.
<br>──────────<br><b>Ý nghĩa:</b> Liên quan đến...; Xoay quanh...; Gắn liền với...
<br>──────────<br><b>Chú ý:</b> Thường dùng cho những mối liên hệ mang tính lịch sử, văn hóa, hoặc có nhiều câu chuyện, giai thoại xoay quanh.
<br>──────────<br><b>Ví dụ:</b>
<br>この地域にまつわる伝説を調べている。 <br>→ Tôi đang tìm hiểu những truyền thuyết liên quan đến vùng này.
<br><br>酒にまつわるエピソードは数多くある。 <br>→ Có rất nhiều giai thoại liên quan đến rượu.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～に関する  (<b>N3</b>) /  ～についての  (<b>N4</b>): "Liên quan đến", "về".  にまつわる thường mang sắc thái văn chương hơn và chỉ những mối liên hệ sâu sắc, nhiều tầng nghĩa hoặc có nhiều câu chuyện.
<br><br>～にちなんだ  (<b>N?</b>): "Có liên quan đến/lấy cảm hứng từ" (thường là tên gọi, sự kiện).') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('120.  に則って（にのっとって）: Dựa trên; theo; phù hợp với ~', 'Common', '     <b>Công thức:</b> N +  に則って
<br>──────────<br><b>Cách dùng:</b> Diễn tả việc thực hiện một hành động dựa trên, tuân theo một tiêu chuẩn, quy tắc, luật lệ, hoặc kinh nghiệm nào đó (<b>N</b>) một cách nghiêm ngặt.
<br>──────────<br><b>Ý nghĩa:</b> Dựa theo...; Tuân theo...; Phù hợp với...
<br>──────────<br><b>Chú ý:</b> Cách nói trang trọng, thường dùng trong các tình huống chính thức, pháp lý, hoặc khi nói về truyền thống.
<br>──────────<br><b>Ví dụ:</b>
<br>法律に則って、適切に処理いたします。 <br>→ Chúng tôi sẽ xử lý một cách thích hợp dựa trên pháp luật.
<br><br>伝統に則って、式典が執り行われた。 <br>→ Buổi lễ đã được cử hành theo truyền thống.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～に従って  (<b>N3</b>): "Theo", "tuân theo", gần nghĩa, nhưng  に則って thường nhấn mạnh việc tuân theo các quy tắc, chuẩn mực đã được thiết lập một cách chính xác.
<br><br>～に基づいて  (<b>N2</b>): "Dựa trên", thường dùng khi dựa trên cơ sở dữ liệu, sự thật, kinh nghiệm để đưa ra quyết định hoặc hành động.
<br><br>～に沿って  (<b>N2</b>): "Men theo", "dọc theo", "theo sát", thường dùng với kế hoạch, phương châm.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('121.  に先駆けて（にさきがけて）: Trước; là người đầu tiên (tiên phong); đi
trước ~', 'Common', '     <b>Công thức:</b> N +  に先駆けて / V-る +  の +  に先駆けて
<br>──────────<br><b>Cách dùng:</b> Diễn tả rằng một hành động hoặc sự việc nào đó xảy ra trước những hành động/sự việc khác cùng loại, mang ý nghĩa tiên phong, đi đầu, mở đường.
<br>──────────<br><b>Ý nghĩa:</b> Đi tiên phong trong việc...; Trước khi (các đối thủ/người khác)...; Là người đầu tiên...
<br>──────────<br><b>Chú ý:</b> Thường dùng cho những sự kiện, sản phẩm, hoặc hành động mang tính đổi mới, đi trước thời đại hoặc so với đối thủ cạnh tranh.
<br>──────────<br><b>Ví dụ:</b>
<br>その会社は他社に先駆けて、新技術を開発した。 <br>→ Công ty đó đã phát triển công nghệ mới, đi trước các công ty khác.
<br><br>夏に先駆けて、新しいエアコンが発売された。 <br>→ Đi trước mùa hè (trước các hãng khác), mẫu điều hòa mới đã được bán ra.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～前に  (<b>N5</b>): "Trước khi", chỉ thứ tự thời gian thông thường.  に先駆けて
nhấn mạnh sự đi đầu, tiên phong.
<br><br>～に先立って  (<b>N2</b>): "Trước khi", cũng trang trọng, nhưng thường chỉ sự chuẩn bị trước một sự kiện quan trọng, không nhất thiết là tiên phong hay cạnh tranh.
<br><br>真っ先に  (<b>N?</b>): "Đầu tiên nhất", "trước hết", nhấn mạnh thứ tự.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('122.  に忍びない（にしのびない）: Không nỡ (làm); không thể chịu được ~', 'Common', '     <b>Công thức:</b> V-る / N +  に忍びない
<br>──────────<br><b>Cách dùng:</b> Diễn tả cảm giác không nỡ lòng, không đành lòng, hoặc không thể chịu đựng được việc làm một điều gì đó vì thấy thương tâm, đau lòng, hoặc xấu hổ.
<br>──────────<br><b>Ý nghĩa:</b> Không nỡ...; Không đành lòng...; Không thể chịu đựng được (việc nhìn/nghe/làm...).
<br>──────────<br><b>Chú ý:</b> Thường dùng để thể hiện sự đồng cảm, lòng trắc ẩn, hoặc sự xấu hổ khi phải làm/chứng kiến điều gì đó.
<br>──────────<br><b>Ví dụ:</b>
<br>彼の悲しむ顔を見るに忍びない。 <br>→ Tôi không nỡ nhìn gương mặt đau buồn của anh ấy.
<br><br>古い写真だが、捨てるに忍びない。 <br>→ Dù là ảnh cũ nhưng tôi không nỡ vứt đi.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～のがつらい  (<b>N4</b>): "Khó khăn/đau khổ khi làm gì đó".  に忍びない nhấn mạnh vào cảm giác "không nỡ" về mặt tình cảm, sự thương cảm.
<br><br>～見るに堪えない  (<b>N1</b>): "Không thể chịu nổi khi nhìn", gần nghĩa nhưng cụ thể hơn cho hành động nhìn.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('123.  にしたところで  /  としたところで: Ngay cả khi; ngay cả giả sử rằng ~', 'Common', '     <b>Công thức:</b> N / V-る/V-た +  にしたところで /  としたところで
<br>──────────<br><b>Cách dùng:</b> Dùng để đưa ra một giả định hoặc thừa nhận một quan điểm, nhưng sau đó chỉ ra rằng ngay cả trong trường hợp đó, kết quả cũng không thay đổi hoặc không có giải pháp tốt hơn, hoặc vấn đề vẫn tồn tại.
<br>──────────<br><b>Ý nghĩa:</b> Ngay cả khi... thì cũng...; Dù có là... thì cũng... (vẫn không giải quyết được/vẫn vậy).
<br>──────────<br><b>Chú ý:</b> Thường đi với vế sau thể hiện sự khó khăn, vô ích, hoặc không có sự thay đổi tích cực.
<br>──────────<br><b>Ví dụ:</b>
<br>今から急いだにしたところで、もう間に合わないだろう。 <br>→ Ngay cả khi bây giờ có vội đi nữa thì chắc cũng không kịp.
<br><br>専門家としたところで、この問題を解決するのは難しい。 <br>→ Ngay cả là chuyên gia thì việc giải quyết vấn đề này cũng khó khăn.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～ても  (<b>N4</b>): "Dù... cũng".  にしたところで thường mang sắc thái "dù có đứng trên lập trường đó/dù có làm thế thì cũng..." và thường ám chỉ kết quả không khả quan.
<br><br>～たところで  (<b>N1</b>): Rất gần nghĩa, cũng diễn tả sự vô ích hoặc không thay đổi dù có làm gì.
<br><br>～にしろ  /  ～にせよ  (<b>N2</b>): "Dù là... đi nữa".') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('124.  にして: Tại / vào / dưới điều kiện nhất định (thời gian, vị trí, tuổi, số lần)', 'Common', '     <b>Công thức:</b> N (Thời gian/Tuổi/Số lần/Địa vị/Khả năng) +  にして
<br>──────────<br><b>Cách dùng:</b> Dùng để nhấn mạnh một thời điểm, độ tuổi, số lần, hoặc địa vị mà một sự việc đặc biệt xảy ra, thường là để thể hiện sự ngạc nhiên vì nó xảy ra quá sớm, quá muộn, hoặc quá nhanh. Cũng có thể dùng để chỉ người có khả năng đặc biệt mới làm được, hoặc sự kết hợp vai trò.
<br>──────────<br><b>Ý nghĩa:</b> Mới... mà đã...; Phải đến... mới...; Chỉ trong...; Vừa là... vừa là...; Chỉ có (người đó) mới...
<br>──────────<br><b>Chú ý:</b> Cách nói trang trọng. Có nhiều nghĩa tùy theo ngữ cảnh.
<br>──────────<br><b>Ví dụ:</b>
<br>彼は 40 歳にして、初めて自分の会社を設立した。 <br>→ Mãi đến 40 tuổi anh ấy mới thành lập công ty của riêng mình.
<br><br>この大事業は、彼にして初めて成し遂げられた。 <br>→ Công trình vĩ đại này, phải là anh ấy (với khả năng của anh ấy) thì mới có thể hoàn thành được.
<br><br>彼女は女優にして、作家でもある。 <br>→ Cô ấy vừa là diễn viên, vừa là nhà văn.
<br>──────────<br><b>So sánh:</b>
<br>～で  (<b>N5</b>): Chỉ thời gian, địa điểm thông thường.  にして nhấn mạnh tính đặc biệt, sự ngạc nhiên, hoặc khả năng.
<br><br>～で初めて  (<b>N?</b>): "Lần đầu tiên ở/tại/khi...".
<br><br>～でもある～でもある  (<b>N1</b>): "Vừa là... vừa là...",  にして có thể dùng
ngắn gọn hơn.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('125.  に即して（にそくして）: Theo; phù hợp với; dựa trên ~', 'Common', '     <b>Công thức:</b> N +  に即して /  に即した + N
<br>──────────<br><b>Cách dùng:</b> Diễn tả việc hành động hoặc suy nghĩ dựa trên, tuân theo, hoặc phù hợp chặt chẽ với một sự thật, tình hình thực tế, quy định, hoặc tiêu chuẩn nào đó (<b>N</b>).
<br>──────────<br><b>Ý nghĩa:</b> Dựa theo (thực tế)...; Phù hợp với...; Theo sát...
<br>──────────<br><b>Chú ý:</b> Nhấn mạnh sự phù hợp chặt chẽ với thực tế hoặc quy chuẩn.
<br>──────────<br><b>Ví dụ:</b>
<br>事実に即して報告してください。 <br>→ Hãy báo cáo dựa trên sự thật.
<br><br>時代の変化に即した教育改革が必要だ。 <br>→ Cần có cải cách giáo dục phù
hợp với sự thay đổi của thời đại.
<br>──────────<br><b>So sánh:</b>
<br>～に則って  (<b>N1</b>): "Dựa theo", thường dùng với quy tắc, luật lệ thành văn.  に
即して thường nhấn mạnh sự phù hợp với thực tế, tình hình cụ thể.
<br><br>～に基づいて  (<b>N2</b>): "Dựa trên", dùng cho cơ sở, nền tảng (dữ liệu, nghiên cứu).
<br><br>～に応じて  (<b>N2</b>): "Ứng với", "tùy theo" (thường là sự thay đổi, nhu cầu).') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('126.  に耐える  /  に耐えない（にたえる  /  にたえない）: Đáng làm; có thể
làm; không thể chịu đựng làm ~', 'Common', '     <b>Công thức:</b> N / V-る +  に耐える /  に耐えない
<br>──────────<br><b>Cách dùng:</b>
<br>に耐える: Diễn tả rằng cái gì đó có đủ giá trị, chất lượng để đáng được (xem, nghe, đọc, sử dụng...).
<br><br>に耐えない: Diễn tả rằng cái gì đó quá tệ, quá khủng khiếp hoặc quá đau lòng đến mức không thể chịu đựng được (việc xem, nghe, đọc...).
<br>──────────<br><b>Ý nghĩa:</b> Đáng để... / Không thể chịu nổi... (khi tiếp xúc).
<br>──────────<br><b>Chú ý:</b> Thường đi với các động từ như  見る,  聞く,  読む hoặc các danh từ như  鑑
賞 (thưởng thức),  評価 (đánh giá).
<br>──────────<br><b>Ví dụ:</b>
<br>この作品は鑑賞に耐えるものだ。 <br>→ Tác phẩm này là thứ đáng để thưởng thức.
<br><br>それは聞くに耐えない悲惨な話だった。 <br>→ Đó là một câu chuyện bi thảm không thể chịu nổi khi nghe.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～価値がある  (<b>N3</b>): "Có giá trị", gần nghĩa với  に耐える, nhưng  に耐える
thường nhấn mạnh hơn về việc "chịu được" sự đánh giá, thẩm định.
<br><br>我慢できない  (<b>N4</b>): "Không thể chịu đựng", thường dùng cho cảm giác cá nhân, sự khó chịu.  に耐えない thường dùng cho chất lượng hoặc mức độ của sự việc khiến người ta không thể tiếp nhận.
<br><br>～に足る  (<b>N1</b>): "Đáng để", gần nghĩa với  に耐える.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('127.  に足らない  /  に足りない（にたらない  /  にたりない）: Không thể;
không đáng; không đáng làm ~', 'Common', '     <b>Công thức:</b> N / V-る +  に足らない /  に足りない
<br>──────────<br><b>Cách dùng:</b> Diễn tả rằng một điều gì đó không đủ giá trị, không quan trọng, hoặc không đáng để được xem xét, lo lắng, hoặc tin tưởng.
<br>──────────<br><b>Ý nghĩa:</b> Không đáng...; Không đủ để...; Không cần phải...
<br>──────────<br><b>Chú ý:</b> Thường mang ý nghĩa đánh giá thấp, coi nhẹ.
<br>──────────<br><b>Ví dụ:</b>
<br>そんな噂は信じるに足らない。 <br>→ Tin đồn như vậy không đáng để tin.
<br><br>彼らの議論は、聞くに足らない内容だった。 <br>→ Cuộc thảo luận của họ có
nội dung không đáng để nghe.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～価値がない  (<b>N?</b>): "Không có giá trị", gần nghĩa.
<br><br>～ほどのことではない  (<b>N1</b>): "Không đáng", thường dùng để giảm nhẹ mức
độ một sự việc.  に足らない thường mang tính đánh giá thấp hơn về giá trị.
<br><br>取るに足りない  (Thành ngữ): "Không đáng để nhắc tới/quan tâm".') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('128.  に足る  /  に足りる（にたる  /  にたりる）: Có thể làm; đáng; đáng làm', 'Common', '     <b>Công thức:</b> N / V-る +  に足る /  に足りる
<br>──────────<br><b>Cách dùng:</b> Diễn tả rằng một người, vật, hoặc hành động có đủ khả năng, giá trị, hoặc phẩm chất để được coi là..., hoặc để đáng được làm gì đó. Là dạng khẳng định của  に足らない/に足りない.
<br>──────────<br><b>Ý nghĩa:</b> Đủ để...; Đáng để...
<br>──────────<br><b>Chú ý:</b> Cách nói trang trọng.
<br>──────────<br><b>Ví dụ:</b>
<br>彼は信頼するに足る人物だ。 <br>→ Anh ấy là một nhân vật đủ để tin tưởng.
<br><br>この資料は証拠とするに足りるだろうか。 <br>→ Liệu tài liệu này có đủ để
làm bằng chứng không?
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～価値がある  (<b>N3</b>): "Có giá trị", gần nghĩa.  に足る/に足りる thường nhấn mạnh sự "đủ" về mặt tiêu chuẩn hoặc yêu cầu để làm gì đó.
<br><br>～に値する  (<b>N1</b>): "Xứng đáng", gần như đồng nghĩa, cũng trang trọng.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('129.  に照らして（にてらして）: Theo; xét đến; dưới ánh sáng của ~', 'Common', '     <b>Công thức:</b> N +  に照らして
<br>──────────<br><b>Cách dùng:</b> Diễn tả việc xem xét, phán đoán, hoặc hành động dựa trên việc so sánh, đối chiếu với một tiêu chuẩn, quy tắc, luật lệ, hoặc kinh nghiệm (<b>N</b>).
<br>──────────<br><b>Ý nghĩa:</b> So với...; Dựa theo...; Xét theo...; Dưới ánh sáng của...
<br>──────────<br><b>Chú ý:</b> Cách nói trang trọng, thường dùng trong các tình huống cần sự phán xét hoặc đánh giá khách quan.
<br>──────────<br><b>Ví dụ:</b>
<br>法律に照らして判断する。 <br>→ Phán đoán dựa theo pháp luật.
<br><br>過去の判例に照らして、今回の事件を考える。 <br>→ Xét theo các án lệ trong
quá khứ để suy nghĩ về vụ án lần này.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～に則って  (<b>N1</b>): "Dựa theo", nhấn mạnh sự tuân thủ quy tắc.  に照らして
nhấn mạnh sự so sánh, đối chiếu để đưa ra phán quyết.
<br><br>～に基づいて  (<b>N2</b>): "Dựa trên", nhấn mạnh cơ sở, nền tảng.
<br><br>～と比べると  (<b>N3</b>): "So với", dùng để so sánh thông thường.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('130.  にとどまらず: Không giới hạn ở; không chỉ… mà còn ~', 'Common', '     <b>Công thức:</b> N / V-る +  にとどまらず、～
<br>──────────<br><b>Cách dùng:</b> Diễn tả rằng phạm vi ảnh hưởng hoặc mức độ của một sự việc không chỉ dừng lại ở một giới hạn nào đó, mà còn lan rộng ra hoặc bao gồm cả những phạm vi/mức độ lớn hơn, sâu rộng hơn.
<br>──────────<br><b>Ý nghĩa:</b> Không chỉ dừng lại ở..., mà còn... (lan rộng ra).
<br>──────────<br><b>Chú ý:</b> Nhấn mạnh sự mở rộng phạm vi, không bị giới hạn.
<br>──────────<br><b>Ví dụ:</b>
<br>その影響は、国内にとどまらず、海外にも及んでいる。 <br>→ Ảnh hưởng đó không chỉ dừng lại ở trong nước mà còn lan ra cả nước ngoài.
<br><br>彼は俳優としてにとどまらず、監督としても活躍している。 <br>→ Anh ấy không chỉ hoạt động với tư cách diễn viên mà còn cả với tư cách đạo diễn.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～だけでなく～も  (<b>N3</b>): "Không chỉ... mà còn...", phổ biến hơn.  にとどまらず trang trọng hơn và thường nhấn mạnh sự vượt ra khỏi một giới hạn/phạm vi đã được xác định.
<br><br>～ばかりでなく  (<b>N3</b>): Gần nghĩa với  ～だけでなく.
<br><br>～のみならず  (<b>N1</b>): "Không chỉ", rất trang trọng, gần như đồng nghĩa.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('131.  には無理がある（にはむりがある）: Khó làm; là vô lý / không thực tế
/ không thể', 'Common', '     <b>Công thức:</b> N / V-る +  の +  には無理がある
<br>──────────<br><b>Cách dùng:</b> Diễn tả rằng việc thực hiện một điều gì đó là không thể, không thực tế, hoặc quá sức, vượt quá khả năng hoặc điều kiện cho phép.
<br>──────────<br><b>Ý nghĩa:</b> ... là vô lý; ... là không thể; ... là quá sức.
<br>──────────<br><b>Chú ý:</b> Dùng để nhận xét, đánh giá một kế hoạch, yêu cầu, hoặc hành động là không khả thi.
<br>──────────<br><b>Ví dụ:</b>
<br>この予算で計画を実行するのには無理がある。 <br>→ Thực hiện kế hoạch với ngân sách này là không thể (vô lý).
<br><br>たった一日で全ての仕事を終わらせるのには無理がある。 <br>→ Hoàn thành tất cả công việc chỉ trong một ngày là quá sức.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～ことはできない  (<b>N5</b>) /  ～ことは不可能だ  (<b>N?</b>): "Không thể làm được".  には無理がある nhấn mạnh hơn vào sự vô lý, không thực tế, hoặc quá sức.
<br><br>～のは難しい  (<b>N4</b>): "Việc... thì khó".') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('132.  によらず: Bất kể ~', 'Common', '     <b>Công thức:</b> N +  によらず
<br>──────────<br><b>Cách dùng:</b> Diễn tả rằng một điều gì đó vẫn đúng hoặc vẫn xảy ra mà không bị ảnh hưởng, không phụ thuộc vào N (thường là những yếu tố có thể thay đổi hoặc khác biệt).
<br>──────────<br><b>Ý nghĩa:</b> Bất kể...; Không phụ thuộc vào...; Không bị ảnh hưởng bởi...
<br>──────────<br><b>Chú ý:</b> Gần nghĩa với  にかかわらず nhưng  によらず thường nhấn mạnh việc không bị ảnh hưởng bởi sự khác biệt hoặc thay đổi của N.
<br>──────────<br><b>Ví dụ:</b>
<br>この大会には、年齢によらず誰でも参加できます。 <br>→ Đại hội này, bất kể tuổi tác, ai cũng có thể tham gia.
<br><br>天候によらず、イベントは開催されます。 <br>→ Bất kể thời tiết, sự kiện vẫn được tổ chức.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～にかかわらず  (<b>N2</b>): "Bất kể", gần như đồng nghĩa.  によらず có thể ngụ ý rằng N là một yếu tố có thể thay đổi, nhưng sự thay đổi đó không ảnh hưởng đến vế sau.
<br><br>～を問わず  (<b>N2</b>): "Bất kể", "không phân biệt" (giới tính, tuổi tác, kinh nghiệm,...).
<br><br>～いかんにかかわらず  (<b>N1</b>): "Bất kể nội dung/tình trạng của...", trang trọng hơn.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('133.  に～を重ねて（に～をかさねて）: Thành công sau (nỗ lực, công việc,
điều chỉnh, v.v.) liên tục', 'Common', '     <b>Công thức:</b> N1 (hành động lặp lại) +  に + N1 (lặp lại) +  を重ねて
<br>──────────<br><b>Cách dùng:</b> Diễn tả rằng sau khi thực hiện một hành động (<b>N1</b>) lặp đi lặp lại nhiều lần, cuối cùng đã đạt được một kết quả nào đó, hoặc một tình trạng mới đã hình thành.
<br>──────────<br><b>Ý nghĩa:</b> Sau nhiều lần...; Trải qua... lặp đi lặp lại; ... chồng chất ...
<br>──────────<br><b>Chú ý:</b> N1 thường là danh từ chỉ hành động hoặc quá trình (検討 - xem xét,  議論 - thảo luận,  練習 - luyện tập,  失敗 - thất bại,  改良 - cải tiến...).
<br>──────────<br><b>Ví dụ:</b>
<br>検討に検討を重ねて、ようやく最終案が決まった。 <br>→ Sau khi xem xét đi xem xét lại, cuối cùng phương án cuối cùng đã được quyết định.
<br><br>失敗に失敗を重ねて、彼はついに成功を手にした。 <br>→ Trải qua thất bại nối tiếp thất bại, cuối cùng anh ấy đã có được thành công.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>何度も～して  (<b>N5</b>): "Làm ~ nhiều lần". Cấu trúc này trang trọng hơn và nhấn mạnh sự lặp lại có chủ đích để đạt kết quả hoặc sự tích lũy.
<br><br>～末に  (<b>N2</b>): "Sau khi...", nhấn mạnh kết quả sau một quá trình dài.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('134.  にもほどがある: Có giới hạn cho những gì có thể chấp nhận được; đi
quá xa', 'Common', '     <b>Công thức:</b> V-る / N / A +  にもほどがある
<br>──────────<br><b>Cách dùng:</b> Dùng để phê phán mạnh mẽ rằng một hành động hoặc trạng thái nào đó đã vượt quá giới hạn chấp nhận được, quá đáng, không thể chịu đựng thêm.
<br>──────────<br><b>Ý nghĩa:</b> ... cũng phải có chừng mực thôi!; ... quá đáng!
<br>──────────<br><b>Chú ý:</b> Thể hiện sự bất bình, tức giận, hoặc ngạc nhiên trước sự quá đáng.
<br>──────────<br><b>Ví dụ:</b>
<br>冗談にもほどがあるぞ。笑えないよ。 <br>→ Đùa cũng phải có chừng mực thôi. Không cười nổi đâu.
<br><br>わがままを言うにもほどがある。 <br>→ Nói năng ích kỷ cũng phải có giới hạn chứ.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～すぎる  (<b>N4</b>): "Quá...", chỉ mức độ vượt quá.  にもほどがある mang tính phê phán mạnh mẽ hơn, "vượt quá giới hạn chịu đựng/chấp nhận được".
<br><br>あんまりだ  (<b>N?</b>): "Quá đáng", thể hiện sự bất bình.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('135.  にも増して（にもまして）: Hơn…; trên ~', 'Common', '     <b>Công thức:</b> N /  いつ /  何 +  にも増して
<br>──────────<br><b>Cách dùng:</b> Dùng để so sánh, nhấn mạnh rằng mức độ ở vế sau còn cao hơn, mạnh hơn, hoặc quan trọng hơn N (vế trước) hoặc hơn bất kỳ lúc nào/thứ gì khác.
<br>──────────<br><b>Ý nghĩa:</b> Còn hơn cả...; Hơn bao giờ hết...; Đặc biệt hơn...
<br>──────────<br><b>Chú ý:</b> Dùng để nhấn mạnh mức độ cao hơn hẳn.
<br>──────────<br><b>Ví dụ:</b>
<br>以前にも増して、彼女は美しくなった。 <br>→ So với trước đây, cô ấy còn trở nên xinh đẹp hơn.
<br><br>何にも増して、健康が第一だ。 <br>→ Hơn bất cứ thứ gì, sức khỏe là số một.
<br><br>今日はいつにも増して暑い。 <br>→ Hôm nay còn nóng hơn mọi khi.
<br>──────────<br><b>So sánh:</b>
<br>～より  (<b>N5</b>): "Hơn", dùng để so sánh thông thường.  にも増して nhấn mạnh mức độ cao hơn một cách rõ rệt và thường mang tính trang trọng.
<br><br>一層（いっそう）(<b>N2</b>): "Hơn nữa", "càng... hơn", cũng chỉ sự gia tăng mức độ.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('136.  には当たらない（にはあたらない）: Không đáng; không cần phải;
không tương ứng với ~', 'Common', '     <b>Công thức:</b> N / V-る +  には当たらない
<br>──────────<br><b>Cách dùng:</b> Diễn tả rằng một hành động hoặc sự việc nào đó không đủ quan trọng, không đủ nghiêm trọng, hoặc không phù hợp để nhận được một phản ứng mạnh như ngạc nhiên, khen ngợi, chỉ trích, hoặc lo lắng.
<br>──────────<br><b>Ý nghĩa:</b> Không đáng để...; Không cần phải...; Không đến mức phải...
<br>──────────<br><b>Chú ý:</b> Thường dùng để giảm nhẹ mức độ hoặc cho rằng một phản ứng nào đó là thái quá hoặc không cần thiết.
<br>──────────<br><b>Ví dụ:</b>
<br>彼の実力からすれば、今回の受賞も驚くには当たらない。 <br>→ Nếu xét thực lực của anh ấy thì việc nhận giải lần này cũng không đáng ngạc nhiên.
<br><br>多少の失敗で、それほど悲観するには当たらない。 <br>→ Thất bại đôi chút thì không đáng để bi quan đến mức đó.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～ほどのことではない  (<b>N1</b>): "Không đáng", gần nghĩa, nhưng  には当たらない thường dùng để nói về việc phản ứng (ngạc nhiên, khen, chê, lo lắng) có đáng hay không, trong khi  ほどのことではない nhấn mạnh hơn vào bản chất sự việc không quá to tát.
<br><br>～までもない  (<b>N1</b>): "Không cần phải", nhấn mạnh sự hiển nhiên, không cần thiết phải làm gì đó.
<br><br>大したことない  (<b>N?</b>): "Chẳng có gì to tát", cách nói thông thường.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('137.  には及ばない（にはおよばない）: Không cần phải; không cần thiết;
không bì được với ~', 'Common', '     <b>Công thức:</b> N / V-る +  には及ばない
<br>──────────<br><b>Cách dùng:</b>
1.   Diễn tả rằng không cần thiết phải làm một hành động nào đó (thường là lo lắng, cảm ơn, xin lỗi một cách thái quá).
2.   Diễn tả rằng ai đó/cái gì đó không thể sánh bằng, không đạt đến trình độ/mức độ của người/vật khác.
<br>──────────<br><b>Ý nghĩa:</b> 1. Không cần phải...; 2. Không bằng...; Không bì được với...
<br>──────────<br><b>Chú ý:</b> Cách nói có phần khách sáo hoặc trang trọng.
<br>──────────<br><b>Ví dụ:</b>
<br>心配には及びません。すべて順調です。 <br>→ Không cần phải lo lắng đâu ạ. Mọi thứ đều thuận lợi.
<br><br>わざわざ来ていただくには及びません。 <br>→ Không cần anh phải cất công đến đây đâu ạ.
<br><br>私の英語力など、彼には及びません。 <br>→ Năng lực tiếng Anh của tôi thì không thể bì được với anh ấy.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～必要はない  (<b>N4</b>): "Không cần thiết", phổ biến hơn.  には及ばない (nghĩa 1) thường lịch sự và khách sáo hơn.
<br><br>～ほど～ない  (<b>N4</b>): "Không... bằng...", dùng để so sánh thông thường.  には及ばない (nghĩa 2) nhấn mạnh sự thua kém về trình độ/mức độ một cách rõ ràng.
<br><br>～に比べると劣る  (<b>N?</b>): "So với thì kém hơn".') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('138.  の至り（のいたり）: Tột cùng; cực kỳ ~', 'Common', '     <b>Công thức:</b> N (Thường là danh từ chỉ cảm xúc/trạng thái trang trọng, tích cực) +  の
至り
<br>──────────<br><b>Cách dùng:</b> Dùng để diễn tả trạng thái hoặc cảm xúc đang ở mức độ cao nhất, tột cùng, thường là những cảm xúc tích cực và trang trọng.
<br>──────────<br><b>Ý nghĩa:</b> Vô cùng...; Hết sức... (vinh hạnh, cảm kích).
<br>──────────<br><b>Chú ý:</b> Thường đi với các danh từ như  光栄 (vinh hạnh),  感激 (cảm kích),  恐縮 (ái ngại, biết ơn). Hay dùng trong các bài phát biểu, thư từ trang trọng. Cũng có thể dùng với  若気 (bồng bột) ->  若気の至り (lỗi lầm do bồng bột tuổi trẻ).
<br>──────────<br><b>Ví dụ:</b>
<br>このような素晴らしい賞をいただき、光栄の至りです。 <br>→ Nhận được giải thưởng tuyệt vời như thế này, tôi vô cùng vinh hạnh.
<br><br>若気の至りで、大変失礼なことをしてしまいました。 <br>→ Do sự bồng bột của tuổi trẻ mà tôi đã làm một việc hết sức thất lễ.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>極まる  /  極まりない  (<b>N1</b>): "Cực kỳ", gần nghĩa.  の至り thường đi với danh từ chỉ cảm xúc tích cực và mang sắc thái trang trọng, có phần cổ hơn.
<br><br>この上ない  (<b>N1</b>): "Không gì bằng", cũng diễn tả mức độ cao nhất.
<br><br>～限りだ  (<b>N1</b>): "Vô cùng", cũng thường dùng với cảm xúc.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('139.  の極み（のきわみ）: Tột cùng; cực kỳ ~', 'Common', '     <b>Công thức:</b> N +  の極み
<br>──────────<br><b>Cách dùng:</b> Dùng để diễn tả trạng thái hoặc cảm xúc đang ở mức độ tột đỉnh, không thể hơn được nữa. Thường dùng cho cả cảm xúc/trạng thái tích cực và tiêu cực, và có thể mang tính khách quan hơn  の至り.
<br>──────────<br><b>Ý nghĩa:</b> ... tột cùng; Cực kỳ...; Đỉnh cao của...
<br>──────────<br><b>Chú ý:</b> Cách nói trang trọng, có phần văn chương.
<br>──────────<br><b>Ví dụ:</b>
<br>贅沢の極みのような生活を送っている。 <br>→ Anh ấy đang sống một cuộc sống xa hoa tột cùng.
<br><br>喜びの極みに達した。 <br>→ Đã đạt đến niềm vui sướng tột cùng.
<br><br>疲労の極みだった。 <br>→ Mệt mỏi tột độ.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>の至り  (<b>N1</b>): Gần nghĩa, nhưng  の極み có thể dùng rộng rãi hơn cho nhiều loại trạng thái, cả trừu tượng lẫn cụ thể.
<br><br>極まる  /  極まりない  (<b>N1</b>): Gần nghĩa, nhưng  の極み thường đi với danh từ chỉ trạng thái đã đạt đến đỉnh điểm.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('140.  のなんのって: Cực kỳ ~ (không thể diễn tả bằng lời)', 'Common', '     <b>Công thức:</b> A い / A かった / Na だった / V た +  のなんのって
<br>──────────<br><b>Cách dùng:</b> Dùng trong văn nói để diễn tả một cảm xúc hoặc trạng thái ở mức độ rất cao, đến mức khó có thể diễn tả hết bằng lời, mang tính cảm thán mạnh.
<br>──────────<br><b>Ý nghĩa:</b> ... kinh khủng; ... vô cùng; ... không thể tả nổi.
<br>──────────<br><b>Chú ý:</b> Là cách nói rất suồng sã, thường dùng trong hội thoại thân mật, không trang trọng.
<br>──────────<br><b>Ví dụ:</b>
<br>昨日の試験、難しかったのなんのって、全然できなかったよ。 <br>→ Bài thi hôm qua á, khó kinh khủng khiếp, tớ chẳng làm được gì cả.
<br><br>彼女の驚いた顔のなんのって、今でも忘れられない。 <br>→ Vẻ mặt ngạc nhiên của cô ấy á, không thể tả nổi, đến giờ tớ vẫn không quên được.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>とても  (<b>N5</b>) /  すごく  (<b>N4</b>): "Rất", cách nói thông thường.  のなんのって
mang tính cảm thán và suồng sã hơn nhiều, nhấn mạnh mức độ khó diễn tả.
<br><br>～てたまらない  (<b>N3</b>): "Không chịu nổi", diễn tả cảm xúc mạnh không kìm nén được.  のなんのって diễn tả mức độ nói chung.
<br><br>～といったらない  (<b>N1</b>): "Cực kỳ", "hết chỗ nói", cũng mang tính cảm thán và nhấn mạnh mức độ cao, nhưng có thể hơi trang trọng hơn một chút so vớiのなんのって.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('141.  のやら  /  ものやら  /  ことやら: Tôi tự hỏi...; không chắc; tôi không biết
~', 'Common', '     <b>Công thức:</b> (Thể thông thường) +  のやら /  ものやら /  ことやら
<br>──────────<br><b>Cách dùng:</b> Dùng để diễn tả sự không chắc chắn, sự nghi ngờ, hoặc sự băn khoăn, lo lắng của người nói về một điều gì đó.
<br>──────────<br><b>Ý nghĩa:</b> Không biết là...; Chẳng biết...; Tôi tự hỏi là...
<br>──────────<br><b>Chú ý:</b> Thường thể hiện sự hoang mang, không rõ ràng, hoặc một chút lo lắng.
<br>──────────<br><b>Ví dụ:</b>
<br>彼は本当に来るのやら。もう約束の時間を過ぎているのに。 <br>→ Không biết anh ta có đến thật không nữa. Đã quá giờ hẹn rồi mà.
<br><br>いつになったらこの仕事が終わるものやら。 <br>→ Chẳng biết đến bao giờ công việc này mới xong đây.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～かどうかわからない  (<b>N4</b>): "Không biết có... hay không", cách nói thông thường, khách quan hơn.  のやら/ものやら/ことやら mang sắc thái cảm thán, băn khoăn, chủ quan hơn.
<br><br>～かしら  (N4 - nữ giới): "Tự hỏi là...", "có lẽ nào...".') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('142.  のやら～のやら: Hay là ~ (tôi không biết)', 'Common', '     <b>Công thức:</b> (Thể thông thường) +  のやら + (Thể thông thường) +  のやら ( +  わからない /  区別がつかない)
<br>──────────<br><b>Cách dùng:</b> Dùng để liệt kê hai hoặc nhiều khả năng hoặc tình trạng mà người nói không thể xác định được đâu là thật, hoặc không hiểu rõ nguyên nhân/tình hình, cảm thấy mơ hồ.
<br>──────────<br><b>Ý nghĩa:</b> Không biết là do A hay do B...; Chẳng phân biệt được là A hay B...
<br>──────────<br><b>Chú ý:</b> Thể hiện sự không chắc chắn, mơ hồ, khó phân định.
<br>──────────<br><b>Ví dụ:</b>
<br>彼は喜んでいるのやら悲しんでいるのやら、表情からは読み取れなかった。 <br>→ Không thể đọc được từ biểu cảm của anh ấy là đang vui hay đang buồn.
<br><br>何が原因なのやら、さっぱりわからない。 <br>→ Chẳng hiểu nguyên nhân là gì nữa.
<br>──────────<br><b>So sánh:</b>
<br>～か～か  (<b>N5</b>): Chỉ liệt kê lựa chọn.  のやら～のやら thể hiện sự không chắc chắn, sự phân vân của người nói về những lựa chọn/tình trạng đó.
<br><br>～とも～ともつかない  (<b>N1</b>): "Không thể nói là A hay B", gần nghĩa, nhấn mạnh sự khó phân định.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('143.  を踏まえて（をふまえて）: Dựa trên; xét đến ~', 'Common', '     <b>Công thức:</b> N +  を踏まえて
<br>──────────<br><b>Cách dùng:</b> Diễn tả việc thực hiện một hành động hoặc đưa ra một quyết định sau khi đã xem xét, cân nhắc, hoặc lấy một sự thật, kinh nghiệm, ý kiến (<b>N</b>) làm cơ sở, làm nền tảng, làm điểm xuất phát.
<br>──────────<br><b>Ý nghĩa:</b> Dựa trên...; Xét đến...; Căn cứ vào...; Sau khi xem xét...
<br>──────────<br><b>Chú ý:</b> Thường dùng trong các tình huống cần sự xem xét kỹ lưỡng trước khi hành động hoặc đưa ra kết luận.
<br>──────────<br><b>Ví dụ:</b>
<br>お客様のご意見を踏まえて、サービスを改善いたします。 <br>→ Chúng tôi sẽ cải thiện dịch vụ dựa trên ý kiến của quý khách.
<br><br>調査結果を踏まえて、今後の計画を立てる。 <br>→ Lập kế hoạch cho tương lai dựa trên kết quả điều tra.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～に基づいて  (<b>N2</b>): "Dựa trên", gần nghĩa, nhưng  を踏まえて thường nhấn mạnh việc "xem xét", "cân nhắc" và "hiểu rõ" yếu tố đó trước khi hành động.
<br><br>～を参考にして  (<b>N?</b>): "Tham khảo", mức độ phụ thuộc thấp hơn.
<br><br>～を考慮して  (<b>N?</b>): "Xem xét đến", "cân nhắc đến".') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('144.  を経て（をへて）: Qua; bằng cách; sau; thông qua ~', 'Common', '     <b>Công thức:</b> N (Thời gian/Địa điểm/Quá trình/Kinh nghiệm) +  を経て
<br>──────────<br><b>Cách dùng:</b> Diễn tả việc đi qua một địa điểm, trải qua một khoảng thời gian, hoặc trải qua một quá trình/kinh nghiệm nào đó để đi đến một kết quả hoặc trạng thái mới.
<br>──────────<br><b>Ý nghĩa:</b> Trải qua...; Thông qua...; Sau khi...
<br>──────────<br><b>Chú ý:</b> Động từ gốc là  経る (へる). Nhấn mạnh quá trình hoặc sự trải nghiệm.
<br>──────────<br><b>Ví dụ:</b>
<br>長い年月を経て、その技術は完成した。 <br>→ Sau khi trải qua một thời gian dài, kỹ thuật đó đã được hoàn thiện.
<br><br>多くの困難を経て、二人は結ばれた。 <br>→ Trải qua nhiều khó khăn, hai người đã đến được với nhau.
<br><br>パリを経て、ロンドンへ向かった。 <br>→ Đi London qua ngả Paris.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～を通って  (<b>N4</b>): "Đi qua" (chỉ địa điểm).  を経て có thể dùng cho cả thời gian, quá trình, kinh nghiệm.
<br><br>～後で  (<b>N5</b>): "Sau khi", chỉ thứ tự thời gian.  を経て thường nhấn mạnh quá trình và sự thay đổi/kết quả sau quá trình đó.
<br><br>～を通じて  /  ～を通して  (<b>N3</b>): "Thông qua" (phương tiện, người trung gian, hoặc suốt một khoảng thời gian).') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('145.  を控えて（をひかえて）: Sắp đến; đã đến lúc; gần; trước ~', 'Common', '     <b>Công thức:</b> N (Sự kiện/Thời gian quan trọng) +  を控えて
<br>──────────<br><b>Cách dùng:</b> Diễn tả rằng một sự kiện hoặc thời điểm quan trọng (<b>N</b>) sắp xảy ra, và thường đi kèm với việc chuẩn bị, một trạng thái chờ đợi, hoặc một hành động nào đó trước thềm sự kiện đó.
<br>──────────<br><b>Ý nghĩa:</b> Trước (thời điểm/sự kiện)...; Sắp đến...; Cận kề...
<br>──────────<br><b>Chú ý:</b> Thường dùng cho các sự kiện lớn, quan trọng, có tính bước ngoặt.
<br>──────────<br><b>Ví dụ:</b>
<br>試験を控えて、学生たちは緊張している。 <br>→ Trước kỳ thi, các học sinh đang rất căng thẳng.
<br><br>結婚式を控えて、準備に追われている。 <br>→ Sắp đến đám cưới nên tôi đang bận rộn chuẩn bị.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～前に  (<b>N5</b>): "Trước khi".  を控えて nhấn mạnh sự "cận kề" của một sự kiện quan trọng và thường hàm ý sự chuẩn bị hoặc một trạng thái đặc biệt.
<br><br>～間近に  (<b>N?</b>): "Gần kề", "sắp đến".') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('146.  をいいことに: Lợi dụng ~', 'Common', '     <b>Công thức:</b> (Thể thông thường) +  の +  をいいことに / N +  をいいことに
<br>──────────<br><b>Cách dùng:</b> Diễn tả việc lợi dụng một tình huống hoặc điều kiện thuận lợi nào đó (thường là sự vắng mặt, sự không biết, sự cho phép, hoặc điểm yếu của người khác) để làm một việc không tốt hoặc không nên làm.
<br>──────────<br><b>Ý nghĩa:</b> Lợi dụng việc...; Nhân lúc... (để làm điều không tốt).
<br>──────────<br><b>Chú ý:</b> Luôn mang hàm ý tiêu cực, phê phán hành vi lợi dụng.
<br>──────────<br><b>Ví dụ:</b>
<br>先生がいないのをいいことに、生徒たちは騒いでいた。 <br>→ Lợi dụng lúc giáo viên vắng mặt, học sinh đã làm ầm lên.
<br><br>誰も見ていないのをいいことに、彼はこっそりお菓子を食べた。 <br>→ Nhân lúc không ai nhìn, cậu ta đã lén ăn kẹo.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～に乗じて  (<b>N1</b>): "Lợi dụng (cơ hội)", gần nghĩa, nhưng  をいいことに thường mang tính cá nhân hơn và có thể dùng cho những tình huống đời thường hơn.
<br><br>～おかげで  (<b>N4</b>): "Nhờ vào" (kết quả tốt).  をいいことに là "lợi dụng" (thường dẫn đến kết quả/hành động không tốt cho người khác hoặc cho tình huống chung).
<br><br>～を利用して  (<b>N3</b>): "Lợi dụng", "sử dụng", có thể trung tính hoặc tiêu cực.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('147.  を顧みず  /  も顧みず（をかえりみず  /  もかえりみず）: Bất chấp;
không xét đến; không lo lắng về; bất kể ~', 'Common', '     <b>Công thức:</b> N +  を顧みず /  も顧みず
<br>──────────<br><b>Cách dùng:</b> Diễn tả việc thực hiện một hành động mà không quan tâm, không màng đến những hậu quả, rủi ro, hoặc những điều quan trọng khác (<b>N</b>) có thể bị ảnh hưởng hoặc cần được xem xét.
<br>──────────<br><b>Ý nghĩa:</b> Bất chấp...; Không màng đến...; Bỏ qua...
<br>──────────<br><b>Chú ý:</b> Thường dùng để nói về những hành động dũng cảm, liều lĩnh, hoặc đôi khi là ích kỷ. Động từ gốc là  顧みる (かえりみる) - nhìn lại, xem xét, để ý đến.
<br>──────────<br><b>Ví dụ:</b>
<br>彼は危険を顧みず、子供を助けに火の中に飛び込んだ。 <br>→ Anh ấy đã bất chấp nguy hiểm, lao vào đám cháy để cứu đứa trẻ.
<br><br>彼は家庭も顧みず、仕事に没頭した。 <br>→ Anh ấy đã không màng đến gia đình, vùi đầu vào công việc.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～にもかかわらず  (<b>N3</b>): "Bất chấp", cách nói chung hơn.  を顧みず thường nhấn mạnh sự bỏ qua, không quan tâm đến hậu quả hoặc những thứ quan trọng một cách có ý thức hơn.
<br><br>～をものともせずに  (<b>N1</b>): "Bất chấp", thường dùng để ca ngợi sự dũng cảm, nghị lực khi đối mặt với khó khăn.  を顧みず có thể dùng cho cả trường hợp tiêu cực (bỏ bê).') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('148.  を限りに（をかぎりに）: Bắt đầu từ; lần cuối cùng (kết thúc một hành
động tiếp diễn)', 'Common', '     <b>Công thức:</b> N (Thời gian/Thời điểm cụ thể) +  を限りに
<br>──────────<br><b>Cách dùng:</b> Diễn tả rằng một hành động hoặc trạng thái đã kéo dài đến N (thời điểm) thì sẽ kết thúc, chấm dứt hoàn toàn tại thời điểm đó.
<br>──────────<br><b>Ý nghĩa:</b> Kể từ... (là hết); Đến hết... (thì thôi); Hôm nay/Tháng này/... là lần cuối cùng.
<br>──────────<br><b>Chú ý:</b> Dùng để tuyên bố chấm dứt một thói quen, một hoạt động, hoặc một trạng thái.
<br>──────────<br><b>Ví dụ:</b>
<br>今日を限りに、タバコをやめることにした。 <br>→ Kể từ hôm nay (hôm nay là ngày cuối), tôi quyết định bỏ thuốc lá.
<br><br>このレストランは今月を限りに閉店するそうだ。 <br>→ Nghe nói nhà hàng này sẽ đóng cửa vào cuối tháng này.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～まで  (<b>N5</b>): "Đến".  を限りに nhấn mạnh sự chấm dứt hoàn toàn tại thời điểm đó và không tiếp tục nữa.
<br><br>～を最後に  (<b>N2</b>): "Lần cuối là...", gần nghĩa, cũng chỉ sự chấm dứt.
<br><br>～をもって  (<b>N1</b>): Cũng có thể dùng để chỉ thời điểm kết thúc (ví dụ:  本日を
もって終了します), rất trang trọng.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('149.  を兼ねて（をかねて）: Cũng với mục đích ~', 'Common', '     <b>Công thức:</b> N +  を兼ねて
<br>──────────<br><b>Cách dùng:</b> Diễn tả rằng một hành động được thực hiện không chỉ với một mục đích chính mà còn kết hợp thêm một mục đích khác (<b>N</b>).
<br>──────────<br><b>Ý nghĩa:</b> Kiêm luôn...; Đồng thời cũng là để...; Kết hợp (hai mục đích).
<br>──────────<br><b>Chú ý:</b> Thường dùng khi một hành động có hai mục đích trở lên, và N thường là mục đích phụ hoặc bổ sung.
<br>──────────<br><b>Ví dụ:</b>
<br>父の退職祝いを兼ねて、家族旅行に行った。 <br>→ Chúng tôi đi du lịch gia đình, đồng thời cũng là để mừng bố nghỉ hưu.
<br><br>気分転換を兼ねて、少し散歩しませんか。 <br>→ Chúng ta đi dạo một chút, kiêm luôn thay đổi không khí, được không?
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～かたがた  (<b>N1</b>): "Nhân tiện", "đồng thời", gần nghĩa, nhưng  を兼ねて
nhấn mạnh hơn vào việc "kết hợp mục đích" một cách có chủ ý.
<br><br>～がてら  (<b>N1</b>): "Nhân tiện", thường dùng với hành động phụ khi đang làm hành động chính (thường là di chuyển).
<br><br>～ついでに  (<b>N3</b>): "Nhân tiện", phổ biến nhất, chỉ việc làm thêm một hành động phụ khi có cơ hội.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('150.  を皮切りに（をかわきりに）: Bắt đầu với; lần lượt ~', 'Common', '     <b>Công thức:</b> N +  を皮切りに (して) /  を皮切りとして
<br>──────────<br><b>Cách dùng:</b> Diễn tả rằng một sự việc (<b>N</b>) là điểm khởi đầu, sau đó hàng loạt các sự việc tương tự hoặc liên quan khác bắt đầu diễn ra một cách liên tiếp và mạnh mẽ, thường theo một chiều hướng tích cực hoặc sôi động.
<br>──────────<br><b>Ý nghĩa:</b> Bắt đầu từ..., sau đó là...; Mở đầu bằng..., tiếp theo là...
<br>──────────<br><b>Chú ý:</b> Thường dùng cho các sự kiện, hoạt động lan rộng hoặc phát triển mạnh mẽ.
<br>──────────<br><b>Ví dụ:</b>
<br>東京公演を皮切りに、全国ツアーが始まった。 <br>→ Bắt đầu từ buổi biểu diễn ở Tokyo, chuyến lưu diễn toàn quốc đã được khởi động.
<br><br>彼の発言を皮切りとして、議論が活発になった。 <br>→ Bắt đầu từ phát ngôn của anh ấy, cuộc thảo luận đã trở nên sôi nổi.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～をはじめ  (<b>N3</b>): "Trước tiên là", dùng để nêu ví dụ tiêu biểu trong một nhóm.  を皮切りに nhấn mạnh điểm khởi đầu của một chuỗi sự kiện phát triển liên tiếp.
<br><br>～から始まって  (<b>N?</b>): "Bắt đầu từ", cách nói thông thường, không nhấn mạnh tính lan tỏa mạnh mẽ như  を皮切りに.
<br><br>～を手始めに  (<b>N?</b>): "Bắt đầu bằng việc...", gần nghĩa.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('151.  を機に（をきに）: Như một cơ hội/dịp để ~', 'Common', '     <b>Công thức:</b> N / V-る/V-た +  の +  を機に
<br>──────────<br><b>Cách dùng:</b> Diễn tả rằng một sự kiện hoặc thời điểm nào đó (N/V) trở thành một cơ hội, một cái cớ tốt để bắt đầu hoặc thay đổi một điều gì đó một cách có ý thức.
<br>──────────<br><b>Ý nghĩa:</b> Nhân dịp...; Lấy... làm cơ hội...; Từ khi... (có sự thay đổi).
<br>──────────<br><b>Chú ý:</b> Thường dùng khi muốn tận dụng một sự kiện để làm một việc mới hoặc thay đổi quan trọng.
<br>──────────<br><b>Ví dụ:</b>
<br>入院したのを機に、お酒をやめることにした。 <br>→ Nhân dịp nhập viện, tôi quyết định bỏ rượu.
<br><br>会社の創立 10 周年を機に、新しいロゴが作られた。 <br>→ Nhân dịp kỷ niệm 10 năm thành lập công ty, logo mới đã được tạo ra.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～きっかけに  (<b>N3</b>): "Nhân cơ hội", "do" (sự kiện làm động lực).  を機に thường mang tính chủ động hơn, "lấy đó làm cơ hội" để thực hiện một quyết định.
<br><br>～際に  (<b>N3</b>): "Khi", "vào dịp", chỉ thời điểm, không nhất thiết phải là cơ hội để thay đổi.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('152.  を禁じ得ない（をきんじえない）: Không thể không; không thể kìm
nén ~', 'Common', '     <b>Công thức:</b> N (Danh từ chỉ cảm xúc) +  を禁じ得ない
<br>──────────<br><b>Cách dùng:</b> Diễn tả rằng một cảm xúc mạnh mẽ nào đó (<b>N</b>) trào dâng một cách tự nhiên và không thể kìm nén lại được, dù có muốn.
<br>──────────<br><b>Ý nghĩa:</b> Không thể cầm được...; Không thể không cảm thấy...; Không kìm được...
<br>──────────<br><b>Chú ý:</b> Cách nói trang trọng, văn viết. Thường đi với các danh từ chỉ cảm xúc (涙 - nước mắt,  怒り - tức giận,  同情 - đồng cảm,  驚き - ngạc nhiên,  笑い - tiếng cười...).
<br>──────────<br><b>Ví dụ:</b>
<br>彼の不幸な身の上話に、涙を禁じ得なかった。 <br>→ Nghe câu chuyện bất hạnh của anh ấy, tôi không thể cầm được nước mắt.
<br><br>その理不尽な決定には、怒りを禁じ得ない。 <br>→ Trước quyết định vô lý đó, tôi không thể không cảm thấy tức giận.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～てたまらない  (<b>N3</b>): "Không chịu nổi", cũng diễn tả cảm xúc mạnh không kìm nén được, nhưng suồng sã hơn.  を禁じ得ない trang trọng hơn và thường dùng cho những cảm xúc sâu sắc.
<br><br>～ざるを得ない  (<b>N1</b>): "Buộc phải làm", chỉ hành động bị bắt buộc.  を禁じ
得ない chỉ cảm xúc không thể kìm nén.
<br><br>思わず～てしまう  (<b>N3</b>): "Bất giác làm...", chỉ hành động vô thức do cảm xúc.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('153.  をものともせずに: Bất chấp; không thua/sợ/lo lắng về ~', 'Common', '     <b>Công thức:</b> N +  をものともせずに
<br>──────────<br><b>Cách dùng:</b> Diễn tả việc thực hiện một hành động một cách dũng cảm, mạnh mẽ, bất chấp những khó khăn, trở ngại, hoặc điều kiện bất lợi (<b>N</b>), xem nhẹ chúng.
<br>──────────<br><b>Ý nghĩa:</b> Bất chấp...; Vượt qua...; Coi nhẹ...
<br>──────────<br><b>Chú ý:</b> Thường dùng để ca ngợi sự dũng cảm, nghị lực, ý chí mạnh mẽ.
<br>──────────<br><b>Ví dụ:</b>
<br>彼は周囲の反対をものともせずに、自分の道を突き進んだ。 <br>→ Anh ấy đã bất chấp sự phản đối của mọi người, tiến bước trên con đường của mình.
<br><br>嵐をものともせずに、船は進んでいった。 <br>→ Bất chấp cơn bão, con thuyền vẫn tiến lên.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～にもかかわらず  (<b>N3</b>): "Bất chấp".  をものともせずに nhấn mạnh hơn vào sự dũng cảm, nghị lực khi đối mặt với khó khăn và vượt qua nó.
<br><br>～を顧みず  (<b>N1</b>): "Bất chấp", nhưng có thể mang cả ý nghĩa tiêu cực (ích kỷ, bỏ bê).  をものともせずに thường mang nghĩa tích cực (dũng cảm, kiên cường).
<br><br>～に負けずに  (<b>N?</b>): "Không thua...", "cố gắng vượt qua...".') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('154.  をもって  /  をもちまして: Bằng cách; với; vào (thời gian)', 'Common', '     <b>Công thức:</b> N +  をもって /  をもちまして
<br>──────────<br><b>Cách dùng:</b>
1.   Diễn tả phương tiện, cách thức thực hiện hành động (trang trọng).
2.   Diễn tả thời điểm kết thúc một sự kiện hoặc trạng thái (rất trang trọng, thường trong thông báo).
<br>──────────<br><b>Ý nghĩa:</b> 1. Bằng...; Với... 2. Vào lúc... (kết thúc); Kể từ...
<br>──────────<br><b>Chú ý:</b> Cách nói rất trang trọng, thường dùng trong thông báo chính thức, văn bản.
をもちまして lịch sự hơn  をもって.
<br>──────────<br><b>Ví dụ:</b>
<br>実力をもって、彼を選んだ。 <br>→ Chúng tôi đã chọn anh ấy bằng thực lực.
<br><br>本日をもちまして、受付を終了させていただきます。 <br>→ Chúng tôi xin
phép kết thúc việc tiếp nhận vào ngày hôm nay. (Kể từ hôm nay là kết thúc)
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～で  (<b>N5</b>): Chỉ phương tiện, cách thức thông thường.  をもって trang trọng hơn.
<br><br>～を限りに  (<b>N1</b>): Chỉ thời điểm kết thúc.  をもって/をもちまして cũng vậy nhưng trang trọng hơn và thường dùng trong thông báo chính thức kết thúc một giai đoạn/sự kiện.
<br><br>～によって  (<b>N3</b>): "Bằng cách", "do", chỉ phương tiện hoặc nguyên nhân.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('155.  をおいて～ない: Chỉ; chỉ có thể là; không có lựa chọn nào khác, chỉ ~', 'Common', '     <b>Công thức:</b> N +  をおいて +  他にない /  ほかにない
<br>──────────<br><b>Cách dùng:</b> Dùng để khẳng định mạnh mẽ rằng ngoài N ra, không có ai/cái gì khác có thể làm được điều đó hoặc phù hợp hơn. Nhấn mạnh tính độc nhất, không thể thay thế của N.
<br>──────────<br><b>Ý nghĩa:</b> Ngoài N ra thì không còn ai/cái gì khác...; Chỉ có N mới...; Không ai/cái gì khác ngoài N...
<br>──────────<br><b>Chú ý:</b> Dùng để đánh giá rất cao N, xem N là lựa chọn duy nhất hoặc tốt nhất.
<br>──────────<br><b>Ví dụ:</b>
<br>この仕事を任せられるのは、彼をおいて他にいない。 <br>→ Người có thể giao phó công việc này, ngoài anh ấy ra thì không còn ai khác.
<br><br>日本一の景色と言えるのは、ここをおいて他にないだろう。 <br>→ Nơi có thể nói là cảnh đẹp nhất Nhật Bản, có lẽ ngoài nơi đây ra thì không còn nơi nào khác.
<br>──────────<br><b>So sánh:</b>
<br>～だけ  (<b>N5</b>) /  ～しか～ない  (<b>N4</b>): "Chỉ".  をおいて～ない mang sắc thái nhấn mạnh sự độc nhất vô nhị và đánh giá cao hơn, trang trọng hơn.
<br><br>～ならでは  (<b>N1</b>): "Chỉ có ở...", "đặc trưng của...", nhấn mạnh tính độc đáo.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('156.  を押して  /  を押し切って（をおして  /  をおしきって）: Vượt qua (sự
phản đối); vượt qua ~', 'Common', '     <b>Công thức:</b> N (Sự phản đối/khó khăn/ngăn cản) +  を押して /  を押し切って
<br>──────────<br><b>Cách dùng:</b> Diễn tả việc thực hiện một hành động bất chấp sự phản đối, khó khăn, hoặc điều kiện không thuận lợi (<b>N</b>).  押し切って mang ý nghĩa mạnh mẽ hơn, thể hiện sự quyết tâm "bất chấp đến cùng" để thực hiện.
<br>──────────<br><b>Ý nghĩa:</b> Bất chấp...; Vượt qua...; Gạt bỏ... (để làm).
<br>──────────<br><b>Chú ý:</b> Thường dùng để nói về những hành động quyết đoán, đôi khi là liều lĩnh hoặc cứng đầu.
<br>──────────<br><b>Ví dụ:</b>
<br>彼は家族の反対を押して、留学を決めた。 <br>→ Anh ấy đã quyết định đi du học, bất chấp sự phản đối của gia đình.
<br><br>周囲の制止を押し切って、彼は危険な場所に足を踏み入れた。 <br>→ Bất chấp sự ngăn cản của mọi người xung quanh, anh ta đã bước chân vào nơi nguy hiểm.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～をものともせずに  (<b>N1</b>): "Bất chấp", cũng nhấn mạnh sự dũng cảm, nghị lực.  を押して/を押し切って thường tập trung hơn vào việc vượt qua sự phản đối hoặc sự ngăn cản cụ thể.
<br><br>～にもかかわらず  (<b>N3</b>): "Bất chấp", cách nói chung hơn, không nhất thiết phải có sự đối đầu.
<br><br>～を顧みず  (<b>N1</b>): "Bất chấp", "không màng đến", có thể dùng cho cả việc bỏ qua rủi ro hoặc trách nhiệm.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('157.  を境に（をさかいに）: Kể từ ~ (chỉ một thay đổi lớn trước & sau)', 'Common', '     <b>Công thức:</b> N (Thời điểm/Sự kiện mang tính bước ngoặt) +  を境に (して)
<br>──────────<br><b>Cách dùng:</b> Diễn tả rằng một thời điểm hoặc sự kiện (<b>N</b>) là mốc đánh dấu quan trọng, mà kể từ đó, một sự thay đổi lớn và rõ rệt đã xảy ra (so với trước đó).
<br>──────────<br><b>Ý nghĩa:</b> Kể từ (mốc)...; Lấy... làm ranh giới... (thì có sự thay đổi lớn).
<br>──────────<br><b>Chú ý:</b> Nhấn mạnh sự thay đổi lớn, rõ rệt trước và sau một mốc cụ thể.
<br>──────────<br><b>Ví dụ:</b>
<br>オリンピックを境に、その都市は大きく発展した。 <br>→ Kể từ Olympic, thành phố đó đã phát triển rất nhiều.
<br><br>退職を境にして、生活リズムが変わった。 <br>→ Kể từ khi nghỉ hưu, nhịp sống của tôi đã thay đổi.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～てから  (<b>N5</b>): "Sau khi", chỉ thứ tự thời gian thông thường.  を境に nhấn mạnh sự thay đổi lớn tại một mốc cụ thể.
<br><br>～をきっかけに  (<b>N3</b>) /  ～を機に  (<b>N1</b>): "Nhân cơ hội", "do", chỉ sự kiện khởi đầu cho một hành động/thay đổi.  を境に chỉ mốc thời gian phân chia rõ rệt hai trạng thái.
<br><br>～以来  (<b>N3</b>): "Kể từ khi", chỉ một trạng thái tiếp diễn từ một mốc trong quá khứ.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('158.  を余儀なくされる（をよぎなくされる）: Bị buộc phải làm gì đó vì
không có lựa chọn nào khác', 'Common', '     <b>Công thức:</b> N +  を余儀なくされる / V-る +  こと +  を余儀なくされる
<br>──────────<br><b>Cách dùng:</b> Diễn tả việc bị đẩy vào tình thế bắt buộc phải làm một điều gì đó (thường là không mong muốn, tiêu cực) do hoàn cảnh bên ngoài, không còn lựa chọn nào khác.
<br>──────────<br><b>Ý nghĩa:</b> Bị buộc phải...; Đành phải... (trong tình thế không mong muốn).
<br>──────────<br><b>Chú ý:</b> Là dạng bị động của  を余儀なくさせる (buộc phải). Cách nói trang trọng, thường dùng cho những tình huống tiêu cực, bất khả kháng.
<br>──────────<br><b>Ví dụ:</b>
<br>災害のため、住民たちは避難生活を余儀なくされた。 <br>→ Do thảm họa, người dân đã bị buộc phải sống cuộc sống sơ tán.
<br><br>会社が倒産し、多くの社員が職を失うことを余儀なくされた。 <br>→ Công ty phá sản, nhiều nhân viên đã bị buộc phải mất việc.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～なければならない  (<b>N4</b>): "Phải", thể hiện sự cần thiết hoặc bắt buộc nói chung.  を余儀なくされる nhấn mạnh sự bắt buộc do hoàn cảnh bên ngoài và thường là điều không mong muốn.
<br><br>～ざるを得ない  (<b>N1</b>): "Không thể không...", "buộc phải...", gần nghĩa, cũng diễn tả sự bắt buộc không mong muốn, nhưng  を余儀なくされる thường dùng với danh từ hơn và mang tính bị động mạnh hơn.
<br><br>～しかない  (<b>N4</b>): "Chỉ còn cách", cũng thể hiện sự không có lựa chọn.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('159.  をよそに: Bất chấp; không quan tâm đến ~', 'Common', '     <b>Công thức:</b> N +  をよそに
<br>──────────<br><b>Cách dùng:</b> Diễn tả việc một hành động nào đó diễn ra mà hoàn toàn không để ý, không quan tâm đến những người, ý kiến, hoặc tình hình xung quanh (<b>N</b>), thường là những thứ đáng lẽ phải quan tâm hoặc chịu ảnh hưởng.
<br>──────────<br><b>Ý nghĩa:</b> Bất chấp...; Mặc kệ...; Bỏ ngoài tai...; Không đếm xỉa đến...
<br>──────────<br><b>Chú ý:</b> Thường mang hàm ý phê phán hoặc ngạc nhiên trước sự thờ ơ, không quan tâm, hoặc sự độc lập quá mức.
<br>──────────<br><b>Ví dụ:</b>
<br>住民の心配をよそに、ダムの建設計画が進められている。 <br>→ Bất chấp sự lo lắng của người dân, kế hoạch xây dựng đập vẫn đang được tiến hành.
<br><br>親の期待をよそに、彼は大学を中退してしまった。 <br>→ Mặc kệ sự kỳ vọng của bố mẹ, anh ta đã bỏ học đại học.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～を無視して  (<b>N?</b>): "Phớt lờ", gần nghĩa, nhưng  をよそに thường có sắc thái "không thèm để ý đến" một cách tự nhiên hơn, hoặc là người khác không biết.
<br><br>～にもかかわらず  (<b>N3</b>): "Bất chấp", cách nói chung hơn.  をよそに
thường nhấn mạnh sự thờ ơ với ý kiến/tình cảm của người khác.
<br><br>～を尻目に  (<b>N?</b>): "Lờ đi", "bỏ ngoài mắt", gần nghĩa, cũng mang ý không quan tâm.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('160.  を前提として（をぜんていとして）: Với ý định; với điều kiện / giả
định ~', 'Common', '     <b>Công thức:</b> N / (Mệnh đề thể thông thường +  こと) +  を前提として /  を前提に (
して)
<br>──────────<br><b>Cách dùng:</b> Diễn tả rằng một hành động hoặc kế hoạch nào đó được thực hiện dựa trên một điều kiện hoặc giả định (N/Mệnh đề) được đặt ra trước đó và được coi là nền tảng.
<br>──────────<br><b>Ý nghĩa:</b> Với điều kiện là...; Dựa trên tiền đề là...; Giả định rằng...
<br>──────────<br><b>Chú ý:</b> Nhấn mạnh điều kiện tiên quyết hoặc giả định cơ bản.
<br>──────────<br><b>Ví dụ:</b>
<br>来年結婚することを前提として、家を探している。 <br>→ Tôi đang tìm nhà với giả định là sẽ kết hôn vào năm sau.
<br><br>この計画は、予算が確保されることを前提に立てられている。 <br>→ Kế hoạch này được lập ra với tiền đề là ngân sách sẽ được đảm bảo.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～を条件に  (<b>N2</b>): "Với điều kiện là", gần nghĩa, nhưng  を前提として thường nhấn mạnh giả định hoặc nền tảng rộng hơn, không chỉ là một điều kiện cụ thể.
<br><br>～ものとして  (<b>N1</b>): "Coi như là", "giả định là", cũng dựa trên giả định, nhưng  を前提として thường dùng cho các kế hoạch, thảo luận có tính hệ thống hơn.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('161.  思いをする（おもいをする）: Nghĩ; cảm thấy ~', 'Common', '     <b>Công thức:</b> (Tính từ đuôi  い / Tính từ đuôi  な +  な / Trạng thái) +  思いをする
<br>──────────<br><b>Cách dùng:</b> Dùng để diễn tả việc trải qua, nếm trải một cảm giác, một suy nghĩ, hoặc một trải nghiệm nào đó (thường là không dễ chịu, khó chịu, hoặc đáng nhớ).
<br>──────────<br><b>Ý nghĩa:</b> Trải qua cảm giác...; Cảm thấy...; Có một trải nghiệm...
<br>──────────<br><b>Chú ý:</b> Thường đi với các từ chỉ cảm xúc hoặc trải nghiệm (辛い,  悲しい,  嫌な,  怖
い,  恥ずかしい,  いい,  不思議な...).
<br>──────────<br><b>Ví dụ:</b>
<br>戦争で、多くの人が辛い思いをした。 <br>→ Trong chiến tranh, nhiều người đã trải qua những cảm giác đau khổ.
<br><br>人前で転んで、恥ずかしい思いをした。 <br>→ Tôi đã bị ngã trước mặt mọi người và cảm thấy rất xấu hổ.
<br><br>あんな素敵なレストランで食事できて、いい思いをした。 <br>→ Được ăn ở một nhà hàng tuyệt vời như vậy, tôi đã có một trải nghiệm thật tốt.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～と感じる  (<b>N4</b>): "Cảm thấy", cách nói thông thường.  思いをする thường nhấn mạnh việc "trải nghiệm" cảm giác đó một cách sâu sắc hơn, thường là một sự việc cụ thể.
<br><br>～経験をする  (<b>N4</b>): "Trải qua kinh nghiệm".') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('162.  折に（おりに）: Khi; vào lúc; vào dịp ~', 'Common', '     <b>Công thức:</b> N +  の +  折に / V-る/V-た +  折に
<br>──────────<br><b>Cách dùng:</b> Dùng để chỉ một thời điểm hoặc một dịp đặc biệt nào đó, thường là một cơ hội tốt hoặc một thời điểm thích hợp.
<br>──────────<br><b>Ý nghĩa:</b> Nhân dịp...; Vào lúc...; Khi có cơ hội...
<br>──────────<br><b>Chú ý:</b> Cách nói trang trọng hơn  とき, thường dùng trong thư từ, lời mời, hoặc các tình huống lịch sự, trang trọng.
<br>──────────<br><b>Ví dụ:</b>
<br>次回お会いした折に、詳しくお話しします。 <br>→ Vào dịp gặp gỡ lần tới, tôi sẽ nói chuyện chi tiết hơn.
<br><br>来日の折には、ぜひ我が家にお立ち寄りください。 <br>→ Nhân dịp ngài đến Nhật, xin nhất định hãy ghé qua nhà tôi.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～とき  (<b>N5</b>): "Khi", phổ biến nhất.  折に trang trọng hơn và thường chỉ những dịp đặc biệt, có tính chất cơ hội.
<br><br>～際  (<b>N3</b>): "Khi", cũng trang trọng, thường dùng trong hướng dẫn, thông báo chính thức, không nhất thiết phải là dịp tốt.
<br><br>～機会に  (<b>N3</b>): "Nhân cơ hội".') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('163.  およそ: Khoảng; gần như; nói chung; xấp xỉ; hoàn toàn ~', 'Common', '     <b>Công thức:</b>  およそ + (Số lượng) /  およそ + N /  およそ +  ～ない
<br>──────────<br><b>Cách dùng:</b>
1.   Dùng để chỉ số lượng xấp xỉ, khoảng chừng.
2.   Dùng để chỉ sự khái quát, nói chung, đại khái.
3.   Khi đi với phủ định (およそ～ない), có nghĩa là "hoàn toàn không", "không chút nào".
<br>──────────<br><b>Ý nghĩa:</b> Khoảng...; Đại khái...; Hoàn toàn... (không).
<br>──────────<br><b>Chú ý:</b> Là cách nói có phần trang trọng hoặc dùng trong văn viết, phát biểu.
<br>──────────<br><b>Ví dụ:</b>
<br>会場にはおよそ千人の人が集まった。 <br>→ Tại hội trường có khoảng 1000 người tập trung.
<br><br>およその見当はついている。 <br>→ Tôi đã nắm được đại khái tình hình.
<br><br>それは私にはおよそ関係のないことだ。 <br>→ Chuyện đó hoàn toàn không
liên quan đến tôi.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>約  (<b>N4</b>) /  ぐらい・くらい  (<b>N5</b>): "Khoảng" (cho số lượng), phổ biến hơn trong văn nói.
<br><br>大体  (<b>N4</b>): "Đại khái", "nói chung".
<br><br>全然  /  全く  (<b>N5/N4</b>): "Hoàn toàn" (khi đi với phủ định), phổ biến hơn.  およ
そ～ない trang trọng hơn.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('164.  さ: Hậu tố cuối câu; biểu thị sự khẳng định', 'Common', '     <b>Công thức:</b> (Mệnh đề) +  さ
<br>──────────<br><b>Cách dùng:</b> Dùng ở cuối câu, chủ yếu trong văn nói thân mật, thường do nam giới sử dụng, để khẳng định nhẹ nhàng ý kiến của mình, bày tỏ sự chắc chắn, hoặc để thu hút sự chú ý, đồng tình của người nghe một cách thân mật.
<br>──────────<br><b>Ý nghĩa:</b> ... đấy; ... mà; ... chứ.
<br>──────────<br><b>Chú ý:</b> Thường do nam giới sử dụng trong các tình huống không trang trọng. Có thể mang sắc thái hơi áp đặt nhẹ hoặc tự tin. Khác với hậu tố  さ tạo danh từ từ tính từ (N4 -  例:  高さ).
<br>──────────<br><b>Ví dụ:</b>
<br>そんなこと、当たり前ださ。 <br>→ Chuyện đó là đương nhiên rồi mà.
<br><br>大丈夫だよ、心配するなさ。 <br>→ Không sao đâu, đừng lo lắng mà.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～よ  (<b>N5</b>): Cũng dùng cuối câu để khẳng định hoặc thông báo, nhưng  さ có thể mang sắc thái thân mật, dân dã hơn hoặc hơi nam tính hơn, đôi khi là tự tin hơn.
<br><br>～ぜ  /  ～ぞ  (<b>N1</b>): Cũng là hậu tố cuối câu nam tính, nhưng thường mạnh mẽ hơn, mang tính rủ rê, mệnh lệnh hoặc cảnh báo.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('165.  さも: Thực sự (có vẻ, v.v.); quả thực; như thể ~', 'Common', '     <b>Công thức:</b>  さも + A-そうに / A-げに /  ～かのように / (Trạng từ chỉ cảm xúc)
<br>──────────<br><b>Cách dùng:</b> Dùng để nhấn mạnh rằng một hành động hoặc trạng thái trông thực sự hoặc rất giống như đang có một cảm xúc hoặc tình trạng nào đó, hoặc được thực hiện một cách ra vẻ như vậy, mặc dù thực tế có thể không phải vậy.
<br>──────────<br><b>Ý nghĩa:</b> Trông rất...; Cứ như thể là...; Ra vẻ...
<br>──────────<br><b>Chú ý:</b> Thường đi với các từ chỉ vẻ bề ngoài hoặc cảm xúc (嬉しそうに - trông có vẻ vui,  悲しそうに - trông có vẻ buồn,  知っているかのように - cứ như thể là biết,  もっともらしく - ra vẻ hợp lý).
<br>──────────<br><b>Ví dụ:</b>
<br>彼はさも嬉しそうにプレゼントを受け取った。 <br>→ Anh ấy nhận quà với vẻ mặt trông rất vui.
<br><br>彼女はさも自分が被害者であるかのように話した。 <br>→ Cô ta nói chuyện cứ như thể mình là người bị hại vậy.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>いかにも  (<b>N1</b>): "Quả đúng là", gần nghĩa, cũng nhấn mạnh sự phù hợp với một hình mẫu, nhưng  さも thường tập trung hơn vào việc mô tả cách ai đó hành động hoặc vẻ bề ngoài thể hiện cảm xúc.
<br><br>まるで～ようだ  (<b>N3</b>): "Cứ như là", dùng để ví von.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('166.  さもないと: Nếu không thì; hoặc là; nếu không ~', 'Common', '     <b>Công thức:</b> (Mệnh đề chỉ thị/yêu cầu/điều kiện) +  さもないと + (Kết quả xấu)
<br>──────────<br><b>Cách dùng:</b> Dùng để cảnh báo rằng nếu không làm theo điều được nói ở vế trước (hoặc nếu tình trạng đó không thay đổi), thì một kết quả xấu, không mong muốn sẽ xảy ra.
<br>──────────<br><b>Ý nghĩa:</b> Nếu không (làm thế) thì...; Nếu không, thì...
<br>──────────<br><b>Chú ý:</b> Là cách nói khá cứng, thường dùng để cảnh báo hoặc đe dọa nhẹ. Viết liền  さもないと.
<br>──────────<br><b>Ví dụ:</b>
<br>早く起きなさい。さもないと、学校に遅刻するよ。 <br>→ Dậy nhanh lên. Nếu không thì sẽ muộn học đấy.
<br><br>もっと勉強しなさい。さもないと、試験に落ちるぞ。 <br>→ Học hành chăm chỉ hơn đi. Nếu không thì sẽ trượt kỳ thi đấy.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～ないと  /  ～なければ  (<b>N4</b>): "Nếu không thì...", phổ biến hơn và trung tính hơn.  さもないと thường mang tính cảnh báo mạnh hơn và vế sau luôn là kết quả tiêu cực.
<br><br>そうしないと  (<b>N?</b>): "Nếu không làm thế thì", gần nghĩa.
<br><br>もし～なければ  (<b>N4</b>): "Nếu không...", nhấn mạnh điều kiện giả định.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('167.  さぞ: Chắc chắn; nhất định; không nghi ngờ gì; quả thực ~', 'Common', '     <b>Công thức:</b>  さぞ（かし） +  ～だろう /  ～でしょう /  ～ことだろう /  ～と推察します
<br>──────────<br><b>Cách dùng:</b> Dùng để thể hiện sự suy đoán, đồng cảm mạnh mẽ của người nói về cảm xúc hoặc tình trạng của người khác (thường là người không có mặt hoặc không thể trực tiếp biết được), cho rằng điều đó chắc chắn là như vậy, dựa trên tình huống.
<br>──────────<br><b>Ý nghĩa:</b> Chắc hẳn là...; Hẳn là... (lắm).
<br>──────────<br><b>Chú ý:</b> Thường đi với các từ chỉ cảm xúc hoặc trạng thái (嬉しい,  悲しい,  疲れた,
大変,  心配...). Thể hiện sự đồng cảm, thấu hiểu.  さぞかし nhấn mạnh hơn  さぞ.
<br>──────────<br><b>Ví dụ:</b>
<br>慣れない土地での生活は、さぞ大変だろう。 <br>→ Cuộc sống ở một vùng đất xa lạ chắc hẳn là vất vả lắm.
<br><br>合格の知らせを聞いて、ご両親はさぞかしお喜びでしょう。 <br>→ Nghe tin đỗ, chắc hẳn bố mẹ bạn vui lắm.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>きっと～だろう  (<b>N4</b>): "Chắc chắn là", cũng là suy đoán, nhưng  さぞ
thường mang sắc thái đồng cảm, chia sẻ cảm xúc và thường trang trọng hơn.
<br><br>～に違いない  (<b>N3</b>): "Chắc chắn là", dựa trên bằng chứng hoặc suy luận logic mạnh.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('168.  始末だ（しまつだ）: Cuối cùng; rốt cuộc; kết quả là (tiêu cực)', 'Common', '     <b>Công thức:</b> (Mệnh đề chỉ quá trình dẫn đến kết quả xấu) +  この /  その /  あの +  始
末だ
<br>──────────<br><b>Cách dùng:</b> Dùng để chỉ một kết quả xấu, một tình trạng tồi tệ không mong muốn xảy ra sau một loạt các sự kiện hoặc hành động không tốt trước đó.
<br>──────────<br><b>Ý nghĩa:</b> Kết cục là thế này đây; Rốt cuộc lại ra nông nỗi này; Cuối cùng thì (thành ra tệ hại).
<br>──────────<br><b>Chú ý:</b> Luôn dùng cho kết quả tiêu cực. Thường thể hiện sự thất vọng, chán nản, hoặc phê phán.
<br>──────────<br><b>Ví dụ:</b>
<br>彼は毎日遅刻ばかりして、とうとう会社をクビになる始末だ。 <br>→ Anh ta ngày nào cũng đi muộn, rốt cuộc đã bị công ty đuổi việc.
<br><br>ギャンブルに手を出して、借金まみれの始末だ。 <br>→ Dính vào cờ bạc, kết cục là ngập trong nợ nần.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>結局  (<b>N3</b>): "Kết cục", "cuối cùng", có thể dùng cho cả kết quả tốt và xấu.  始
末だ chỉ dùng cho kết quả xấu và thường mang tính phê phán.
<br><br>羽目になる  (<b>N1</b>): "Rơi vào tình thế (khó xử)", gần nghĩa, cũng chỉ kết quả
xấu, nhưng  始末だ thường nhấn mạnh kết quả cuối cùng sau một quá trình tiêu cực kéo dài.
<br><br>～あげく  (<b>N2</b>): "Sau một hồi... cuối cùng thì (kết quả xấu)".') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('169.  そばから: Ngay sau khi ~', 'Common', '     <b>Công thức:</b> V-る / V-た +  そばから
<br>──────────<br><b>Cách dùng:</b> Diễn tả rằng một hành động (vế sau) xảy ra ngay lập tức sau khi một hành động khác (vế trước) vừa kết thúc, và điều này thường lặp đi lặp lại nhiều lần, mang ý nghĩa không có tác dụng, làm không xuể, hoặc gây khó chịu.
<br>──────────<br><b>Ý nghĩa:</b> Vừa mới... thì lại... (lặp đi lặp lại một cách khó chịu).
<br>──────────<br><b>Chú ý:</b> Thường mang sắc thái tiêu cực, thể hiện sự mệt mỏi, bất lực trước sự lặp lại đó, hoặc sự việc xảy ra quá nhanh.
<br>──────────<br><b>Ví dụ:</b>
<br>子供は掃除したそばから、おもちゃを散らかす。 <br>→ Bọn trẻ vừa mới dọn dẹp xong lại bày đồ chơi ra.
<br><br>教えたそばから忘れてしまうので、困っている。 <br>→ Vì cứ vừa dạy xong là lại quên ngay nên tôi rất khổ sở.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～が早いか  (<b>N1</b>) /  ～たとたん  (<b>N3</b>) /  ～なり  (<b>N2</b>) /  ～や否や  (<b>N1</b>): Cũng là "ngay khi", nhưng chúng thường chỉ một lần xảy ra.  そばから nhấn mạnh sự lặp lại liên tục và thường là không mong muốn.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('170.  そびれる: Bỏ lỡ cơ hội; không làm được ~', 'Common', '     <b>Công thức:</b> V-ます (bỏ  ます) +  そびれる
<br>──────────<br><b>Cách dùng:</b> Diễn tả việc bỏ lỡ cơ hội làm một hành động nào đó, hoặc muốn làm nhưng cuối cùng lại không làm được do thời điểm không phù hợp, có sự cản trở, hoặc do chần chừ.
<br>──────────<br><b>Ý nghĩa:</b> Lỡ mất...; Không... được; Chưa kịp...
<br>──────────<br><b>Chú ý:</b> Thường thể hiện sự tiếc nuối.
<br>──────────<br><b>Ví dụ:</b>
<br>買おうと思っていたのに、話しているうちに買いそびれてしまった。
- Tôi đã định mua, nhưng trong lúc nói chuyện lại lỡ mất cơ hội mua.
<br><br>彼に言いそびれたことがある。 <br>→ Có một điều tôi đã lỡ mất cơ hội nói với anh ấy.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>チャンスを逃す  (<b>N?</b>): "Bỏ lỡ cơ hội", nghĩa tương tự nhưng là cụm từ.  そ
びれる là hậu tố động từ.
<br><br>～機会を失う  (<b>N?</b>): "Mất cơ hội".') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('171.  損なう  /  損ねる  /  損じる（そこなう  /  そこねる  /  そんじる）: Làm
sai; do nhầm lẫn; bỏ lỡ cơ hội; không làm được ~ / Làm tổn hại', 'Common', '     <b>Công thức:</b>
1.   V-ます (bỏ  ます) +  損なう /  損ねる /  損じる (Nghĩa: Bỏ lỡ cơ hội, làm không thành)
2.   N +  を +  損なう /  損ねる /  損じる (Nghĩa: Làm tổn hại, làm hỏng)
<br>──────────<br><b>Cách dùng:</b>
1.   Diễn tả việc suýt nữa thì làm được, hoặc có ý định làm nhưng cuối cùng lại không thành công, bỏ lỡ cơ hội.
2.   Diễn tả việc làm tổn hại đến cái gì đó (sức khỏe, tâm trạng, giá trị...).
<br>──────────<br><b>Ý nghĩa:</b> 1. Lỡ mất...; Không... được; Làm không thành. 2. Làm tổn hại...; Gây hại cho...
<br>──────────<br><b>Chú ý:</b>  損ねる (そこねる) phổ biến hơn trong văn nói cho cả hai nghĩa.  損なう (
そこなう) và  損じる (そんじる) trang trọng hơn.
<br>──────────<br><b>Ví dụ:</b>
<br>あと少しで捕まえられたのに、逃げ損ねた。 <br>→ Chỉ còn chút nữa là bắt được rồi, vậy mà lại để lỡ mất. (Nghĩa 1)
<br><br>彼は言い損ねて、彼女を怒らせてしまった。 <br>→ Anh ta lỡ lời (nói sai) và làm cô ấy tức giận. (Nghĩa 1)
<br><br>過労は健康を損なう恐れがある。 <br>→ Làm việc quá sức có nguy cơ làm tổn hại sức khỏe. (Nghĩa 2)
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～そびれる  (<b>N1</b>): Gần nghĩa với nghĩa 1 (bỏ lỡ cơ hội).  損ねる còn có thể mang nghĩa "làm sai", "làm hỏng".
<br><br>～を害する（がいする）(<b>N?</b>): "Gây hại cho" (Nghĩa 2).') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('172.  術がない（すべがない）: Không có cách nào; không thể làm ~', 'Common', '     <b>Công thức:</b> V-る +  術がない
<br>──────────<br><b>Cách dùng:</b> Diễn tả rằng hoàn toàn không có phương pháp, cách thức, hoặc phương tiện nào để thực hiện một hành động, không còn cách nào khác.
<br>──────────<br><b>Ý nghĩa:</b> Không có cách nào...; Hết cách...; Bó tay.
<br>──────────<br><b>Chú ý:</b> Thường thể hiện sự bế tắc, bất lực hoàn toàn.
<br>──────────<br><b>Ví dụ:</b>
<br>彼に連絡を取りたいのだが、電話番号も住所も知らず、連絡する術がない。 <br>→ Tôi muốn liên lạc với anh ấy, nhưng không biết số điện thoại hay địa chỉ, nên không có cách nào liên lạc được.
<br><br>こうなっては、もはや施す術がない。 <br>→ Đã đến nước này thì hết cách cứu chữa rồi.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～方法がない  (<b>N5</b>): "Không có phương pháp", cách nói thông thường.  術がない trang trọng hơn và nhấn mạnh sự bế tắc hoàn toàn, không còn phương kế.
<br><br>～ようがない  (<b>N2</b>): "Không có cách nào", gần nghĩa, cũng thể hiện sự không thể làm được do thiếu phương tiện/cách thức.
<br><br>どうしようもない  (<b>N3</b>): "Không còn cách nào khác", "bó tay".') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('173.  すら  /  ですら: Ngay cả ~ (nhấn mạnh)', 'Common', '     <b>Công thức:</b> N +  すら /  ですら
<br>──────────<br><b>Cách dùng:</b> Dùng để đưa ra một ví dụ cực đoan (<b>N</b>) để nhấn mạnh rằng nếu ngay cả N (vốn dễ/hiển nhiên/cơ bản/quan trọng) mà còn như vậy, thì những thứ khác càng không cần phải bàn đến.
<br>──────────<br><b>Ý nghĩa:</b> Ngay cả...; Đến cả...
<br>──────────<br><b>Chú ý:</b> Trang trọng hơn  さえ.  ですら trang trọng hơn  すら, và thường dùng sau danh từ chỉ người hoặc những thứ quan trọng. Thường dùng để nhấn mạnh sự ngạc nhiên hoặc mức độ.
<br>──────────<br><b>Ví dụ:</b>
<br>彼は自分の名前すら書けない。 <br>→ Cậu ta đến cả tên mình cũng không viết được.
<br><br>子供ですら知っていることを、大人が知らないなんて恥ずかしい。 <br>→ Chuyện mà ngay cả trẻ con cũng biết, người lớn lại không biết thì thật xấu hổ.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～さえ  (<b>N3</b>): "Ngay cả", phổ biến nhất.  すら/ですら trang trọng hơn và thường dùng trong văn viết hoặc các tình huống cần nhấn mạnh hơn.
<br><br>～だに  (<b>N1</b>): "Ngay cả", cổ hơn và thường dùng với các từ hạn chế (tưởng tượng, nghe...).
<br><br>～でさえ  (<b>N?</b>): Dạng nhấn mạnh của  さえ.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('174.  た弾みに  /  た拍子に（たはずみに  /  たひょうしに）: Khoảnh khắc
[A], vô tình / không cố ý gây ra điều gì đó', 'Common', '     <b>Công thức:</b> V-た +  弾みに /  拍子に
<br>──────────<br><b>Cách dùng:</b> Diễn tả rằng ngay tại khoảnh khắc thực hiện hành động V-た, một hành động khác (thường là bất ngờ, không cố ý, ngoài dự kiến) đã xảy ra do tác động hoặc sự tình cờ của hành động V-た.
<br>──────────<br><b>Ý nghĩa:</b> Đúng lúc...; Ngay khi... (thì vô tình/bất ngờ...).
<br>──────────<br><b>Chú ý:</b> Vế sau thường là sự việc xảy ra ngoài ý muốn hoặc một tai nạn nhỏ.
<br>──────────<br><b>Ví dụ:</b>
<br>くしゃみをした拍子に、腰が痛くなった。 <br>→ Đúng lúc hắt hơi thì tôi bị đau lưng.
<br><br>ドアを開けた弾みに、壁に頭をぶつけてしまった。 <br>→ Ngay khi mở cửa, tôi đã vô tình đập đầu vào tường.
<br>──────────<br><b>So sánh:</b>
<br>～たとたん  (<b>N3</b>): "Ngay khi", nhấn mạnh sự xảy ra tức thời của vế sau, không nhất thiết là vô tình hay do tác động vật lý.  弾みに/拍子に thường liên quan đến chuyển động hoặc lực tác động.
<br><br>～途端に  (<b>N3</b>): Gần như đồng nghĩa với  ～たとたんに.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('175.  たことにする  /  たことになる: Giả vờ; xem như không đúng sự thật;
trái với sự thật ~', 'Common', '     <b>Công thức:</b> V-た +  ことにする /  ことになる
<br>──────────<br><b>Cách dùng:</b>
<br>ことにする: Diễn tả việc tự mình quyết định xem như hoặc giả vờ như một việc gì đó đã xảy ra (dù thực tế không phải vậy hoặc khác đi).
<br><br>ことになる: Diễn tả rằng một việc gì đó được xem như hoặc bị coi như đã xảy ra theo quy định, thỏa thuận, hoặc tình thế (dù thực tế không phải vậy hoặc khác đi).
<br>──────────<br><b>Ý nghĩa:</b> Coi như là đã...; Giả vờ là đã...; Được xem như là đã...
<br>──────────<br><b>Chú ý:</b> Khác với  ことにする (N4 - quyết định làm) và  ことになる (N4 - được quyết định). Ở đây nhấn mạnh sự giả định trái sự thật hoặc sự công nhận một điều không hoàn toàn đúng.
<br>──────────<br><b>Ví dụ:</b>
<br>聞かなかったことにしよう。 <br>→ Hãy coi như là chưa nghe thấy gì đi.
<br><br>遅刻したが、見逃してもらって、来なかったことになった。 <br>→ Tuy đi
muộn nhưng được bỏ qua nên bị coi như là đã không đến.
<br><br>この話は、聞かなかったことにしてください。 <br>→ Chuyện này, xin hãy coi như anh chưa từng nghe thấy.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～ふりをする  (<b>N3</b>): "Giả vờ", gần nghĩa, nhưng  たことにする/たことになる thường dùng khi muốn thay đổi sự thật đã được ghi nhận hoặc coi như nó không tồn tại/khác đi.
<br><br>～とみなす  (<b>N?</b>): "Coi như là", "xem như là", thường dùng trong các văn bản pháp lý, quy định.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('176.  たところで: Ngay cả khi; dù (ai, cái gì, khi nào, ở đâu, tại sao, như thế
nào)', 'Common', '     <b>Công thức:</b> V-た +  ところで
<br>──────────<br><b>Cách dùng:</b> Diễn tả rằng dù có thực hiện hành động V đi nữa thì kết quả cũng sẽ không như mong đợi, không có ý nghĩa, hoặc vô ích. Thường đi kèm với vế sau mang ý phủ định hoặc tiêu cực, thể hiện sự vô ích.
<br>──────────<br><b>Ý nghĩa:</b> Dù có... thì cũng... (vô ích/không thay đổi).
<br>──────────<br><b>Chú ý:</b> Thường dùng với các từ như  いくら (dù bao nhiêu),  どんなに (dù thế nào),
たとえ (dù cho). Vế sau thường là phán đoán tiêu cực.
<br>──────────<br><b>Ví dụ:</b>
<br>今から急いだところで、もう間に合わないだろう。 <br>→ Dù bây giờ có vội đi nữa thì chắc cũng không kịp.
<br><br>何度謝ったところで、許してもらえないかもしれない。 <br>→ Dù có xin lỗi bao nhiêu lần thì có lẽ cũng không được tha thứ.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～ても  (<b>N4</b>): "Dù... cũng".  たところで nhấn mạnh mạnh mẽ hơn về sự vô ích, không có kết quả mong muốn hoặc sự không thay đổi của tình hình.
<br><br>～にしたところで  (<b>N1</b>): Gần nghĩa, nhưng thường dùng để nói về lập trường hoặc giả định.
<br><br>～たって  (N4 - văn nói của  ても): Gần nghĩa với  ても.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('177.  たつもりはない: Không có ý định / không có ý ~', 'Common', '     <b>Công thức:</b> V-た +  つもりはない
<br>──────────<br><b>Cách dùng:</b> Dùng để phủ nhận rằng mình đã có ý định làm một việc gì đó, thường là để biện minh hoặc phủ nhận trách nhiệm về một hành động đã làm (hoặc bị cho là đã làm) mà gây ra hiểu lầm hoặc kết quả không tốt.
<br>──────────<br><b>Ý nghĩa:</b> Tôi không hề có ý...; Tôi không có ý định...
<br>──────────<br><b>Chú ý:</b> Khác với  つもりだ (N4 - định làm/nghĩ là đã làm). Đây là cách phủ nhận ý định trong quá khứ, thường là để bào chữa.
<br>──────────<br><b>Ví dụ:</b>
<br>君を傷つけるつもりはなかったんだ。信じてほしい。 <br>→ Tôi không hề có ý làm tổn thương cậu. Xin hãy tin tôi.
<br><br>嘘をついたつもりはないが、誤解を招いたかもしれない。 <br>→ Tôi không có ý nói dối, nhưng có lẽ đã gây ra hiểu lầm.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～V-ようとは思わなかった  (<b>N?</b>): "Đã không nghĩ là sẽ...", gần nghĩa, nhưng  つもりはない thường dùng khi hành động đã xảy ra hoặc bị người khác hiểu nhầm là có ý định.
<br><br>～V る気はなかった  (<b>N?</b>): "Đã không có ý định...", gần nghĩa.
<br><br>悪気はなかった  (<b>N?</b>): "Không có ác ý".') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('178.  ただ～のみだ: Tất cả những gì có thể làm là; không thể làm gì khác
ngoài; chỉ ~', 'Common', '     <b>Công thức:</b>  ただ + V-る / N +  のみだ /  のみならず (のみならず = không chỉ)
<br>──────────<br><b>Cách dùng:</b> Dùng để nhấn mạnh rằng chỉ có một hành động hoặc một điều duy nhất có thể làm hoặc tồn tại, không còn lựa chọn nào khác, hoặc đó là điều duy nhất quan trọng.
<br>──────────<br><b>Ý nghĩa:</b> Chỉ còn cách... mà thôi; Chỉ... (là duy nhất/quan trọng nhất).
<br>──────────<br><b>Chú ý:</b>  のみ là cách nói trang trọng của  だけ. Đây là cách nói nhấn mạnh sự giới hạn hoặc sự tập trung vào một điều duy nhất.
<br>──────────<br><b>Ví dụ:</b>
<br>今はただ祈るのみだ。 <br>→ Bây giờ chỉ còn cách cầu nguyện mà thôi.
<br><br>私たちはただ彼の回復を待つのみだった。 <br>→ Chúng tôi lúc đó chỉ biết
chờ đợi sự hồi phục của anh ấy mà thôi.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～だけだ  (<b>N5</b>): "Chỉ là".  のみだ trang trọng hơn và nhấn mạnh mạnh hơn vào tính duy nhất hoặc sự không còn lựa chọn nào khác.
<br><br>～しかない  (<b>N4</b>): "Chỉ còn cách", gần nghĩa, cũng thể hiện sự không có lựa chọn khác, nhưng  のみだ có phần trang trọng và văn viết hơn, đôi khi mang tính quyết tâm hơn.
<br><br>～ばかりだ  (<b>N3</b>): "Toàn là", "chỉ..." (nhưng thường mang ý xu hướng hoặc lặp lại).') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('179.  ためしがない: Chưa bao giờ có; chưa bao giờ xảy ra; tôi chưa bao giờ
thấy hoặc nghe ~', 'Common', '     <b>Công thức:</b> V-た +  ためしがない
<br>──────────<br><b>Cách dùng:</b> Dùng để nhấn mạnh rằng một sự việc nào đó chưa từng xảy ra dù chỉ một lần trong kinh nghiệm của người nói, hoặc với một đối tượng nào đó.
<br>──────────<br><b>Ý nghĩa:</b> Chưa từng... lần nào; Không có tiền lệ...
<br>──────────<br><b>Chú ý:</b> Luôn dùng với thể V-た. Thường dùng cho những việc có thể lặp lại nhưng thực tế là chưa bao giờ xảy ra, thường mang ý phàn nàn hoặc ngạc nhiên.
<br>──────────<br><b>Ví dụ:</b>
<br>彼は約束を守ったためしがない。 <br>→ Anh ta chưa từng giữ lời hứa lần nào.
<br><br>宝くじに当たったためしがない。 <br>→ Tôi chưa bao giờ trúng xổ số.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>一度も～ない  (<b>N4</b>): "Chưa từng... lần nào", phổ biến hơn.  ためしがない mang tính thành ngữ và nhấn mạnh hơn về việc "không có trường hợp nào như vậy xảy ra".
<br><br>～経験がない  (<b>N4</b>): "Không có kinh nghiệm...".') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('180.  たら最後  /  たが最後（たらさいご  /  たがさいご）: Nếu bạn làm...
(kết quả tiêu cực)', 'Common', '     <b>Công thức:</b> V-たら / V-たが +  最後
<br>──────────<br><b>Cách dùng:</b> Dùng để diễn tả rằng nếu một hành động nào đó xảy ra, thì chắc chắn sẽ dẫn đến một kết quả rất xấu, không thể cứu vãn hoặc thay đổi được nữa. Mang tính cảnh báo hoặc kinh nghiệm tiêu cực.
<br>──────────<br><b>Ý nghĩa:</b> Một khi đã... thì (coi như xong/hết đời/gặp rắc rối to)...
<br>──────────<br><b>Chú ý:</b> Luôn đi với kết quả tiêu cực. Mang tính cảnh báo mạnh mẽ về hậu quả không thể tránh khỏi.
<br>──────────<br><b>Ví dụ:</b>
<br>あの人に秘密を話したら最後、すぐにみんなに知られてしまう。 <br>→ Một khi đã nói bí mật cho người đó thì ngay lập tức mọi người sẽ biết hết.
<br><br>彼にお金を貸したが最後、絶対に戻ってこないだろう。 <br>→ Một khi đã cho anh ta vay tiền thì chắc chắn sẽ không bao giờ đòi lại được.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～と  (<b>N4</b>): "Hễ... thì...", chỉ kết quả tất yếu.  たら最後 nhấn mạnh kết quả xấu không thể đảo ngược và mức độ nghiêm trọng.
<br><br>～ばそれまでだ  (<b>N1</b>): "Nếu... thì hết", nhấn mạnh sự vô ích.  たら最後
nhấn mạnh hậu quả xấu không thể tránh.
<br><br>一度～したら、もう～  (<b>N?</b>): "Một khi đã làm... thì không thể... nữa".') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('181.  たら～たで: Nếu / trong trường hợp... thì tất nhiên / nên ~', 'Common', '     <b>Công thức:</b> V-たら + V-た +  で / A-かったら + A-かった +  で / Na-だったら
+ Na-だった +  で
<br>──────────<br><b>Cách dùng:</b> Diễn tả rằng dù tình huống có như thế nào (dù có xảy ra hay không, dù tốt hay xấu), thì cũng sẽ có những vấn đề, khó khăn hoặc cách giải quyết tương ứng với tình huống đó. "Mặt nào cũng có vấn đề của nó".
<br>──────────<br><b>Ý nghĩa:</b> Nếu... thì cũng có (vấn đề/cái khó/cách giải quyết) của nó; Dù... thì cũng vậy.
<br>──────────<br><b>Chú ý:</b> Thường mang ý nghĩa "dù thế nào cũng có cái khó/cái hay riêng", "được cái này mất cái kia", hoặc "chuyện đâu còn có đó".
<br>──────────<br><b>Ví dụ:</b>
<br>家は広かったら広かったで、掃除が大変だ。 <br>→ Nhà mà rộng thì cũng có cái khổ của nhà rộng, đó là dọn dẹp vất vả.
<br><br>お金がなかったらなかったで、何とかなるものだ。 <br>→ Tiền mà không có thì cũng có cách xoay xở của lúc không có tiền.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～ても  (<b>N4</b>): "Dù... cũng". Cấu trúc này cụ thể hơn, "nếu đã ở trạng thái A thì cũng có vấn đề/cách của A", thường ám chỉ rằng không có gì là hoàn hảo.
<br><br>それはそれで  (<b>N?</b>): "Cái đó thì cũng có cái hay/dở của nó".') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('182.  たら～ところだ: Nếu... (điều kiện phản thực), thì sẽ là ~', 'Common', '     <b>Công thức:</b> V-たら + (Mệnh đề chỉ kết quả) +  ところだ /  ところだった
<br>──────────<br><b>Cách dùng:</b> Dùng để diễn tả một điều kiện giả định trái với sự thật trong quá khứ. Nếu điều kiện đó xảy ra, thì một kết quả khác (thường là tốt hơn hoặc tránh được điều xấu) đã xảy ra.
<br>──────────<br><b>Ý nghĩa:</b> Nếu mà... thì đã... (nhưng thực tế không phải vậy).
<br>──────────<br><b>Chú ý:</b> Diễn tả sự tiếc nuối hoặc suy đoán về quá khứ. Thường dùng với  もし,  もっと.  ところだった thường dùng khi suýt nữa thì xảy ra điều gì (tốt hoặc xấu).
<br>──────────<br><b>Ví dụ:</b>
<br>もし飛行機に乗り遅れていなかったら、今頃はハワイにいるところだ
。 <br>→ Nếu mà không bị lỡ chuyến bay thì giờ này đã đang ở Hawaii rồi.
<br><br>もう少し注意していたら、事故は防げたところだった。 <br>→ Nếu mà chú ý hơn một chút thì tai nạn đã có thể phòng tránh được rồi.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～ば～のに  /  ～たら～のに  (<b>N4</b>): "Nếu... thì đã... rồi (tiếc)", gần nghĩa, cũng diễn tả điều kiện phản thực.  ところだ/ところだった nhấn mạnh hơn vào "trạng thái" hoặc "thời điểm" giả định đó.
<br><br>～ばよかった  (<b>N4</b>): "Giá mà... thì tốt rồi", thể hiện sự hối tiếc.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('183.  たりとも: Ngay cả; không một ~', 'Common', '     <b>Công thức:</b> (Số đếm nhỏ, thường là 1) +  助数詞 (từ chỉ đơn vị) +  たりとも +  ～ない
<br>──────────<br><b>Cách dùng:</b> Dùng để nhấn mạnh sự phủ định hoàn toàn, rằng ngay cả một đơn vị nhỏ nhất cũng không được phép hoặc không xảy ra.
<br>──────────<br><b>Ý nghĩa:</b> Dù chỉ... cũng không...; Không một... nào.
<br>──────────<br><b>Chú ý:</b> Cách nói trang trọng, văn viết. Thường đi với 1 (一). Luôn đi với thể phủ định.
<br>──────────<br><b>Ví dụ:</b>
<br>試験中は、一瞬たりとも気を抜いてはいけない。 <br>→ Trong lúc thi, không được lơ là dù chỉ một khoảnh khắc.
<br><br>一円たりとも無駄にはできない。 <br>→ Không thể lãng phí dù chỉ một yên.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～も～ない  (<b>N5</b>): "Cũng không".  たりとも nhấn mạnh mạnh hơn vào đơn vị tối thiểu và sự không chấp nhận dù chỉ một chút.
<br><br>～すら  /  ～さえ  (<b>N1/N3</b>): "Ngay cả", nhưng  たりとも thường đi với số đếm và đơn vị cụ thể, mang tính tuyệt đối hơn trong phạm vi đó.
<br><br>微塵も～ない  (<b>N?</b>): "Không một chút nào".') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('184.  たるもの  /  たる: (Những) người là; (cái) là; với tư cách là ... nên ~', 'Common', '     <b>Công thức:</b> N +  たる + N / N +  たるもの (は)
<br>──────────<br><b>Cách dùng:</b> Dùng để nhấn mạnh rằng một người hoặc vật, với tư cách hoặc địa vị N, thì đương nhiên phải có những phẩm chất, trách nhiệm, hoặc hành động tương xứng với địa vị đó.
<br>──────────<br><b>Ý nghĩa:</b> Với tư cách là N thì phải...; Là N thì (đương nhiên phải)...
<br>──────────<br><b>Chú ý:</b> Cách nói trang trọng, có phần cổ. Thường dùng để nói về trách nhiệm, nghĩa vụ, hoặc phẩm chất cao quý cần có của người ở một vị trí nhất định.
<br>──────────<br><b>Ví dụ:</b>
<br>教師たるもの、学生の模範となるべきだ。 <br>→ Người là giáo viên thì phải là tấm gương cho học sinh.
<br><br>指導者たる者は、常に冷静でなければならない。 <br>→ Người là lãnh đạo thì phải luôn bình tĩnh.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～として  (<b>N3</b>): "Với tư cách là".  たるもの/たる nhấn mạnh hơn vào nghĩa vụ, phẩm chất "đương nhiên phải có" đi kèm với tư cách đó.
<br><br>～ともあろうものが  (<b>N1</b>): "Người như... mà lại...", dùng để phê phán khi
người có địa vị không hành xử đúng mực.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('185.  て敵わない（てかなわない）: Không thể chịu được; không thể; phiền
phức; không thể chịu đựng ~', 'Common', '     <b>Công thức:</b> A-くて +  敵わない / Na で +  敵わない / V-て +  敵わない
<br>──────────<br><b>Cách dùng:</b> Dùng để diễn tả sự khó chịu, phiền phức, hoặc không thể chịu đựng được một tình trạng hoặc cảm giác nào đó đến mức quá sức chịu đựng.
<br>──────────<br><b>Ý nghĩa:</b> ... không chịu nổi; ... quá; ... đến phát phiền.
<br>──────────<br><b>Chú ý:</b> Thường dùng trong văn nói, thể hiện sự phàn nàn. Không dùng cho cảm xúc tích cực. Có thể dùng với động từ để chỉ sự phiền toái do hành động đó gây ra.
<br>──────────<br><b>Ví dụ:</b>
<br>今日の暑さには敵わない。 <br>→ Cái nóng hôm nay thật không chịu nổi.
<br><br>隣の工事の音がうるさくて敵わない。 <br>→ Tiếng công trình bên cạnh ồn ào
không chịu được.
<br><br>毎日こう雨が降っては敵わない。 <br>→ Ngày nào cũng mưa thế này thì không chịu nổi.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～てたまらない  (<b>N3</b>): "Không chịu nổi", thường dùng cho cảm xúc hoặc cảm giác cơ thể mạnh (cả tích cực lẫn tiêu cực) mà khó kiềm chế.  て敵わない thường dùng cho sự phiền phức từ bên ngoài hoặc trạng thái khó chịu.
<br><br>～てしょうがない  /  ～て仕方がない  (<b>N3</b>): "Không chịu nổi", "không còn
cách nào khác", gần nghĩa.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('186.  てからというもの: Kể từ khi ~', 'Common', '     <b>Công thức:</b> V-て +  からというもの
<br>──────────<br><b>Cách dùng:</b> Dùng để nhấn mạnh một mốc thời gian (V-て), và kể từ đó, một trạng thái hoặc hành động mới (thường là có sự thay đổi lớn so với trước) bắt đầu và kéo dài liên tục.
<br>──────────<br><b>Ý nghĩa:</b> Kể từ sau khi... (thì có sự thay đổi lớn và trạng thái đó kéo dài).
<br>──────────<br><b>Chú ý:</b> Nhấn mạnh sự thay đổi lớn và sự tiếp diễn của trạng thái mới sau một sự kiện mang tính bước ngoặt.
<br>──────────<br><b>Ví dụ:</b>
<br>子供が生まれてからというもの、生活が一変した。 <br>→ Kể từ khi đứa con ra đời, cuộc sống của tôi đã thay đổi hoàn toàn.
<br><br>日本に来てからというもの、毎日が勉強だ。 <br>→ Kể từ khi đến Nhật, ngày nào cũng là học tập (và trạng thái đó vẫn tiếp diễn).
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～てから  (<b>N5</b>): "Sau khi", chỉ thứ tự thời gian thông thường.  てからというもの nhấn mạnh sự thay đổi lớn và trạng thái kéo dài sau đó, thường là một bước ngoặt.
<br><br>～以来  (<b>N3</b>): "Kể từ khi", cũng chỉ một trạng thái tiếp diễn từ một mốc trong quá khứ, nhưng  てからというもの thường nhấn mạnh hơn sự thay đổi rõ rệt.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('187.  てみせる: Tôi sẽ cố hết sức; tôi chắc chắn sẽ làm; tôi sẽ cho bạn thấy ~', 'Common', '     <b>Công thức:</b> V-て +  みせる
<br>──────────<br><b>Cách dùng:</b> Dùng để thể hiện ý chí, quyết tâm mạnh mẽ của người nói rằng mình nhất định sẽ làm một việc gì đó (thường là để chứng tỏ khả năng, để cho người khác thấy, hoặc để đạt được mục tiêu).
<br>──────────<br><b>Ý nghĩa:</b> Nhất định sẽ... (cho mà xem); Tôi sẽ cho thấy...
<br>──────────<br><b>Chú ý:</b> Thể hiện sự quyết tâm mạnh mẽ, ý chí muốn chứng tỏ.
<br>──────────<br><b>Ví dụ:</b>
<br>今度こそ、必ず成功してみせる。 <br>→ Lần này, tôi nhất định sẽ thành công cho mà xem.
<br><br>どんな困難があっても、乗り越えてみせる。 <br>→ Dù có khó khăn nào, tôi cũng sẽ vượt qua cho bạn thấy.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～つもりだ  (<b>N4</b>): "Dự định", không mạnh bằng.
<br><br>絶対～する  (<b>N5</b>): "Nhất định sẽ làm",  てみせる có thêm sắc thái "làm cho
người khác thấy", "chứng tỏ".
<br><br>～てやる  (N? - suồng sã): "Làm cho xem" (có thể mang tính thách thức hoặc thể hiện sự trên cơ).') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('188.  てしかるべきだ: Nên; thích hợp; làm ~ là điều tự nhiên', 'Common', '     <b>Công thức:</b> V-て +  しかるべきだ
<br>──────────<br><b>Cách dùng:</b> Dùng để diễn tả rằng một hành động hoặc trạng thái nào đó là điều đương nhiên, hợp lý, hoặc phù hợp theo lẽ thường, đạo lý, hoặc quy tắc xã hội.
<br>──────────<br><b>Ý nghĩa:</b> ... là đương nhiên; Đáng lẽ phải...; Làm... là phải đạo.
<br>──────────<br><b>Chú ý:</b> Cách nói trang trọng, có phần cứng, mang tính khẳng định mạnh mẽ về sự đúng đắn.
<br>──────────<br><b>Ví dụ:</b>
<br>悪いことをしたのだから、謝ってしかるべきだ。 <br>→ Vì đã làm điều xấu nên việc xin lỗi là đương nhiên.
<br><br>彼は長年の功績により、表彰されてしかるべきだ。 <br>→ Nhờ công lao nhiều năm, anh ấy đáng lẽ phải được tuyên dương.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～べきだ  (<b>N4</b>): "Nên", phổ biến hơn, dùng để đưa ra lời khuyên hoặc nhận định.  てしかるべきだ nhấn mạnh hơn vào tính "đương nhiên", "hợp lẽ" dựa trên một chuẩn mực nào đó.
<br><br>～のは当然だ  (<b>N4</b>): "Là đương nhiên", gần nghĩa, nhưng  てしかるべきだ
thường gắn với một hành động cụ thể "nên được thực hiện".
<br><br>当たり前だ  (<b>N4</b>): "Là đương nhiên".') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('189.  て済むことではない（てすむことではない）: ~ không đủ để giải
quyết vấn đề; không thể giải quyết bằng ~', 'Common', '     <b>Công thức:</b> V-て +  済むことではない
<br>──────────<br><b>Cách dùng:</b> Dùng để nhấn mạnh rằng một vấn đề không thể được giải quyết hoặc bỏ qua chỉ bằng một hành động đơn giản (V-て); vấn đề nghiêm trọng hơn nhiều.
<br>──────────<br><b>Ý nghĩa:</b> Không phải chỉ... là xong đâu; Không thể giải quyết chỉ bằng cách...
<br>──────────<br><b>Chú ý:</b> Thường dùng để chỉ những vấn đề nghiêm trọng, đòi hỏi sự giải quyết triệt để hơn.
<br>──────────<br><b>Ví dụ:</b>
<br>人の命に関わる問題だから、謝って済むことではない。 <br>→ Vì là vấn đề liên quan đến mạng người nên không phải chỉ xin lỗi là xong đâu.
<br><br>ちょっと注意して済むことではない。根本的な対策が必要だ。 <br>→ Không phải chỉ chú ý một chút là xong. Cần có biện pháp căn cơ.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～では済まない  (<b>N1</b>): Gần nghĩa, nhưng thường đi với N hoặc V る/V た +だけ/こと.  て済むことではない thường đi với V-て, nhấn mạnh hành động đó không đủ.
<br><br>～だけでは不十分だ  (<b>N?</b>): "Chỉ... thì không đủ".') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('190.  てやまない: Luôn luôn; không ngừng; không thể không ~', 'Common', '     <b>Công thức:</b> V-て +  やまない
<br>──────────<br><b>Cách dùng:</b> Dùng để diễn tả một cảm xúc hoặc mong muốn mạnh mẽ, sâu sắc, luôn tồn tại trong lòng người nói và không ngừng nghỉ, không phai nhạt.
<br>──────────<br><b>Ý nghĩa:</b> Luôn...; Không ngừng...; Hết lòng... (cầu nguyện, mong ước, kính yêu).
<br>──────────<br><b>Chú ý:</b> Cách nói trang trọng, văn chương. Thường đi với các động từ chỉ cảm xúc hoặc mong muốn (願う - mong ước,  愛する - yêu,  尊敬する - tôn kính,  期待する
- kỳ vọng,  祈る - cầu nguyện...).
<br>──────────<br><b>Ví dụ:</b>
<br>卒業生の皆さんのご活躍を願ってやまない。 <br>→ Tôi luôn hết lòng mong mỏi sự thành công của các em sinh viên tốt nghiệp.
<br><br>故郷の発展を祈ってやまない。 <br>→ Tôi không ngừng cầu nguyện cho sự phát triển của quê hương.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>ずっと～ている  (<b>N5</b>): "Suốt", chỉ sự tiếp diễn thông thường.  てやまない nhấn mạnh cảm xúc sâu sắc, mãnh liệt từ trong tim và sự bền bỉ của cảm xúc đó.
<br><br>心から～  (<b>N3</b>): "Từ tận đáy lòng...", cũng thể hiện sự chân thành.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('191.  手前（てまえ）: Xét đến; trước; trước mặt; quan điểm của ai đó', 'Common', '     <b>Công thức:</b> N +  の +  手前 / V-る/V-た +  手前
<br>──────────<br><b>Cách dùng:</b> Dùng để diễn tả rằng vì phải giữ thể diện, giữ lời hứa, hoặc vì đang ở một vị trí/hoàn cảnh nhất định (xét đến N/V), nên buộc phải làm một việc gì đó (thường là không muốn) hoặc không thể làm một việc gì đó.
<br>──────────<br><b>Ý nghĩa:</b> Vì (phải giữ thể diện/lời hứa/xét đến vị trí)...; Trước mặt...; Xét về...
<br>──────────<br><b>Chú ý:</b> Nhấn mạnh yếu tố thể diện, sĩ diện, hoặc hoàn cảnh ràng buộc khiến phải hành động theo một cách nhất định.
<br>──────────<br><b>Ví dụ:</b>
<br>みんなの前で「やります」と言った手前、今さらやめるわけにはいかない。 <br>→ Vì đã nói "sẽ làm" trước mặt mọi người nên giờ không thể bỏ được.
<br><br>親の手前、そんな格好で外には出られない。 <br>→ Xét đến (thể diện) bố mẹ, tôi không thể ra ngoài với bộ dạng đó được.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～からには  (<b>N3</b>): "Một khi đã... thì phải...", nhấn mạnh trách nhiệm khi đã ở trong một tình huống.  手前 nhấn mạnh hơn vào yếu tố thể diện, sự nhìn nhận của người khác.
<br><br>～以上は  (<b>N2</b>): "Một khi đã... thì...", gần nghĩa với  からには.
<br><br>立場上  (<b>N?</b>): "Xét về lập trường/vị trí".') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('192.  てもどうにもならない: Vô ích; không thể làm gì được', 'Common', '     <b>Công thức:</b> V-て +  もどうにもならない
<br>──────────<br><b>Cách dùng:</b> Dùng để nhấn mạnh rằng dù có làm hành động V đi nữa thì cũng vô ích, không thể thay đổi được tình hình, không giải quyết được vấn đề.
<br>──────────<br><b>Ý nghĩa:</b> Dù có... cũng chẳng làm được gì; ... cũng vô ích; Không ăn thua.
<br>──────────<br><b>Chú ý:</b> Thể hiện sự bất lực, vô vọng, không có cách nào.
<br>──────────<br><b>Ví dụ:</b>
<br>今さら後悔してもどうにもならない。 <br>→ Bây giờ dù có hối hận cũng chẳng làm được gì.
<br><br>終わってしまったことを、いくら考えてもどうにもならない。 <br>→ Chuyện đã kết thúc rồi, dù có nghĩ bao nhiêu cũng vô ích.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～ても無駄だ  (<b>N3</b>): "Dù... cũng vô ích", gần nghĩa.
<br><br>どうにも～ない  (<b>N1</b>): "Không tài nào...", nhấn mạnh sự không thể.  てもど
うにもならない nhấn mạnh sự vô ích của hành động V.
<br><br>～たところで  (<b>N1</b>): "Dù có... thì cũng (vô ích)", gần nghĩa.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('193.  ても差し支えない（てもさしつかえない）: Có thể ~; không sao nếu ~
(chỉ sự cho phép hoặc thỏa hiệp)', 'Common', '     <b>Công thức:</b> V-て +  も差し支えない
<br>──────────<br><b>Cách dùng:</b> Dùng để diễn tả sự cho phép hoặc đồng ý rằng một hành động nào đó có thể được thực hiện mà không gây ra vấn đề, cản trở, hoặc phiền hà gì.
<br>──────────<br><b>Ý nghĩa:</b> ... cũng không sao; ... cũng được; Không có gì cản trở nếu...
<br>──────────<br><b>Chú ý:</b> Cách nói lịch sự, trang trọng, thường dùng khi cho phép hoặc đưa ra một sự thỏa hiệp.
<br>──────────<br><b>Ví dụ:</b>
<br>お荷物はここにおいていただいても差し支えありません。 <br>→ Hành lý thì anh/chị để ở đây cũng không sao ạ.
<br><br>明日提出しても差し支えなければ、そうさせていただけますか。 <br>→ Nếu ngày mai nộp cũng không sao thì xin cho phép tôi làm vậy được không ạ?
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～てもいいです  (<b>N5</b>): "Cũng được", phổ biến nhất.  差し支えない trang trọng và lịch sự hơn, nhấn mạnh "không có trở ngại gì".
<br><br>～ても構わない  (<b>N3</b>): "Cũng không sao", gần nghĩa, nhưng  差し支えない thường nhấn mạnh hơn vào việc "không gây cản trở" cho một quy trình hoặc người khác.
<br><br>～ても問題ない  (<b>N?</b>): "Cũng không có vấn đề gì".') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('194.  ても知らない（てもしらない）: Nếu (bạn) tiếp tục... bạn sẽ kết thúc /
tôi không quan tâm', 'Common', '     <b>Công thức:</b> V-て +  も知らない
<br>──────────<br><b>Cách dùng:</b> Dùng để cảnh báo mạnh mẽ rằng nếu người nghe cứ tiếp tục làm một hành động nào đó (thường là không tốt hoặc nguy hiểm), thì dù có xảy ra hậu quả xấu, người nói cũng sẽ không chịu trách nhiệm hoặc không quan tâm.
<br>──────────<br><b>Ý nghĩa:</b> Cứ... đi rồi đừng trách; ... thì tôi mặc kệ; ... thì tôi không biết đâu đấy.
<br>──────────<br><b>Chú ý:</b> Mang tính cảnh báo, đe dọa nhẹ, hoặc thể hiện sự phủi bỏ trách nhiệm, sự bất lực của người nói.
<br>──────────<br><b>Ví dụ:</b>
<br>そんなことをしても知らないからね。 <br>→ Cứ làm chuyện đó đi rồi đừng có trách tôi đấy.
<br><br>約束を破ったら、もう口をきいても知らないぞ。 <br>→ Nếu mà thất hứa thì tôi mặc kệ, không thèm nói chuyện nữa đâu.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～たら大変なことになる  (<b>N?</b>): "Nếu... thì sẽ có chuyện lớn", chỉ cảnh báo hậu quả.  ても知らない có thêm ý "tôi không quan tâm/chịu trách nhiệm".
<br><br>勝手にしろ  (N? - suồng sã): "Muốn làm gì thì làm", thể hiện sự mặc kệ.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('195.  と相まって（とあいまって）: Cùng với..., hơn nữa; do ảnh hưởng
của..., hơn nữa ~', 'Common', '     <b>Công thức:</b> N +  と相まって、～
<br>──────────<br><b>Cách dùng:</b> Diễn tả rằng hai hoặc nhiều yếu tố (N và yếu tố ở vế sau, hoặc hai N) kết hợp lại với nhau, ảnh hưởng lẫn nhau, tạo ra một kết quả hoặc hiệu ứng còn lớn hơn, mạnh hơn, hoặc rõ rệt hơn.
<br>──────────<br><b>Ý nghĩa:</b> Cùng với...; Kết hợp với...; Cộng hưởng với... (tạo ra hiệu ứng lớn hơn).
<br>──────────<br><b>Chú ý:</b> Thường dùng để nói về sự cộng hưởng tạo ra kết quả tốt hoặc xấu một cách mạnh mẽ hơn.
<br>──────────<br><b>Ví dụ:</b>
<br>彼女の才能は、努力と相まって、見事に花開いた。 <br>→ Tài năng của cô ấy, cùng với sự nỗ lực, đã nở rộ một cách tuyệt vời.
<br><br>好天と相まって、行楽地はどこも大変な混雑だった。 <br>→ Cùng với thời tiết đẹp, các khu du lịch đâu đâu cũng đông nghịt.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～と同時に  (<b>N3</b>): "Đồng thời với".  と相まって nhấn mạnh sự cộng hưởng, tác động qua lại để tăng cường hiệu quả hoặc mức độ.
<br><br>～に加えて  (<b>N3</b>): "Thêm vào đó", chỉ sự bổ sung.  と相まって nhấn mạnh
sự kết hợp tạo ra hiệu ứng chung.
<br><br>～おかげで  /  ～せいで  (<b>N4</b>): "Nhờ có/Tại vì", chỉ nguyên nhân kết quả.  と相まって chỉ sự kết hợp các yếu tố.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('196.  とあれば: Nếu là trường hợp; nếu ~', 'Common', '     <b>Công thức:</b> N +  とあれば / V-る +  とあれば
<br>──────────<br><b>Cách dùng:</b> Dùng để diễn tả rằng nếu là vì một lý do đặc biệt, một mục đích quan trọng (N/V), hoặc một tình huống đặc biệt, thì người nói hoặc một người nào đó sẵn sàng làm một việc phi thường, vất vả, hoặc khác với bình thường.
<br>──────────<br><b>Ý nghĩa:</b> Nếu là vì... (điều đặc biệt đó) thì (sẵn sàng làm bất cứ điều gì/điều gì cũng có thể xảy ra).
<br>──────────<br><b>Chú ý:</b> Nhấn mạnh lý do đặc biệt và sự sẵn sàng hành động hoặc một kết quả đặc biệt vì lý do đó.
<br>──────────<br><b>Ví dụ:</b>
<br>子供のためとあれば、どんな苦労でもします。 <br>→ Nếu là vì con cái thì dù vất vả thế nào tôi cũng làm.
<br><br>社長の命令とあれば、従わないわけにはいかない。 <br>→ Nếu là mệnh lệnh của giám đốc thì không thể không tuân theo.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～なら  (<b>N4</b>): "Nếu là", chỉ điều kiện thông thường.  とあれば nhấn mạnh lý do đặc biệt, quan trọng, hoặc tình huống đặc biệt.
<br><br>～ためなら  (<b>N3</b>): "Nếu là vì...", gần nghĩa, nhưng  とあれば có phần trang trọng hơn và thường ám chỉ một sự sẵn sàng cao độ hơn.
<br><br>～とあっては  (<b>N?</b>): Gần như đồng nghĩa, "nếu đã là trường hợp đó thì...".') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('197.  とあって: Do sự thật là; bởi vì ~', 'Common', '     <b>Công thức:</b> N +  とあって / (Thể thông thường) +  とあって
<br>──────────<br><b>Cách dùng:</b> Dùng để nêu ra một lý do hoặc hoàn cảnh đặc biệt, không bình thường, dẫn đến một kết quả cũng đặc biệt hoặc không bình thường tương ứng.
<br>──────────<br><b>Ý nghĩa:</b> Vì (lý do/hoàn cảnh đặc biệt)... nên... (kết quả cũng đặc biệt).
<br>──────────<br><b>Chú ý:</b> Thường dùng cho các sự kiện đặc biệt, không phải lý do thông thường hàng ngày. Vế sau thường là một trạng thái hoặc sự việc xảy ra một cách tự nhiên do hoàn cảnh đó.
<br>──────────<br><b>Ví dụ:</b>
<br>有名な作家が来日するとあって、空港には多くのファンが詰めかけた
。 <br>→ Vì một tác giả nổi tiếng đến Nhật nên rất nhiều người hâm mộ đã tập trung ở sân bay.
<br><br>今日は久しぶりの休日とあって、朝から気分がいい。 <br>→ Vì hôm nay là
ngày nghỉ hiếm hoi nên tôi cảm thấy vui vẻ từ sáng.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～から  /  ～ので  (<b>N5/N4</b>): Chỉ lý do thông thường.  とあって dùng cho lý do/hoàn cảnh đặc biệt và kết quả thường mang tính tự nhiên.
<br><br>～こととて  (<b>N1</b>): "Bởi vì", cũng trang trọng, nhưng  とあって thường nhấn mạnh hơn vào tính đặc biệt, không thường xuyên của hoàn cảnh.
<br><br>～だけに  (<b>N3</b>): "Chính vì... nên càng...", nhấn mạnh kết quả tương xứng với lý do.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('198.  とばかりに: Như thể muốn nói; như thể ~', 'Common', '     <b>Công thức:</b> (Mệnh đề trích dẫn ngắn/Từ tượng thanh/Từ tượng hình) +  とばかりに
<br>──────────<br><b>Cách dùng:</b> Diễn tả một hành động hoặc thái độ được thực hiện như thể muốn nói hoặc thể hiện một ý nghĩ, cảm xúc nào đó một cách rõ ràng, mặc dù không nói ra thành lời.
<br>──────────<br><b>Ý nghĩa:</b> Như thể muốn nói...; Với vẻ...; Ra hiệu...
<br>──────────<br><b>Chú ý:</b> Thường đi với các hành động thể hiện thái độ hoặc ý định ngầm.
<br>──────────<br><b>Ví dụ:</b>
<br>彼は「待ってました」とばかりに、話し始めた。 <br>→ Anh ta bắt đầu nói chuyện như thể muốn nói "Tôi chờ mãi".
<br><br>彼女は「もう知らない」とばかりに、プイッと横を向いた。 <br>→ Cô ấy quay ngoắt mặt đi như thể muốn nói "Tôi không biết nữa".
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～かのように  (<b>N2</b>): "Cứ như thể là", dùng để ví von nói chung.  とばかりに tập trung vào việc ví von hành động/thái độ như thể đang diễn đạt một ý nghĩ hoặc cảm xúc cụ thể.
<br><br>～と言わんばかりに  (<b>N1</b>): "Như thể muốn nói", rất gần nghĩa, thường dùng với một câu trích dẫn ngầm.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('199.  といえども: Ngay cả khi; mặc dù; bất chấp ~', 'Common', '     <b>Công thức:</b> N / (Thể thông thường) +  といえども
<br>──────────<br><b>Cách dùng:</b> Dùng để diễn tả sự nhượng bộ, rằng ngay cả trong trường hợp N (dù có địa vị cao, khả năng tốt...) hoặc dù có V (đã làm gì...), thì vế sau vẫn đúng hoặc vẫn
cần phải như vậy. Mang ý nghĩa "Dù là... nhưng không phải lúc nào cũng.../vẫn phải...".
<br>──────────<br><b>Ý nghĩa:</b> Dù là...; Ngay cả...; Mặc dù... (nhưng...)
<br>──────────<br><b>Chú ý:</b> Cách nói trang trọng, văn viết. Thường đi với vế sau mang ý phủ định, ngoại lệ, hoặc điều cần chú ý, nghĩa vụ.
<br>──────────<br><b>Ví dụ:</b>
<br>いかに専門家といえども、未来のことは予測できない。 <br>→ Dù là chuyên gia đi nữa cũng không thể dự đoán được chuyện tương lai.
<br><br>子供といえども、自分の行動には責任を持つべきだ。 <br>→ Dù là trẻ con cũng phải có trách nhiệm với hành động của mình.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～ても  (<b>N4</b>): "Dù... cũng".  といえども trang trọng hơn và thường nhấn mạnh sự tương phản giữa một điều kiện được công nhận và một sự thật/nghĩa vụ đi kèm.
<br><br>～であれ  /  ～であろうと  (<b>N1</b>): "Dù là", gần nghĩa, cũng diễn tả sự không ngoại lệ.
<br><br>～ながらも  (<b>N2</b>): "Mặc dù... nhưng...", diễn tả sự tương phản.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('200.  と言えなくもない: Cũng có thể nói rằng; cũng có thể nói là ~', 'Common', '     <b>Công thức:</b> (Thể thông thường) +  と言えなくもない
<br>──────────<br><b>Cách dùng:</b> Dùng để diễn tả một ý kiến, nhận định một cách không hoàn toàn chắc chắn, không quả quyết, nhưng cũng không hoàn toàn phủ định. Là cách nói vòng vo, thể hiện một khả năng nhỏ hoặc một góc nhìn nào đó.
<br>──────────<br><b>Ý nghĩa:</b> Không phải là không thể nói...; Cũng có thể nói là... (ở một mức độ nào đó).
<br>──────────<br><b>Chú ý:</b> Phủ định hai lần (言えない +  ない) để tạo ra một sự khẳng định yếu, dè dặt.
<br>──────────<br><b>Ví dụ:</b>
<br>彼のやり方は、少し強引だと言えなくもない。 <br>→ Cách làm của anh ấy cũng có thể nói là hơi áp đặt (không phải là không thể nói thế).
<br><br>この結果は、ある意味で成功だと言えなくもない。 <br>→ Kết quả này, theo một nghĩa nào đó, cũng có thể nói là thành công.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～かもしれない  (<b>N4</b>): "Có lẽ".  と言えなくもない nhấn mạnh hơn vào việc "có thể nói là như vậy", thường là một nhận định.
<br><br>～ないものでもない  (<b>N1</b>): "Không phải là không thể", thường dùng cho khả năng hành động.  と言えなくもない dùng cho khả năng đưa ra một nhận định.
<br><br>～きらいがある  (<b>N1</b>): "Có xu hướng (xấu)", nhưng nếu nói về một nhận định có thể đúng thì có nét tương đồng.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('201.  といい～といい: Cả ... và; không chỉ ... mà còn; dù là ... hay ~', 'Common', '     <b>Công thức:</b> N1 +  といい + N2 +  といい
<br>──────────<br><b>Cách dùng:</b> Dùng để liệt kê hai hoặc nhiều ví dụ (N1, N2...) và đưa ra một đánh giá hoặc nhận xét chung về tất cả chúng, cho thấy tất cả các ví dụ đó đều có chung một đặc điểm hoặc gây ra cùng một ấn tượng.
<br>──────────<br><b>Ý nghĩa:</b> Cả N1 lẫn N2 đều...; Dù là N1 hay N2 thì cũng... (đều tuyệt vời/tồi tệ...).
<br>──────────<br><b>Chú ý:</b> Thường dùng để nêu bật những đặc điểm chung đáng chú ý, có thể là khen hoặc chê.
<br>──────────<br><b>Ví dụ:</b>
<br>このレストランは、味といいサービスといい、文句のつけようがない
。 <br>→ Nhà hàng này, cả vị lẫn dịch vụ, đều không có gì để phàn nàn.
<br><br>色といいデザインといい、このカバンが気に入った。 <br>→ Cả màu sắc lẫn thiết kế, tôi đều thích chiếc cặp này.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～も～も  (<b>N5</b>): Chỉ liệt kê.  といい～といい thường đi kèm với đánh giá chung về các yếu tố được liệt kê.
<br><br>～であれ～であれ  (<b>N1</b>): "Dù là... hay...", nhấn mạnh sự không phân biệt đối với hành động/kết quả ở vế sau.  といい～といい dùng để đưa ra đánh giá dựa trên các yếu tố liệt kê.
<br><br>～から～に至るまで  (<b>N1</b>): "Từ... cho đến...", liệt kê phạm vi.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('202.  といったらない: Cực kỳ; rất; không gì ... hơn thế; ... hết mức có thể', 'Common', '     <b>Công thức:</b> A い / Na +  といったらない /  といったらありゃしない
<br>──────────<br><b>Cách dùng:</b> Dùng để nhấn mạnh cảm xúc hoặc trạng thái ở mức độ rất cao, đến mức khó diễn tả bằng lời, mang tính cảm thán mạnh.
<br>──────────<br><b>Ý nghĩa:</b> ... không thể tả; ... hết chỗ nói; Cực kỳ...; ... vô cùng.
<br>──────────<br><b>Chú ý:</b> Cách nói có phần suồng sã, cảm tính.  といったらありゃしない còn suồng sã và nhấn mạnh hơn. Thường dùng cho cả tích cực và tiêu cực.
<br>──────────<br><b>Ví dụ:</b>
<br>彼の部屋の汚さといったらありゃしない。 <br>→ Phòng của anh ta bẩn không thể tả nổi.
<br><br>その景色は美しいといったらない。 <br>→ Cảnh sắc đó đẹp vô cùng.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>のなんのって  (<b>N1</b>): Gần nghĩa, cũng diễn tả mức độ cao, khó diễn tả và suồng sã.
<br><br>極まる  /  極まりない  (<b>N1</b>): "Cực kỳ", nhưng trang trọng hơn.  といったらない mang tính cảm thán cá nhân hơn.
<br><br>この上ない  (<b>N1</b>): "Không gì bằng", cũng chỉ mức độ cao nhất.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('203.  という: Tất cả; mọi ~ (không có ngoại lệ)', 'Common', '     <b>Công thức:</b> N +  という + N (N lặp lại)
<br>──────────<br><b>Cách dùng:</b> Dùng để lặp lại một danh từ, mang ý nghĩa nhấn mạnh "tất cả", "mọi" danh từ thuộc loại đó, không có ngoại lệ, bao trùm toàn bộ.
<br>──────────<br><b>Ý nghĩa:</b> Tất cả N...; Mọi N... (không sót một cái nào).
<br>──────────<br><b>Chú ý:</b> Đây là cách dùng đặc biệt để nhấn mạnh sự toàn bộ, thường trong văn viết hoặc khi muốn tạo ấn tượng mạnh.
<br>──────────<br><b>Ví dụ:</b>
<br>窓という窓が閉められていた。 <br>→ Tất cả các cửa sổ đều bị đóng.
<br><br>公園の木という木にイルミネーションが飾られた。 <br>→ Mọi cây cối trong
công viên đều được trang trí đèn illumination.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>すべての  N (<b>N4</b>): "Tất cả N", phổ biến hơn.  という N nhấn mạnh hơn và có thể mang tính văn chương.
<br><br>N のありとあらゆる N (<b>N?</b>): "Tất tần tật N", gần nghĩa.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('204.  というか～というか: Đúng hơn là; hoặc có lẽ tôi nên nói; ý tôi là ~', 'Common', '     <b>Công thức:</b> (Mệnh đề 1/Từ 1) +  というか + (Mệnh đề 2/Từ 2) +  というか
<br>──────────<br><b>Cách dùng:</b> Dùng khi người nói đang phân vân, tìm cách diễn đạt chính xác nhất ý của mình, đưa ra hai (hoặc nhiều) cách nói khác nhau để mô tả cùng một sự việc hoặc cảm xúc, hoặc khi không chắc chắn nên dùng từ nào.
<br>──────────<br><b>Ý nghĩa:</b> Nên nói là A hay là B đây nhỉ...; Vừa là A, vừa là B...; Hay nói đúng hơn là...
<br>──────────<br><b>Chú ý:</b> Thể hiện sự lưỡng lự trong cách diễn đạt, hoặc muốn làm rõ hơn ý mình.
<br>──────────<br><b>Ví dụ:</b>
<br>彼は優しいというか、気が弱いというか、頼んでも断れない性格だ。
- Anh ta nên nói là hiền lành hay là yếu đuối đây nhỉ, tính cách không thể từ chối khi được nhờ.
<br><br>驚いたというか、あきれたというか、言葉が出なかった。 <br>→ Nên nói là
ngạc nhiên hay là cạn lời đây, tôi đã không nói nên lời.
<br>──────────<br><b>So sánh:</b>
<br>～か～か  (<b>N5</b>): Chỉ sự lựa chọn.  というか～というか thể hiện sự phân vân trong diễn đạt hoặc sự tồn tại đồng thời của cả hai.
<br><br>むしろ  (<b>N3</b>): "Đúng hơn là", dùng khi muốn sửa lại hoặc chọn một cách diễn đạt chính xác hơn.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('205.  というもの: Trong; suốt; kể từ; trong một khoảng thời gian', 'Common', '     <b>Công thức:</b> (Khoảng thời gian cụ thể) +  というもの
<br>──────────<br><b>Cách dùng:</b> Dùng để nhấn mạnh một khoảng thời gian khá dài mà trong suốt thời gian đó, một trạng thái hoặc hành động nào đó diễn ra liên tục hoặc không thay đổi.
<br>──────────<br><b>Ý nghĩa:</b> Suốt... (khoảng thời gian đó); Trong... (cả khoảng thời gian đó).
<br>──────────<br><b>Chú ý:</b> Thường đi với các khoảng thời gian như  この数日 (mấy ngày nay),  この一週間 (tuần này),  ここ数年 (mấy năm nay). Nhấn mạnh tính liên tục trong một khoảng thời gian xác định.
<br>──────────<br><b>Ví dụ:</b>
<br>この一週間というもの、雨が降り続いている。 <br>→ Suốt một tuần nay, trời cứ mưa liên tục.
<br><br>彼とはここ数年というもの、会っていない。 <br>→ Tôi đã không gặp anh ta suốt mấy năm nay rồi.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～間  (<b>N5</b>): "Trong lúc", "trong khoảng".  というもの nhấn mạnh hơn vào độ dài và sự liên tục của khoảng thời gian đó, thường có cảm giác thời gian đó dài.
<br><br>ずっと  (<b>N5</b>): "Suốt", là trạng từ.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('206.  というところだ  /  といったところだ: Nhiều nhất; không quá; tốt nhất;
khoảng; khoảng ~', 'Common', '     <b>Công thức:</b> V-る / N +  というところだ /  といったところだ
<br>──────────<br><b>Cách dùng:</b> Dùng để đưa ra một mức độ, số lượng, hoặc đánh giá được cho là hợp lý, tối đa, hoặc xấp xỉ, thường không vượt quá một giới hạn nào đó.
<br>──────────<br><b>Ý nghĩa:</b> Khoảng...; Cùng lắm là...; Tốt nhất cũng chỉ đến mức...; Chắc cũng chỉ tầm...
<br>──────────<br><b>Chú ý:</b> Thường mang ý nghĩa "không hơn mức đó", hoặc "đó là mức độ cao nhất/phù hợp nhất có thể".
<br>──────────<br><b>Ví dụ:</b>
<br>この仕事にかかる時間は、せいぜい一週間というところだろう。 <br>→ Thời gian cần cho công việc này, nhiều nhất cũng khoảng một tuần thôi.
<br><br>この料理の評価は、まあまあといったところだ。 <br>→ Đánh giá về món ăn này thì, cũng tàm tạm thôi.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～ぐらい  /  ～くらい  (<b>N5</b>): "Khoảng", phổ biến hơn.  というところだ
thường mang hàm ý đánh giá hoặc giới hạn mức độ một cách cụ thể hơn.
<br><br>せいぜい  (<b>N2</b>): "Nhiều nhất cũng chỉ", thường đi kèm với  というところだ.
<br><br>たかだか  (<b>N?</b>): "Cùng lắm cũng chỉ", "chẳng qua chỉ là".') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('207.  というわけだ: Đó là lý do tại sao; thảo nào; điều này có nghĩa là; là
trường hợp ~', 'Common', '     <b>Công thức:</b> (Mệnh đề giải thích/thông tin nền) +  というわけだ
<br>──────────<br><b>Cách dùng:</b> Dùng để đưa ra một kết luận logic hoặc giải thích một sự việc dựa trên những thông tin, tình huống đã được nêu hoặc ngầm hiểu trước đó.
<br>──────────<br><b>Ý nghĩa:</b> Thành ra là...; Nghĩa là...; Thảo nào...; Đó là lý do...
<br>──────────<br><b>Chú ý:</b> Dùng để tóm tắt, kết luận một cách logic, làm rõ ý.
<br>──────────<br><b>Ví dụ:</b>
<br>電車が遅れたんです。それで遅刻したというわけです。 <br>→ Xe điện bị chậm ạ. Thành ra là tôi đã đến muộn.
<br><br>彼は日本の大学に留学したいそうだ。だから日本語を勉強しているというわけだ。 <br>→ Nghe nói anh ấy muốn du học đại học Nhật. Thảo nào mà anh ấy học tiếng Nhật.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～だから  /  ～それで  (<b>N5/N4</b>): "Vì vậy", "do đó".  というわけだ thường mang tính kết luận logic hơn, làm rõ một điều đã được suy ra.
<br><br>つまり  (<b>N3</b>): "Tóm lại", "nói cách khác".') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('208.  というわけではない: Không phải là; không có nghĩa là ~', 'Common', '     <b>Công thức:</b> (Thể thông thường) +  というわけではない /  というわけでもない
<br>──────────<br><b>Cách dùng:</b> Dùng để phủ định một phần hoặc hoàn toàn một kết luận hoặc suy diễn logic mà người khác có thể nghĩ đến, hoặc làm mềm một khẳng định.
<br>──────────<br><b>Ý nghĩa:</b> Không phải là...; Không hẳn là...; Không có nghĩa là...
<br>──────────<br><b>Chú ý:</b> Phủ định lại một điều có vẻ như là logic hoặc hiển nhiên, hoặc một cách nói tổng quát.
<br>──────────<br><b>Ví dụ:</b>
<br>嫌いというわけではないが、あまり好きではない。 <br>→ Không phải là ghét, nhưng cũng không thích lắm.
<br><br>誰でもできるというわけではない。 <br>→ Không phải là ai cũng làm được.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～ではない  (<b>N5</b>): Phủ định thông thường.  というわけではない phủ định một suy luận hoặc kết luận mang tính tổng quát.
<br><br>必ずしも～ない  (<b>N3</b>): "Không hẳn là", "không nhất thiết là".
<br><br>～とは限らない  (<b>N3</b>): "Không hẳn là", "không phải lúc nào cũng".') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('209.  といわず～といわず: Cả; không chỉ A hay B, mà (tổng thể) ~', 'Common', '     <b>Công thức:</b> N1 +  といわず + N2 +  といわず
<br>──────────<br><b>Cách dùng:</b> Dùng để liệt kê hai hoặc nhiều danh từ (N1, N2...) và nhấn mạnh rằng không chỉ N1, N2 mà toàn bộ các phần, các khía cạnh của sự vật/sự việc đó đều ở trong một trạng thái nào đó hoặc bị ảnh hưởng.
<br>──────────<br><b>Ý nghĩa:</b> Bất kể là... hay..., (tất cả đều...).
<br>──────────<br><b>Chú ý:</b> Thường dùng để mô tả một trạng thái bao trùm lên toàn bộ, không có ngoại lệ.
<br>──────────<br><b>Ví dụ:</b>
<br>平日といわず週末といわず、この店はいつも混んでいる。 <br>→ Bất kể là ngày thường hay cuối tuần, quán này lúc nào cũng đông.
<br><br>彼は顔といわず手といわず、泥だらけだ。 <br>→ Anh ta dính đầy bùn, cả mặt lẫn tay (và các bộ phận khác nữa).
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～も～も  (<b>N5</b>): Chỉ liệt kê.  といわず～といわず nhấn mạnh sự bao trùm toàn bộ không trừ một phần nào.
<br><br>～であれ～であれ  (<b>N1</b>): "Dù là... hay...", nhấn mạnh sự không phân biệt đối với hành động/kết quả ở vế sau.
<br><br>至る所（いたるところ）(<b>N?</b>): "Khắp mọi nơi".') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('210.  ときている: Bởi vì ~', 'Common', '     <b>Công thức:</b> N / (Thể thông thường) +  ときている /  ときてる (から /  ので)
<br>──────────<br><b>Cách dùng:</b> Dùng để nêu ra một đặc điểm hoặc tình huống (thường là nổi bật hoặc đã biết) như một lý do hiển nhiên hoặc một yếu tố cộng thêm để giải thích cho một kết quả hoặc đánh giá nào đó (thường ở vế sau).
<br>──────────<br><b>Ý nghĩa:</b> Vì... (thêm vào đó nữa là)... nên đương nhiên là...; Đã... lại còn...
<br>──────────<br><b>Chú ý:</b> Thường dùng trong văn nói, mang tính nhấn mạnh lý do hiển nhiên hoặc một tập hợp các yếu tố.
<br>──────────<br><b>Ví dụ:</b>
<br>あの人は美人で頭もいいときているから、モテるのも当然だ。 <br>→ Người đó vì vừa đẹp lại vừa thông minh (thêm cả yếu tố đó nữa), nên được yêu thích cũng là đương nhiên.
<br><br>値段も安いし、味もいいときている。この店が人気なのも頷ける。 <br>→ Giá vừa rẻ, vị lại ngon (thêm cả yếu tố đó nữa). Quán này nổi tiếng cũng là điều dễ hiểu.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～から  /  ～ので  (<b>N5/N4</b>): Chỉ lý do.  ときている nhấn mạnh lý do như một yếu tố cộng thêm đã rõ ràng, hoặc làm cho kết quả càng thêm dễ hiểu.
<br><br>～上に  (<b>N2</b>): "Thêm vào đó", dùng để bổ sung.  ときている có sắc thái như
một lý do hiển nhiên.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('211.  とみると: Ngay khi nhận ra ..., thì ~', 'Common', '     <b>Công thức:</b> (Mệnh đề chỉ sự nhận biết/dấu hiệu) +  とみると、～
<br>──────────<br><b>Cách dùng:</b> Diễn tả rằng ngay khi nhận ra hoặc thấy một dấu hiệu, một tình huống nào đó, thì lập tức thực hiện một hành động, thường là phản ứng nhanh.
<br>──────────<br><b>Ý nghĩa:</b> Ngay khi thấy/nhận ra... thì liền...
<br>──────────<br><b>Chú ý:</b> Nhấn mạnh sự phản ứng nhanh chóng khi nhận ra điều gì đó. Vế sau thường là hành động có chủ ý.
<br>──────────<br><b>Ví dụ:</b>
<br>子供は母親の姿とみると、駆け寄ってきた。 <br>→ Đứa bé ngay khi thấy bóng mẹ thì liền chạy lại.
<br><br>店員がいないとみると、彼は商品を盗んだ。 <br>→ Ngay khi nhận ra không có nhân viên, hắn ta đã trộm đồ.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～が早いか  (<b>N1</b>) /  ～たとたん  (<b>N3</b>): Cũng là "ngay khi", nhưng  とみると nhấn mạnh vào yếu tố nhận biết bằng mắt hoặc giác quan khác trước khi hành động.
<br><br>～と見るや  (<b>N1</b>): Gần như đồng nghĩa, cũng nhấn mạnh sự nhanh nhạy khi nhận ra.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('212.  と見るや（とみるや）: Vừa nhìn thấy; khi nhìn thấy; sau khi xác nhận
~', 'Common', '     <b>Công thức:</b> N / V-る/V-た +  と見るや
<br>──────────<br><b>Cách dùng:</b> Diễn tả rằng ngay sau khi nhìn thấy hoặc xác nhận được một tình huống, một cơ hội nào đó, một hành động khác xảy ra ngay lập tức, thường là hành động nhanh chóng, quyết đoán.
<br>──────────<br><b>Ý nghĩa:</b> Vừa thấy... là liền...; Ngay khi xác nhận... thì...
<br>──────────<br><b>Chú ý:</b> Gần nghĩa với  とみると nhưng có phần trang trọng hoặc văn chương hơn, nhấn mạnh sự nhanh nhạy, chớp thời cơ.
<br>──────────<br><b>Ví dụ:</b>
<br>警官の姿と見るや、犯人は逃げ出した。 <br>→ Vừa thấy bóng cảnh sát, kẻ phạm tội đã bỏ chạy.
<br><br>チャンスと見るや、彼はすぐに行動した。 <br>→ Ngay khi thấy cơ hội, anh ta đã hành động ngay lập tức.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～とみると  (<b>N1</b>): Gần nghĩa, nhưng  と見るや có thể mang sắc thái nhanh
hơn, quyết đoán hơn, hoặc trang trọng hơn.
<br><br>～なり  (<b>N2</b>): "Ngay khi", cũng diễn tả hành động tức thời.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('213.  となると  /  となれば: Khi nói đến; trong trường hợp đó; nếu điều đó
xảy ra', 'Common', '     <b>Công thức:</b> N +  となると /  となれば / (Thể thông thường) +  となると /  となれば
<br>──────────<br><b>Cách dùng:</b> Dùng để đưa ra một giả định hoặc một tình huống cụ thể, và sau đó nói về những điều sẽ xảy ra, những cân nhắc, hoặc những phản ứng khác biệt khi tình huống đó trở thành hiện thực hoặc được xem xét nghiêm túc.
<br>──────────<br><b>Ý nghĩa:</b> Nếu mà là... thì...; Một khi đã là... thì...; Khi nói đến (việc)...
<br>──────────<br><b>Chú ý:</b> Thường dùng khi nói về một bước phát triển mới của sự việc hoặc một tình huống cụ thể hơn, đòi hỏi một thái độ/hành động khác.
<br>──────────<br><b>Ví dụ:</b>
<br>留学するとなると、いろいろ準備が必要だ。 <br>→ Nếu mà đi du học (khi việc đó trở nên cụ thể) thì cần phải chuẩn bị nhiều thứ.
<br><br>彼が来ないとなれば、計画を変更しなければならない。 <br>→ Nếu anh ta không đến (khi tình huống đó xảy ra) thì phải thay đổi kế hoạch thôi.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～なら  (<b>N4</b>): "Nếu là", điều kiện thông thường.  となると/となれば thường chỉ sự thay đổi tình thế hoặc khi sự việc trở nên cụ thể, nghiêm túc hơn.
<br><br>～場合は  (<b>N4</b>): "Trong trường hợp".') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('214.  とされる: Được coi là; người ta nói rằng ~', 'Common', '     <b>Công thức:</b> (Thể thông thường) +  とされる / N +  とされる
<br>──────────<br><b>Cách dùng:</b> Dùng để trình bày một thông tin, nhận định, hoặc đánh giá được nhiều người công nhận hoặc được cho là đúng theo một nguồn nào đó, nhưng không phải là sự khẳng định tuyệt đối của người nói. Mang tính khách quan.
<br>──────────<br><b>Ý nghĩa:</b> Được cho là...; Được xem là...; Người ta cho rằng...
<br>──────────<br><b>Chú ý:</b> Thường dùng trong văn viết, báo cáo, các văn bản khoa học, mang tính khách quan, trích dẫn ý kiến chung.
<br>──────────<br><b>Ví dụ:</b>
<br>この地域は、日本で最も美しい場所の一つとされる。 <br>→ Vùng này được xem là một trong những nơi đẹp nhất Nhật Bản.
<br><br>地球温暖化の原因は、二酸化炭素の増加とされる。 <br>→ Nguyên nhân của nóng lên toàn cầu được cho là do sự gia tăng CO2.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～と言われている  (<b>N3</b>): "Người ta nói rằng", gần nghĩa, nhưng  とされる mang tính học thuật, chính thức hơn và thường dựa trên một sự công nhận rộng rãi hoặc kết luận nào đó.
<br><br>～と考えられている  (<b>N2</b>): "Người ta nghĩ rằng", "được cho là".
<br><br>～と見られている  (<b>N1</b>): "Được xem là", "được dự đoán là".') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('215.  ときたら: Khi nói đến; liên quan đến ~', 'Common', '     <b>Công thức:</b> N +  ときたら
<br>──────────<br><b>Cách dùng:</b> Dùng để nêu ra một chủ đề (<b>N</b>) và sau đó đưa ra lời phàn nàn, chỉ trích, hoặc nhận xét tiêu cực, bất mãn về chủ đề đó.
<br>──────────<br><b>Ý nghĩa:</b> Nói đến N thì... (thật là/lại...).
<br>──────────<br><b>Chú ý:</b> Luôn dùng với sắc thái tiêu cực, phàn nàn, bất mãn.
<br>──────────<br><b>Ví dụ:</b>
<br>うちの息子ときたら、毎日ゲームばかりしている。 <br>→ Nói đến thằng con trai nhà tôi thì nó suốt ngày chỉ chơi game (phàn nàn).
<br><br>最近の天気ときたら、暑かったり寒かったり、変だ。 <br>→ Nói đến thời tiết dạo này thì lúc nóng lúc lạnh, thật kỳ lạ (bất mãn).
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～は  (<b>N5</b>): Chỉ chủ đề, trung lập.  ときたら luôn mang ý phàn nàn.
<br><br>～といえば  (<b>N3</b>): "Nếu nói đến", dùng để gợi ra một liên tưởng hoặc thông
tin liên quan, không nhất thiết tiêu cực.
<br><br>～なんて  (<b>N3</b>): Có thể dùng để bày tỏ sự ngạc nhiên hoặc bất mãn.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('216.  ところを: Mặc dù (đó là một thời gian/điều kiện nhất định); mặc dù
bình thường', 'Common', '     <b>Công thức:</b> N +  の +  ところを / A-い +  ところを / V-ている/V-た +  ところを
<br>──────────<br><b>Cách dùng:</b> Dùng để diễn tả một hành động xảy ra vào đúng lúc ai đó đang trong một tình huống/trạng thái nhất định, thường là tình huống khó khăn, bận rộn, không thuận tiện, hoặc một khoảnh khắc riêng tư. Thường dùng trong lời cảm ơn, xin lỗi, hoặc khi bị bắt gặp làm gì đó.
<br>──────────<br><b>Ý nghĩa:</b> Vào đúng lúc...; Trong khi... (đang bận/khó khăn); Mặc dù... (đang trong tình huống đó).
<br>──────────<br><b>Chú ý:</b> Thường dùng với ý nghĩa xin lỗi vì làm phiền, cảm ơn vì đã giúp đỡ vào lúc không tiện, hoặc diễn tả sự việc xảy ra đúng vào một thời điểm không ngờ.
<br>──────────<br><b>Ví dụ:</b>
<br>お忙しいところを、わざわざお越しいただきありがとうございます。
- Cảm ơn anh đã cất công đến đây dù đang bận rộn.
<br><br>寝ているところを起こされて、機嫌が悪い。 <br>→ Bị đánh thức đúng lúc đang ngủ nên tôi bực mình.
<br><br>犯行の現場ところを警察に押さえられた。 <br>→ Bị cảnh sát bắt giữ tại hiện trường (đúng lúc đang thực hiện) vụ án.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～のに  (<b>N4</b>): "Mặc dù", cách nói chung.  ところを nhấn mạnh vào thời điểm/tình huống cụ thể đang diễn ra và thường có sắc thái lịch sự (cảm ơn/xin lỗi) hoặc sự việc bị bắt quả tang.
<br><br>～最中に  (<b>N3</b>): "Đúng vào lúc đang...", nhấn mạnh sự việc xảy ra giữa chừng một hành động khác, thường là hành động gây gián đoạn.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('217.  ともあろうものが: Trong tất cả mọi người (biểu hiện sự ngạc nhiên
trước hành vi sai trái của một người có địa vị cao)', 'Common', '     <b>Công thức:</b> N (Người có địa vị/trách nhiệm cao) +  ともあろうものが
<br>──────────<br><b>Cách dùng:</b> Dùng để diễn tả sự ngạc nhiên, thất vọng, hoặc chỉ trích mạnh mẽ khi một người có địa vị cao, có trách nhiệm, hoặc đáng lẽ phải làm gương (<b>N</b>) lại có hành vi sai trái, không phù hợp với địa vị của mình.
<br>──────────<br><b>Ý nghĩa:</b> Người như... mà lại...; Đến cả người (có địa vị) như... mà cũng... (làm điều không nên).
<br>──────────<br><b>Chú ý:</b> Luôn mang sắc thái tiêu cực, phê phán hành vi không xứng với địa vị.
<br>──────────<br><b>Ví dụ:</b>
<br>国会議員ともあろうものが、賄賂を受け取るとは許せない。 <br>→ Người như nghị sĩ quốc hội mà lại nhận hối lộ thì không thể tha thứ được.
<br><br>教師ともあろうものが、生徒を騙すなんて信じられない。 <br>→ Người là giáo viên mà lại đi lừa học sinh thì thật không thể tin nổi.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～たるもの  (<b>N1</b>): "Với tư cách là", nhấn mạnh nghĩa vụ, phẩm chất nên có.ともあろうものが nhấn mạnh sự ngạc nhiên/phê phán khi người đó không làm tròn nghĩa vụ hoặc hành xử không đúng với địa vị.
<br><br>としたことが  (<b>N1</b>): "Ai chứ N mà lại...", cũng thể hiện sự ngạc nhiên, thất vọng trước lỗi lầm của người đáng tin cậy, có thể dùng cho cả bản thân.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('218.  ともなく  /  ともなしに: Bằng cách nào đó; không biết; không nghĩ; vô
thức ~', 'Common', '     <b>Công thức:</b> V-る +  ともなく /  ともなしに (Thường lặp lại động từ: V るともなくV る)
<br>──────────<br><b>Cách dùng:</b> Diễn tả một hành động được thực hiện mà không có ý định, mục đích rõ ràng; làm một cách vô thức, bâng quơ, không chủ ý, không có sự tập trung cụ thể.
<br>──────────<br><b>Ý nghĩa:</b> Vô tình...; Không chủ ý...; Bâng quơ...; Không định... nhưng...
<br>──────────<br><b>Chú ý:</b> Thường đi với các động từ chỉ giác quan hoặc hành động không cần tập trung (見る,  聞く,  待つ,  歩く,  言う...).
<br>──────────<br><b>Ví dụ:</b>
<br>テレビを見るともなく見ていたら、面白い番組が始まった。 <br>→ Đang xem TV một cách bâng quơ thì có chương trình thú vị bắt đầu.
<br><br>何をするともなく、一日が過ぎてしまった。 <br>→ Một ngày đã trôi qua mà chẳng làm gì cụ thể cả (không có mục đích rõ ràng).
<br><br>誰言うともなしに、その噂は広まった。 <br>→ Chẳng biết ai nói mà tin đồn đó đã lan rộng.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>無意識に  (<b>N?</b>): "Một cách vô thức", gần nghĩa, nhưng  ともなく/ともなしに thường mô tả hành động nhẹ nhàng, không có chủ đích rõ ràng, hoặc không biết ai/cái gì khởi xướng.
<br><br>なんとなく  (<b>N3</b>): "Không hiểu sao", "bằng cách nào đó", thường chỉ cảm giác hoặc lý do không rõ ràng.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('219.  ともすれば: Dễ; có xu hướng; dễ bị; có khả năng ~', 'Common', '     <b>Công thức:</b>  ともすれば +  ～がちだ /  ～やすい / (Mệnh đề chỉ xu hướng)
<br>──────────<br><b>Cách dùng:</b> Dùng để diễn tả rằng một người hoặc vật có khuynh hướng dễ dàng rơi vào một trạng thái hoặc thực hiện một hành động nào đó (thường là không tốt hoặc không mong muốn) nếu không cẩn thận hoặc trong một số điều kiện nhất định.
<br>──────────<br><b>Ý nghĩa:</b> Có xu hướng...; Dễ... (rơi vào tình trạng nào đó); Hễ có dịp là...
<br>──────────<br><b>Chú ý:</b> Cách nói có phần trang trọng, văn viết. Ám chỉ một khả năng tiềm ẩn.
<br>──────────<br><b>Ví dụ:</b>
<br>人はともすれば楽な方に流れがちだ。 <br>→ Con người ta có xu hướng dễ nghiêng về phía dễ dàng.
<br><br>彼はともすれば悲観的に考えすぎる。 <br>→ Anh ta có xu hướng dễ suy nghĩ quá bi quan (chỉ cần có chút gì là lại...).
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～がち  (<b>N3</b>): "Thường hay" (có xu hướng xấu), phổ biến hơn.  ともすれば trang trọng hơn và thường chỉ một khuynh hướng tiềm ẩn, "nếu có điều kiện thì dễ thành ra như vậy".
<br><br>～やすい  (<b>N4</b>): "Dễ" (làm gì đó), chỉ khả năng hoặc tính chất.
<br><br>とかく  (<b>N?</b>): "Thường thì", "hay có chiều hướng", gần nghĩa.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('220.  とも～とも: Không thể đưa ra kết luận; không thể đánh giá', 'Common', '     <b>Công thức:</b> (Từ/Mệnh đề 1) +  とも + (Từ/Mệnh đề 2) +  とも +  つかない /  言え
ない /  見分けられない /  区別できない /  判断できない
<br>──────────<br><b>Cách dùng:</b> Dùng để diễn tả sự không chắc chắn, không thể phân biệt hoặc không thể đưa ra kết luận rõ ràng giữa hai hoặc nhiều khả năng, trạng thái, hoặc tính chất.
<br>──────────<br><b>Ý nghĩa:</b> Không biết là A hay B...; Khó mà nói là...; Không phân biệt được là...
<br>──────────<br><b>Chú ý:</b> Thường đi với các động từ phủ định chỉ sự nhận biết, phán đoán, phân biệt.
<br>──────────<br><b>Ví dụ:</b>
<br>それが本当とも嘘ともつかない。 <br>→ Không biết đó là thật hay giả.
<br><br>彼の表情からは、賛成とも反対とも読み取れなかった。 <br>→ Từ biểu cảm
của anh ấy, không thể đọc ra là tán thành hay phản đối.
<br>──────────<br><b>So sánh:</b>
<br>～か～かわからない  (<b>N4</b>): "Không biết là... hay...".  とも～とも thường dùng trong các tình huống mơ hồ hơn, khó phân định hơn, và thường trang trọng hơn.
<br><br>どちらとも言えない  (<b>N?</b>): "Không thể nói là bên nào".') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('221.  とりわけ: Đặc biệt; trên hết ~', 'Common', '     <b>Công thức:</b>  とりわけ + (Danh từ/Mệnh đề được nhấn mạnh)
<br>──────────<br><b>Cách dùng:</b> Dùng như một trạng từ để nhấn mạnh rằng một điều gì đó là đặc biệt nổi bật, đáng chú ý hơn hẳn, hoặc quan trọng hơn so với những thứ khác cùng loại.
<br>──────────<br><b>Ý nghĩa:</b> Đặc biệt là...; Nhất là...; Hơn cả là...
<br>──────────<br><b>Chú ý:</b> Tương tự  特に nhưng có thể mang sắc thái trang trọng hơn hoặc nhấn mạnh hơn một chút.
<br>──────────<br><b>Ví dụ:</b>
<br>私は果物が好きだが、とりわけマンゴーが好きだ。 <br>→ Tôi thích trái cây, đặc biệt là xoài.
<br><br>今年の冬は寒いが、とりわけ今朝は冷え込んだ。 <br>→ Mùa đông năm nay lạnh, nhưng đặc biệt là sáng nay thì rất buốt.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>特に  (<b>N4</b>): "Đặc biệt là", phổ biến nhất.  とりわけ gần như đồng nghĩa, có thể trang trọng hơn.
<br><br>中でも  (<b>N3</b>): "Trong số đó thì (đặc biệt là)...".') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('222.  としたことが: Trong tất cả mọi người, ai mà ngờ được?', 'Common', '     <b>Công thức:</b> N (Người, thường là người đáng tin cậy, có năng lực, hoặc bản thân người nói) +  としたことが、～
<br>──────────<br><b>Cách dùng:</b> Dùng để diễn tả sự ngạc nhiên hoặc thất vọng lớn khi một người (<b>N</b>), đặc biệt là người mà mình tin tưởng hoặc kỳ vọng (hoặc chính bản thân mình, hàm ý tự trách), lại làm một việc sai lầm, ngớ ngẩn, hoặc không đáng có, trái với mong đợi.
<br>──────────<br><b>Ý nghĩa:</b> Ai chứ N mà lại...; N mà lại... (thật không ngờ/thật đáng trách).
<br>──────────<br><b>Chú ý:</b> Thể hiện sự bất ngờ, thất vọng, hoặc tự trách. Thường dùng cho lỗi lầm, sơ suất.
<br>──────────<br><b>Ví dụ:</b>
<br>あの慎重な彼としたことが、こんなミスを犯すなんて。 <br>→ Ai chứ người cẩn trọng như anh ấy mà lại phạm lỗi thế này.
<br><br>私としたことが、大事な約束を忘れてしまうなんて。 <br>→ Đến cả tôi mà lại quên mất cuộc hẹn quan trọng như vậy (tự trách).
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～ともあろうものが  (<b>N1</b>): Cũng thể hiện sự ngạc nhiên/phê phán, nhưng thường dùng cho người có địa vị cao hơn và hành vi nghiêm trọng hơn.  としたことが có thể dùng cho cả bản thân và lỗi lầm nhỏ hơn.
<br><br>～にしては  (<b>N3</b>): "Vậy mà" (so với điều kiện/dự đoán thông thường), nhưng
không nhất thiết là lỗi lầm.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('223.  とっさに: Ngay lập tức; ngay tức khắc; nhanh chóng', 'Common', '     <b>Công thức:</b>  とっさに + V
<br>──────────<br><b>Cách dùng:</b> Dùng như một trạng từ để diễn tả một hành động được thực hiện ngay lập tức, theo phản xạ, không cần suy nghĩ, thường là để đối phó với một tình huống bất ngờ hoặc nguy hiểm.
<br>──────────<br><b>Ý nghĩa:</b> Ngay lập tức...; Theo phản xạ...; Trong nháy mắt...
<br>──────────<br><b>Chú ý:</b> Nhấn mạnh sự phản ứng nhanh chóng, tức thời, không có thời gian đắn đo.
<br>──────────<br><b>Ví dụ:</b>
<br>転びそうになったので、とっさに手をついた。 <br>→ Vì suýt ngã nên tôi đã chống tay xuống ngay lập tức.
<br><br>質問されて、とっさに答えが出なかった。 <br>→ Bị hỏi, tôi đã không thể trả lời ngay tức khắc.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>すぐに  (<b>N5</b>): "Ngay lập tức", phổ biến nhất.  とっさに nhấn mạnh sự phản xạ, hành động không có thời gian suy nghĩ.
<br><br>思わず  (<b>N3</b>): "Bất giác", "không kìm được", nhấn mạnh sự vô thức, không chủ ý.
<br><br>咄嗟に（とっさに）: Đây là cách viết Hán tự của nó.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('224.  とて: Ngay cả; ngay cả khi/dù ~', 'Common', '     <b>Công thức:</b> N +  とて / (Thể thông thường) +  からとて / (Từ để hỏi) +  とて
<br>──────────<br><b>Cách dùng:</b> Dùng để diễn tả ý nghĩa "ngay cả" hoặc "dù là". Là cách nói có phần cổ và trang trọng, thường dùng trong văn viết hoặc các phát biểu mang tính hình thức.
<br>──────────<br><b>Ý nghĩa:</b> Dù là...; Ngay cả...; Cho dù...
<br>──────────<br><b>Chú ý:</b> Cách nói cũ, trang trọng. Khi đi với  からとて, thường mang ý "dù nói là... cũng không có nghĩa là...".
<br>──────────<br><b>Ví dụ:</b>
<br>私とて、その問題が難しいことは分かっている。 <br>→ Ngay cả tôi cũng biết vấn đề đó khó.
<br><br>子供だからとて、許されるわけではない。 <br>→ Dù là trẻ con cũng không có nghĩa là được tha thứ.
<br><br>いかに困難だとて、諦めるわけにはいかない。 <br>→ Dù khó khăn đến mấy cũng không thể bỏ cuộc.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～でも  (<b>N5</b>): "Ngay cả", phổ biến trong văn nói.
<br><br>～さえ  /  ～すら  (<b>N3/N1</b>): "Ngay cả".  とて cổ và trang trọng hơn.
<br><br>～といえども  (<b>N1</b>): "Dù là", "ngay cả khi", cũng trang trọng.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('225.  とは: Tôi không biết; tôi ngạc nhiên rằng; sự thật là ~', 'Common', '     <b>Công thức:</b> (Thể thông thường) +  とは ( +  知らなかった /  思わなかった /  驚いた など)
<br>──────────<br><b>Cách dùng:</b> Dùng ở cuối câu hoặc trước vế sau để diễn tả sự ngạc nhiên, bất ngờ, hoặc khó tin của người nói trước một sự thật hoặc tình huống nào đó vừa mới biết hoặc nhận ra.
<br>──────────<br><b>Ý nghĩa:</b> ...thật là...; ...không ngờ...; Việc... thì...
<br>──────────<br><b>Chú ý:</b> Thường đi với các động từ như  知らなかった (không biết),  思わなかった
(không nghĩ),  驚いた (ngạc nhiên). Nhấn mạnh sự bất ngờ khi nhận ra sự thật.
<br>──────────<br><b>Ví dụ:</b>
<br>彼が結婚していたとは、知らなかった。 <br>→ Anh ta đã kết hôn rồi, tôi thật không biết (ngạc nhiên).
<br><br>こんなに美味しいとは、思わなかった。 <br>→ Thật không ngờ lại ngon đến thế này.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～なんて  (<b>N3</b>): "...", cũng dùng để diễn tả sự ngạc nhiên, nhưng suồng sã hơn.  とは trang trọng hơn và có thể dùng để nhấn mạnh một sự thật vừa khám phá.
<br><br>～というのは  (<b>N4</b>): Dùng để định nghĩa hoặc giải thích, khác với  とは chỉ
sự ngạc nhiên.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('226.  とはいえ: Dù; mặc dù; dù vậy; tuy nhiên', 'Common', '     <b>Công thức:</b> N / (Thể thông thường) +  とはいえ
<br>──────────<br><b>Cách dùng:</b> Dùng để thừa nhận một sự thật hoặc một tình huống (vế trước), nhưng sau đó đưa ra một ý kiến hoặc sự thật khác có phần trái ngược, hạn chế, hoặc làm giảm nhẹ ý nghĩa của vế trước.
<br>──────────<br><b>Ý nghĩa:</b> Tuy nói là... nhưng...; Mặc dù... nhưng...; Dù vậy...
<br>──────────<br><b>Chú ý:</b> Cách nói trang trọng, thường dùng trong văn viết hoặc các bài phát biểu.
<br>──────────<br><b>Ví dụ:</b>
<br>まだ４月とはいえ、今日は暑いですね。 <br>→ Tuy nói là vẫn tháng 4 nhưng hôm nay nóng nhỉ.
<br><br>彼は成功したとはいえ、多くのものを失った。 <br>→ Mặc dù anh ấy đã thành công nhưng cũng đã mất rất nhiều thứ.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～けれども  /  ～が  (<b>N4/N5</b>): "Nhưng", phổ biến nhất.  とはいえ trang trọng hơn và thường dùng khi thừa nhận một điều gì đó là đúng rồi mới đưa ra ý trái ngược hoặc hạn chế.
<br><br>～といっても  (<b>N3</b>): "Dù nói là... nhưng...", gần nghĩa, cũng dùng để làm rõ hoặc hạn chế một phát biểu.
<br><br>～ものの  (<b>N2</b>): "Mặc dù... nhưng...", cũng diễn tả sự tương phản.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('227.  とは比べものにならない: Không thể so sánh với ~', 'Common', '     <b>Công thức:</b> N1 +  とは + N2 + (と)  は比べものにならない (ほど～)
<br>──────────<br><b>Cách dùng:</b> Dùng để nhấn mạnh sự khác biệt rất lớn về mức độ, chất lượng giữa hai sự vật/sự việc (N1 và N2, hoặc N1 và một tiêu chuẩn ngầm hiểu), cho rằng một cái vượt trội hơn hoặc tệ hơn hẳn cái kia đến mức không thể đặt lên bàn cân so sánh.
<br>──────────<br><b>Ý nghĩa:</b> Không thể so sánh được với... (vì quá khác biệt).
<br>──────────<br><b>Chú ý:</b> Nhấn mạnh sự chênh lệch cực lớn, không cùng đẳng cấp.
<br>──────────<br><b>Ví dụ:</b>
<br>今年の暑さは、去年とは比べものにならない。 <br>→ Cái nóng năm nay không thể so sánh được với năm ngoái (nóng hơn nhiều đến mức không thể so sánh).
<br><br>彼の才能は、凡人とは比べものにならない。 <br>→ Tài năng của anh ấy không thể so sánh với người thường (vượt trội hơn hẳn).
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～よりずっと  (<b>N4</b>): "...hơn nhiều".  とは比べものにならない nhấn mạnh
sự chênh lệch cực lớn, "một trời một vực".
<br><br>比較にならない  (<b>N?</b>): "Không thể so sánh", "không đáng để so sánh".') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('228.  とは打って変わって  /  とは打って変わり（とはうってかわって  /  と
はうってかわり）: Không giống như; hoàn toàn khác; rất khác với ~', 'Common', '     <b>Công thức:</b> N / (Tình trạng trước đó) +  とは打って変わって /  とは打って変わり
<br>──────────<br><b>Cách dùng:</b> Dùng để nhấn mạnh sự thay đổi hoàn toàn, 180 độ của một tình trạng, thái độ, hoặc sự việc so với trước đó (N hoặc tình trạng đã đề cập).
<br>──────────<br><b>Ý nghĩa:</b> Khác hẳn với...; Thay đổi hoàn toàn...; Trái ngược hẳn với...
<br>──────────<br><b>Chú ý:</b> Nhấn mạnh sự thay đổi đột ngột và hoàn toàn, thường là theo hướng tích cực hơn hoặc bất ngờ.
<br>──────────<br><b>Ví dụ:</b>
<br>昨日の嵐とは打って変わって、今日は快晴だ。 <br>→ Khác hẳn với cơn bão hôm qua, hôm nay trời nắng đẹp.
<br><br>彼は以前の無口な態度とは打って変わり、よく話すようになった。 <br>→ Anh ấy đã thay đổi hoàn toàn so với thái độ ít nói trước đây, trở nên nói nhiều hơn.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～と違って  (<b>N3</b>): "Khác với".  とは打って変わって nhấn mạnh sự thay đổi hoàn toàn và thường là đột ngột.
<br><br>一変して  (<b>N?</b>): "Thay đổi hoàn toàn".') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('229.  つ～つ: Và ~ (chỉ hai hành động tương phản)', 'Common', '     <b>Công thức:</b> V1-ます (bỏ  ます) +  つ + V2-ます (bỏ  ます) +  つ
<br>──────────<br><b>Cách dùng:</b> Dùng để diễn tả hai hành động hoặc trạng thái trái ngược nhau đang diễn ra xen kẽ, lặp đi lặp lại, hoặc trong một mối quan hệ qua lại.
<br>──────────<br><b>Ý nghĩa:</b> Lúc thì... lúc thì...; Vừa... vừa... (hai hành động/trạng thái đối lập xen kẽ).
<br>──────────<br><b>Chú ý:</b> Thường dùng với các cặp động từ trái nghĩa hoặc có tính tương tác (行く-戻る (đi-về),  押す-引く (đẩy-kéo),  追う-追われる (đuổi-bị đuổi),  抜きつ抜かれつ (vượt lên-bị vượt qua),  持ちつ持たれつ (giúp qua giúp lại)). Cách nói có phần văn chương.
<br>──────────<br><b>Ví dụ:</b>
<br>彼はドアの前を行きつ戻りつしている。 <br>→ Anh ta cứ đi đi lại lại trước cửa.
<br><br>抜きつ抜かれつの激しいレースだった。 <br>→ Đó là một cuộc đua khốc liệt lúc vượt lên, lúc bị vượt qua.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～たり～たり  (<b>N4</b>): Liệt kê hành động, không nhất thiết trái ngược hoặc xen kẽ.  つ～つ thường chỉ hai hành động đối lập xen kẽ một cách liên tục hoặc tương tác.
<br><br>～たり～なかったり  (<b>N4</b>): "Lúc thì... lúc thì không...".') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('230.  尽くす（つくす）: Sử dụng hết (hoàn toàn không còn lại gì); cạn kiệt;
hết ~ / Cố hết sức; phục vụ', 'Common', '     <b>Công thức:</b>
1.   V-ます (bỏ  ます) +  尽くす (Nghĩa: làm hết, làm cạn kiệt)
2.   N +  に尽くす / N +  のために尽くす (Nghĩa: cống hiến, phục vụ)
3.   力を尽くす (Nghĩa: cố gắng hết sức)
<br>──────────<br><b>Cách dùng:</b>
1.   Gắn vào sau động từ để diễn tả ý nghĩa "làm hết", "làm đến cùng", "sử dụng hết" hành động đó đến mức không còn gì.
2.   Như một động từ độc lập có nghĩa "cống hiến hết mình", "phục vụ tận tụy".
3.   Trong cụm từ cố định "力を尽くす" nghĩa là "dốc hết sức lực".
<br>──────────<br><b>Ý nghĩa:</b> 1. ... hết; ... cạn kiệt. 2. Cống hiến cho...; Phục vụ.   3. Cố hết sức.
<br>──────────<br><b>Chú ý:</b> Thường dùng với các động từ như  食べ尽くす (ăn hết),  語り尽くす (nói hết),  知り尽くす (biết hết),  愛想を尽かす (cạn tình, hết yêu).
<br>──────────<br><b>Ví dụ:</b>
<br>冷蔵庫にあるものを食べ尽くした。 <br>→ Tôi đã ăn hết mọi thứ trong tủ lạnh. (Nghĩa 1)
<br><br>国のために力を尽くす。 <br>→ Cống hiến hết sức mình cho đất nước. (Nghĩa 2 & 3)
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～切る  (<b>N3</b>): "Làm hết", "làm xong hoàn toàn".  尽くす thường mang ý nghĩa "làm đến khi không còn gì nữa", "làm cạn kiệt", hoặc "làm tất cả những gì có thể".
<br><br>～果たす  (<b>N2</b>): "Hoàn thành" (nhiệm vụ, vai trò).') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('231.  ってば  /  ったら: Nói về; tôi đã nói với bạn rồi; thôi nào (bực mình /
không hài lòng)', 'Common', '     <b>Công thức:</b> N (Thường là tên người) +  ってば /  ったら
<br>──────────<br><b>Cách dùng:</b> Dùng trong văn nói thân mật để:
<br><br>Nhắc lại một chủ đề đã nói hoặc gọi tên ai đó khi người đó không chú ý.
<br><br>Thể hiện sự bực mình, không hài lòng, hoặc sốt ruột khi người nghe không chú ý hoặc không làm theo.
<br>──────────<br><b>Ý nghĩa:</b> Đã bảo là...; Cái cậu/cô... này!; Thôi nào!; Nghe này!
<br>──────────<br><b>Chú ý:</b> Cách nói suồng sã, thường dùng với người thân, bạn bè, hoặc người dưới. Mang tính cảm xúc cao.
<br>──────────<br><b>Ví dụ:</b>
<br>もう行くよってば！早くして！ - Đã bảo là đi rồi mà! Nhanh lên! (Bực mình)
<br><br>太郎ったら、また宿題忘れたの？ - Taro này, lại quên bài tập à? (Chê trách nhẹ)
<br>──────────<br><b>So sánh:</b>
<br>～は  (<b>N5</b>): Chỉ chủ đề.
<br><br>～よ  (<b>N5</b>): Nhấn mạnh.  ってば/ったら mang thêm sắc thái cảm xúc
(thường là bực mình, sốt ruột, hoặc thân mật pha chút trách móc).
<br><br>ねえ  (<b>N?</b>): "Này" (gọi, thu hút sự chú ý).') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('232.  うちに入らない（うちにはいらない）: Không thực sự; không thể coi
là ~', 'Common', '     <b>Công thức:</b> N / V-る/V-た + (の) +  うちに入らない
<br>──────────<br><b>Cách dùng:</b> Dùng để diễn tả rằng một việc gì đó quá nhỏ bé, không đáng kể, không đủ tiêu chuẩn, hoặc không quan trọng để có thể được coi là hoặc được tính là một cái gì đó thực sự.
<br>──────────<br><b>Ý nghĩa:</b> Không được tính là...; Không đáng gọi là...; Chưa đến mức là...
<br>──────────<br><b>Chú ý:</b> Thường dùng để khiêm tốn hoặc đánh giá thấp một điều gì đó so với một tiêu chuẩn hoặc kỳ vọng.
<br>──────────<br><b>Ví dụ:</b>
<br>これくらいの怪我は、怪我のうちに入らないよ。 <br>→ Vết thương cỡ này thì không được tính là bị thương đâu.
<br><br>趣味で描いているだけで、絵を描くとは言えるうちに入らない。 <br>→ Chỉ là vẽ cho vui thôi, không thể gọi là biết vẽ được.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～とは言えない  (<b>N3</b>): "Không thể nói là".  うちに入らない nhấn mạnh sự không đủ tiêu chuẩn, không đáng kể để được xếp vào một nhóm nào đó.
<br><br>取るに足りない  (N1 - thành ngữ): "Không đáng để nhắc tới/quan tâm", gần nghĩa.
<br><br>大したことない  (<b>N?</b>): "Chẳng có gì to tát".') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('233.  わ: Hậu tố cuối câu nữ tính', 'Common', '     <b>Công thức:</b> (Mệnh đề) +  わ
<br>──────────<br><b>Cách dùng:</b> Dùng ở cuối câu, chủ yếu do phụ nữ sử dụng trong văn nói (đặc biệt là thế hệ trước hoặc trong một số vai trò nhân vật), để làm mềm câu nói, thể hiện cảm xúc nhẹ nhàng (ngạc nhiên, cảm thán, khẳng định nhẹ, đồng tình).
<br>──────────<br><b>Ý nghĩa:</b> ...đấy; ...ạ; ...nhỉ; ...mà.
<br>──────────<br><b>Chú ý:</b> Là một đặc điểm của vai trò giới trong tiếng Nhật truyền thống. Việc sử dụng có thể thay đổi tùy thế hệ và vùng miền. Có thể dùng để khẳng định (分かるわ - Tôi hiểu mà), cảm thán (すごいわ - Tuyệt vời quá), hoặc làm mềm câu.
<br>──────────<br><b>Ví dụ:</b>
<br>今日はいい天気ですわね。 <br>→ Hôm nay trời đẹp nhỉ.
<br><br>私、もう帰るわ。 <br>→ Tớ về đây.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～よ  (<b>N5</b>) /  ～ね  (<b>N5</b>): Là các hậu tố cuối câu phổ biến hơn và trung tính hơn về giới.  わ mang tính nữ tính rõ rệt.
<br><br>～の  (N4 - cuối câu, nữ tính): "ấy", "à", cũng là một hậu tố nữ tính.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('234.  はどうであれ: Tuy nhiên; bất cứ điều gì ~', 'Common', '     <b>Công thức:</b> N +  はどうであれ
<br>──────────<br><b>Cách dùng:</b> Dùng để nói rằng bất kể tình trạng, nội dung, hoặc kết quả của N là như thế nào (tốt hay xấu, đúng hay sai...), thì vế sau vẫn không thay đổi, vẫn giữ nguyên, hoặc vẫn là điều quan trọng cần được ưu tiên.
<br>──────────<br><b>Ý nghĩa:</b> Bất kể N thế nào...; Dù N ra sao... (thì vế sau vẫn...).
<br>──────────<br><b>Chú ý:</b> Cách nói trang trọng. Nhấn mạnh sự không thay đổi của vế sau bất chấp N.
<br>──────────<br><b>Ví dụ:</b>
<br>結果はどうであれ、全力を尽くすことが大切だ。 <br>→ Bất kể kết quả thế nào, việc cố gắng hết sức là quan trọng.
<br><br>理由はどうであれ、人を傷つけることは許されない。 <br>→ Dù lý do ra sao, việc làm tổn thương người khác là không thể tha thứ.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～にかかわらず  (<b>N2</b>): "Bất kể", gần nghĩa.  はどうであれ thường nhấn mạnh vào "trạng thái" hoặc "kết quả" của N.
<br><br>～がどうあろうと  (<b>N?</b>): "Dù N có thế nào đi nữa", gần như đồng nghĩa.
<br><br>いずれにしても  (<b>N1</b>): "Dù sao đi nữa", thường dùng để kết luận.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('235.  はおろか: Chưa kể đến; đừng nói đến; không cần phải nói ~', 'Common', '     <b>Công thức:</b> N1 +  はおろか + N2 +  も /  さえ +  ～ない
<br>──────────<br><b>Cách dùng:</b> Dùng để nhấn mạnh một tình trạng tiêu cực, rằng ngay cả một điều cơ bản, dễ dàng, hoặc ít hơn (<b>N2</b>) cũng không làm được/không có, chứ đừng nói đến một điều cao hơn, khó hơn, hoặc nhiều hơn (<b>N1</b>).
<br>──────────<br><b>Ý nghĩa:</b> N1 thì đã đành (khỏi phải nói), ngay cả N2 (ở mức thấp hơn) cũng không...
<br>──────────<br><b>Chú ý:</b> Thường đi với  も/さえ và thể phủ định ở vế sau. N1 là mức độ cao/khó, N2 là mức độ thấp/dễ hơn. Nhấn mạnh sự thiếu thốn hoặc kém cỏi.
<br>──────────<br><b>Ví dụ:</b>
<br>彼は漢字はおろか、ひらがなさえ書けない。 <br>→ Anh ta đừng nói đến Kanji, ngay cả Hiragana cũng không viết được.
<br><br>彼は家はおろか、車も持っていない。 <br>→ Anh ta đừng nói đến nhà, ngay cả xe cũng không có.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～どころか  (<b>N2</b>): "Đừng nói đến", cũng dùng để so sánh, nhưng có thể dùng cho cả trường hợp "không những không A mà còn B (tệ hơn/tốt hơn)".  はおろか thường theo cấu trúc "A (cao) thì khỏi nói, B (thấp) cũng không", tập trung vào sự thiếu hụt.
<br><br>～はもちろん  (<b>N3</b>): "Đương nhiên là" (dùng cho trường hợp tích cực hoặc điều hiển nhiên).') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('236.  はさておき: Gác lại ~', 'Common', '     <b>Công thức:</b> N +  はさておき
<br>──────────<br><b>Cách dùng:</b> Dùng để tạm thời gác lại một chủ đề (<b>N</b>) để nói về một chủ đề khác được cho là quan trọng hơn hoặc cần được ưu tiên hơn vào lúc đó.
<br>──────────<br><b>Ý nghĩa:</b> Tạm gác N sang một bên...; Khoan hãy nói đến N... (chúng ta hãy tập trung vào...).
<br>──────────<br><b>Chú ý:</b> Nhấn mạnh việc ưu tiên chủ đề sau. Thường dùng để chuyển hướng câu chuyện hoặc tập trung vào vấn đề chính.
<br>──────────<br><b>Ví dụ:</b>
<br>冗談はさておき、本題に入りましょう。 <br>→ Tạm gác chuyện đùa sang một bên, chúng ta hãy vào vấn đề chính.
<br><br>見た目はさておき、味は保証します。 <br>→ Khoan nói đến vẻ ngoài (gác chuyện đó lại), tôi đảm bảo mùi vị.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～はともかく  (<b>N2</b>): "Khoan bàn đến", "để N sang một bên", gần nghĩa, nhưng  はさておき thường có hàm ý rõ ràng hơn là "tạm gác lại" để tập trung vào cái khác ngay lúc đó.
<br><br>～はともかくとして  (<b>N2</b>): Dạng nhấn mạnh của  ～はともかく.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('237.  はそっちのけで  /  をそっちのけで: Bỏ qua (một việc) để (việc khác);
thay vì ~', 'Common', '     <b>Công thức:</b> N +  はそっちのけで /  をそっちのけで
<br>──────────<br><b>Cách dùng:</b> Diễn tả việc ai đó quá mải mê vào một việc mà bỏ bê, lơ là một việc khác quan trọng hơn hoặc đáng lẽ phải làm (<b>N</b>), không thèm để ý đến N.
<br>──────────<br><b>Ý nghĩa:</b> Bỏ bê N mà...; Mải mê... mà quên/không làm N.
<br>──────────<br><b>Chú ý:</b> Luôn mang hàm ý tiêu cực, phê phán sự lơ là, sự ưu tiên sai lầm.
<br>──────────<br><b>Ví dụ:</b>
<br>彼は勉強はそっちのけで、毎日遊んでばかりいる。 <br>→ Anh ta bỏ bê việc học hành mà ngày nào cũng chỉ lo chơi bời.
<br><br>彼女は仕事をそっちのけで、おしゃべりに夢中だ。 <br>→ Cô ấy bỏ bê công việc mà mải mê buôn chuyện.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～にかまけて  (<b>N1</b>): "Do mải mê/bận...", cũng chỉ việc lơ là việc khác, nhưng  そっちのけで thường nhấn mạnh hơn vào hành động "bỏ mặc", "không đếm xỉa đến" cái cần làm để làm cái khác.
<br><br>～を怠ける  (<b>N?</b>): "Lười biếng/bỏ bê việc...".
<br><br>～を後回しにする  (<b>N?</b>): "Để việc... lại sau".') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('238.  わ〜わで: Và (liệt kê những điều tiêu cực xảy ra cùng lúc)', 'Common', '     <b>Công thức:</b> N1 +  は + V1-る +  わ、N2 +  は + V2-る +  わで、～ (thường là  大
変だ、困った)
<br>──────────<br><b>Cách dùng:</b> Dùng để liệt kê hai hoặc nhiều sự việc, tình huống (thường là tiêu cực hoặc khó khăn) xảy ra cùng lúc hoặc chồng chất lên nhau, dẫn đến một tình trạng vất vả, khó xử, hoặc bối rối.
<br>──────────<br><b>Ý nghĩa:</b> Nào là... nào là... (nên rất vất vả/phiền phức...).
<br>──────────<br><b>Chú ý:</b> Thường dùng để kể lể, than thở về nhiều vấn đề xảy ra cùng lúc.
<br>──────────<br><b>Ví dụ:</b>
<br>雨は降るわ、風は吹くわで、大変な一日だった。 <br>→ Nào là mưa rơi, nào là gió thổi, thật là một ngày vất vả.
<br><br>子供は泣くわ、電話は鳴るわで、全然集中できない。 <br>→ Nào là con khóc, nào là điện thoại reo, tôi hoàn toàn không thể tập trung được.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～し～し  (<b>N4</b>): Liệt kê lý do/sự việc, có thể tích cực hoặc tiêu cực.  わ～わで thường dùng cho các sự việc tiêu cực xảy ra đồng thời và nhấn mạnh sự chồng chất khó khăn.
<br><br>～だの～だの  (<b>N1</b>): Liệt kê (thường là phàn nàn hoặc những thứ lộn xộn).
わ～わで thường mô tả tình huống khó khăn do nhiều việc xảy ra cùng lúc.
<br><br>踏んだり蹴ったり  (Thành ngữ): "Họa vô đơn chí", "đã đen còn gặp lắm chuyện".') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('239.  や否や（やいなや）: Ngay sau khi; khoảnh khắc ~', 'Common', '     <b>Công thức:</b> V-る +  や否や
<br>──────────<br><b>Cách dùng:</b> Diễn tả rằng một hành động xảy ra gần như đồng thời hoặc ngay lập tức sau một hành động khác, gần như không có khoảng cách thời gian. Nhấn mạnh sự tức thời.
<br>──────────<br><b>Ý nghĩa:</b> Vừa mới... thì liền...; Ngay khoảnh khắc...
<br>──────────<br><b>Chú ý:</b> Cách nói trang trọng, văn viết. Nhấn mạnh sự xảy ra ngay tức khắc, không một chút chậm trễ. Vế sau thường là hành động bất ngờ hoặc phản ứng nhanh.
<br>──────────<br><b>Ví dụ:</b>
<br>彼はベルが鳴るや否や、受話器を取った。 <br>→ Anh ấy vừa nghe tiếng chuông reo là nhấc ngay ống nghe.
<br><br>空が暗くなるや否や、大粒の雨が降り始めた。 <br>→ Trời vừa tối sầm lại là những hạt mưa lớn bắt đầu rơi.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～が早いか  (<b>N1</b>): Gần như đồng nghĩa, cũng nhấn mạnh sự đồng thời, phản ứng nhanh.
<br><br>～たとたん(に) (<b>N3</b>): Gần nghĩa, nhấn mạnh sự bất ngờ của vế sau.  や否や
trang trọng hơn.
<br><br>～なり  (<b>N2</b>): Gần nghĩa, nhưng  なり thường dùng với hành động bất thường hơn hoặc phản xạ tự nhiên.
<br><br>～と同時に  (<b>N3</b>): "Đồng thời với", có thể chỉ hai hành động diễn ra cùng lúc chứ không nhất thiết là ngay sau.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('240.  やしない: Nên làm, nhưng không làm; tuyệt đối không; không có cách
nào ~', 'Common', '     <b>Công thức:</b> V-ます (bỏ  ます) +  やしない (Thường ở cuối câu)
<br>──────────<br><b>Cách dùng:</b> Dùng trong văn nói, thường là để thể hiện sự bất mãn, phàn nàn, hoặc nhấn mạnh một cách suồng sã rằng ai đó hoàn toàn không làm một việc gì đó (dù nên làm hoặc được kỳ vọng), hoặc một việc gì đó tuyệt đối không xảy ra.
<br>──────────<br><b>Ý nghĩa:</b> Chẳng thèm...; Không hề...; Tuyệt đối không...
<br>──────────<br><b>Chú ý:</b> Là cách nói suồng sã, không trang trọng, mang tính cảm xúc cao (thường là tiêu cực).
<br>──────────<br><b>Ví dụ:</b>
<br>あいつは、何度言っても分かりやしない。 <br>→ Cái gã đó, nói bao nhiêu lần cũng chẳng thèm hiểu.
<br><br>宿題なんて、やりやしないよ。 <br>→ Bài tập về nhà ấy à, tớ chẳng thèm làm đâu.
<br><br>そんなこと、分かりやしない。 <br>→ Chuyện đó, làm sao mà hiểu được.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～ない  (<b>N5</b>): Phủ định thông thường.  やしない mang tính cảm xúc (bất mãn, khinh miệt) và suồng sã hơn.
<br><br>～ものか  /  ～もんか  (<b>N3</b>): "Tuyệt đối không", cũng thể hiện sự phủ định mạnh mẽ, nhưng thường mang tính quyết tâm hơn.
<br><br>～っこない  (<b>N2</b>): "Tuyệt đối không thể" (khả năng).') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('241.  やれ～やれ: Mẫu đưa ra hai ví dụ đại diện (thường là tiêu cực)', 'Common', '     <b>Công thức:</b>  やれ + N1/V1-る +  だの、 やれ + N2/V2-る +  だの (と) /  やれ + N1 +  やら + N2 +  やら
<br>──────────<br><b>Cách dùng:</b> Dùng để liệt kê hai hoặc nhiều ví dụ (thường là những yêu cầu, phàn nàn, hoặc những thứ lộn xộn, phiền phức) để thể hiện sự mệt mỏi, chán ngán, hoặc bối rối trước tình hình đó.
<br>──────────<br><b>Ý nghĩa:</b> Nào là... nào là... (kể lể, phàn nàn về những thứ phiền phức).
<br>──────────<br><b>Chú ý:</b> Thường mang sắc thái tiêu cực, thể hiện sự phiền phức, nhiều việc không mong muốn.
<br>──────────<br><b>Ví dụ:</b>
<br>子供たちは、やれお菓子が食べたいだの、やれおもちゃが欲しいだの
、いつもわがままばかり言う。 <br>→ Bọn trẻ lúc nào cũng ích kỷ, nào là muốn ăn kẹo, nào là muốn đồ chơi.
<br><br>引っ越しの準備で、やれ荷造りだの、やれ手続きだの、大忙しだ。 <br>→
Chuẩn bị chuyển nhà, nào là đóng gói đồ đạc, nào là làm thủ tục, bận tối mắt.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～だの～だの  (<b>N1</b>): Gần nghĩa, cũng dùng để liệt kê và phàn nàn.  やれ～やれ có thể mang sắc thái "bị yêu cầu", "bị bắt làm" hoặc thể hiện sự lộn xộn của nhiều thứ.
<br><br>～とか～とか  (<b>N4</b>): Liệt kê ví dụ, trung tính hơn.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('242.  ようが  /  ようと: Ngay cả khi; dù thế nào/gì ~', 'Common', '     <b>Công thức:</b> V-よう (Thể ý chí) +  が /  と
<br>──────────<br><b>Cách dùng:</b> Dùng để diễn tả sự nhượng bộ, rằng dù có làm V (với ý chí, cố gắng) đi nữa, thì kết quả ở vế sau vẫn không thay đổi hoặc không bị ảnh hưởng.
<br>──────────<br><b>Ý nghĩa:</b> Dù có (cố gắng)... đi nữa thì...; Bất kể...
<br>──────────<br><b>Chú ý:</b> Thường đi với các từ như  どんなに,  たとえ,  いかに. Nhấn mạnh ý chí hoặc sự cố gắng không mang lại kết quả mong muốn.
<br>──────────<br><b>Ví dụ:</b>
<br>どんなに反対されようが、私は自分の道を進む。 <br>→ Dù có bị phản đối thế nào đi nữa, tôi vẫn sẽ đi con đường của mình.
<br><br>たとえ彼が謝らようと、私は許さない。 <br>→ Dù anh ta có xin lỗi đi nữa, tôi cũng sẽ không tha thứ.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～ても  (<b>N4</b>): "Dù... cũng".  ようが/ようと nhấn mạnh hơn vào ý chí hoặc hành động cố gắng làm, và trang trọng hơn.
<br><br>～たところで  (<b>N1</b>): "Dù có... thì cũng (vô ích)", nhấn mạnh sự vô ích.
<br><br>～といえども  (<b>N1</b>): "Dù là", cũng mang tính nhượng bộ.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('243.  ようが～ようが  /  ようと～ようと: Dù; cho dù; ngay cả khi [A] hay [B]', 'Common', '     <b>Công thức:</b> V1-よう +  が/と + V2-よう +  が/と (V1 và V2 có thể giống hoặc khác nhau, hoặc V2 là V1-まい)
<br>──────────<br><b>Cách dùng:</b> Dùng để liệt kê hai hành động hoặc khả năng (thường là đối lập hoặc bao hàm mọi trường hợp) và khẳng định rằng dù thực hiện hành động nào đi nữa, hoặc dù tình huống nào xảy ra, kết quả ở vế sau vẫn không đổi.
<br>──────────<br><b>Ý nghĩa:</b> Dù A hay B thì cũng...; Bất kể là A hay B...
<br>──────────<br><b>Chú ý:</b> Nhấn mạnh sự không thay đổi bất kể lựa chọn nào.
<br>──────────<br><b>Ví dụ:</b>
<br>雨が降ろうが雪が降ろうが、試合は行われる。 <br>→ Dù mưa hay tuyết rơi, trận đấu vẫn sẽ diễn ra.
<br><br>行こうと行くまいと、それは君の自由だ。 <br>→ Dù đi hay không đi, đó là tự do của cậu.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～ても～ても  (<b>N4</b>): "Dù... hay...".  ようが～ようが trang trọng hơn và thường dùng với thể ý chí.
<br><br>～であれ～であれ  (<b>N1</b>): "Dù là... hay...", thường dùng với danh từ.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('244.  ようによっては  /  ようでは: Tùy theo cách; tùy thuộc vào cách ~', 'Common', '     <b>Công thức:</b> V-ます (bỏ  ます) +  ようによっては /  ようでは
<br>──────────<br><b>Cách dùng:</b> Diễn tả rằng kết quả, đánh giá, hoặc ý nghĩa của một sự việc có thể thay đổi tùy thuộc vào cách thức thực hiện hành động (V), cách nhìn nhận, hoặc cách xử lý.
<br>──────────<br><b>Ý nghĩa:</b> Tùy vào cách... mà...; Nếu làm theo cách... thì...
<br>──────────<br><b>Chú ý:</b> Thường dùng để chỉ ra rằng cùng một sự việc nhưng có thể có nhiều cách nhìn hoặc kết quả khác nhau.  ようでは thường dùng khi kết quả không tốt nếu làm theo cách đó.
<br>──────────<br><b>Ví dụ:</b>
<br>考えようによっては、失敗もいい経験になる。 <br>→ Tùy vào cách suy nghĩ mà thất bại cũng có thể trở thành kinh nghiệm tốt.
<br><br>やりようによっては、もっと時間を短縮できるはずだ。 <br>→ Tùy vào cách làm mà đáng lẽ có thể rút ngắn thời gian hơn nữa.
<br><br>そんなやりようでは、成功はおぼつかない。 <br>→ Nếu làm theo cách đó thì khó mà thành công được.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～方によって  (<b>N3</b>): "Tùy vào cách", gần nghĩa, nhưng  ようによっては
thường mang tính trừu tượng hơn, liên quan đến cách nhìn, cách suy nghĩ.
<br><br>～次第で  (<b>N2</b>): "Tùy thuộc vào".') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('245.  ようにも～ない: Ngay cả khi tôi muốn… tôi cũng không thể ~', 'Common', '     <b>Công thức:</b> V-よう (Thể ý chí) +  にも + V-ない (Thể khả năng phủ định)
<br>──────────<br><b>Cách dùng:</b> Diễn tả rằng mặc dù rất muốn làm hành động V, nhưng vì một lý do hoặc hoàn cảnh nào đó (thường là khách quan) mà không thể làm được, không có cách nào làm được.
<br>──────────<br><b>Ý nghĩa:</b> Muốn... cũng không... được; Dù cố... cũng không thể...
<br>──────────<br><b>Chú ý:</b> Thể hiện sự bất lực, sự cản trở, dù có ý chí nhưng không thể thực hiện.
<br>──────────<br><b>Ví dụ:</b>
<br>歯が痛くて、食べようにも食べられない。 <br>→ Răng đau quá, muốn ăn cũng không ăn được.
<br><br>眠くて起きようにも起きられない。 <br>→ Buồn ngủ quá, muốn dậy cũng không dậy nổi.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～たいけどできない  (<b>N5/N4</b>): "Muốn... nhưng không thể...", cách nói thông thường.  ようにも～ない nhấn mạnh sự cố gắng nhưng bất thành do một rào cản.
<br><br>V-たくても V-れない  (<b>N?</b>): Gần như đồng nghĩa.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('246.  ようと～まいと  /  ようが～まいが: Dù có hay không; bất kể', 'Common', '     <b>Công thức:</b> V1-よう (Thể ý chí) +  と/が + V1-まい (Thể phủ định ý chí/suy đoán)
+  と/が
<br>──────────<br><b>Cách dùng:</b> Dùng để diễn tả rằng dù có thực hiện hành động V hay không, thì kết quả hoặc tình hình ở vế sau vẫn không thay đổi, không bị ảnh hưởng.
<br>──────────<br><b>Ý nghĩa:</b> Dù có... hay không... thì cũng...; Bất kể có... hay không...
<br>──────────<br><b>Chú ý:</b> V1 lặp lại.  まい là thể phủ định ý chí ("sẽ không") hoặc phủ định suy đoán ("chắc là không"). Cách nói trang trọng.
<br>──────────<br><b>Ví dụ:</b>
<br>君が来ようと来るまいと、会議は時間通りに始まる。 <br>→ Dù cậu có đến hay không, cuộc họp vẫn sẽ bắt đầu đúng giờ.
<br><br>雨が降ろうが降るまいが、私は出かけます。 <br>→ Dù trời có mưa hay không, tôi vẫn sẽ ra ngoài.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～ても～なくても  (<b>N4</b>): "Dù có... hay không...", phổ biến hơn.
<br><br>～であろうとなかろうと  (<b>N?</b>): "Dù có là... hay không...", trang trọng.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('247.  ゆえに: Do đó; vì vậy; bởi vì; do ~', 'Common', '     <b>Công thức:</b> N +  の +  ゆえに / (Thể thông thường) +  ゆえに
<br>──────────<br><b>Cách dùng:</b> Dùng để chỉ nguyên nhân, lý do. Là cách nói trang trọng, có phần cổ, thường dùng trong văn viết, lý luận, hoặc diễn văn, mang tính hình thức.
<br>──────────<br><b>Ý nghĩa:</b> Vì...; Do đó...; Bởi lẽ...
<br>──────────<br><b>Chú ý:</b> Cách nói trang trọng, cứng, không dùng trong văn nói thông thường.
<br>──────────<br><b>Ví dụ:</b>
<br>悪天候ゆえに、飛行機は欠航となった。 <br>→ Do thời tiết xấu nên chuyến bay đã bị hủy.
<br><br>人間は考える葦である。ゆえに尊い。 <br>→ Con người là cây sậy biết suy nghĩ. Do đó mà đáng quý.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～から  /  ～ので  (<b>N5/N4</b>): "Vì", phổ biến nhất.
<br><br>～ため  (<b>N4</b>): "Vì", trang trọng hơn.  ゆえに trang trọng nhất và có phần cổ
điển, thường dùng trong các văn bản mang tính học thuật, triết lý.
<br><br>～が故に  (<b>N?</b>): Gần như đồng nghĩa với  ゆえに, cũng rất trang trọng.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('248.  ぞ・ぜ: Hậu tố cuối câu; thêm sức mạnh hoặc chỉ thị lệnh', 'Common', '     <b>Công thức:</b> (Mệnh đề) +  ぞ /  ぜ
<br>──────────<br><b>Cách dùng:</b> Dùng ở cuối câu trong văn nói, chủ yếu do nam giới sử dụng (hoặc trong một số vai diễn nhân vật), để:
<br><br>ぞ: Nhấn mạnh sự khẳng định, cảnh báo, quyết tâm, hoặc tự nhủ một cách mạnh mẽ.
<br><br>ぜ: Nhấn mạnh, rủ rê, hoặc ra lệnh một cách thân mật, suồng sã, đôi khi hơi ngang tàng.
<br>──────────<br><b>Ý nghĩa:</b> ... đấy!; ... nhé!; ... đi!; ... quyết rồi!
<br>──────────<br><b>Chú ý:</b> Cách nói không trang trọng, chỉ dùng với bạn bè thân thiết hoặc người dưới. Mang tính cảm xúc và giới tính rõ rệt.
<br>──────────<br><b>Ví dụ:</b>
<br>行くぞ！ - Đi thôi! (Quyết tâm)
<br><br>忘れるなぞ。 <br>→ Đừng quên đấy! (Cảnh báo)
<br><br>そろそろ行こうぜ。 <br>→ Chuẩn bị đi thôi nào! (Rủ rê thân mật)
<br><br>やるぜ！ - Làm thôi! (Thể hiện sự sẵn sàng)
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～よ  (<b>N5</b>): Nhấn mạnh thông thường.  ぞ/ぜ mạnh hơn và mang tính nam tính/suồng sã hơn, thể hiện nhiều cảm xúc hơn.
<br><br>～わ  (N1 - nữ tính): Hậu tố cuối câu nữ tính.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('249.  ずじまい: Cuối cùng không làm ~', 'Common', '     <b>Công thức:</b> V-ない (bỏ  ない) +  ずじまい (だ/だった)
<br>──────────<br><b>Cách dùng:</b> Diễn tả rằng một hành động mà mình đã định làm, mong muốn làm, hoặc đáng lẽ nên làm cuối cùng lại không thể thực hiện được, và cảm thấy tiếc nuối hoặc chưa hoàn thành về điều đó.
<br>──────────<br><b>Ý nghĩa:</b> Rốt cuộc đã không...; Cuối cùng lại không... (mà đáng lẽ nên/muốn).
<br>──────────<br><b>Chú ý:</b> Thể hiện sự tiếc nuối vì đã không làm được một việc dang dở hoặc chưa trọn vẹn.
<br>──────────<br><b>Ví dụ:</b>
<br>彼に本当の気持ちを言えずじまいだった。 <br>→ Rốt cuộc tôi đã không thể nói ra tình cảm thật của mình với anh ấy.
<br><br>京都に行ったのに、金閣寺を見ずじまいで帰ってきた。 <br>→ Đã đến Kyoto vậy mà tôi lại về mà chưa kịp xem chùa Vàng.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～ないで終わった  (<b>N?</b>): "Kết thúc mà không làm...", gần nghĩa, nhưng  ずじまい mang sắc thái tiếc nuối mạnh hơn về một việc chưa được hoàn thành như ý muốn.
<br><br>～そびれる  (<b>N1</b>): "Bỏ lỡ cơ hội làm...", cũng có sự tiếc nuối.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('250.  ずにはおかない  /  ないではおかない: Nhất định/chắc chắn sẽ làm gì
đó; không thể không ~', 'Common', '     <b>Công thức:</b> V-ない (bỏ  ない) +  ずにはおかない / V-ない +  ないではおかない
<br>──────────<br><b>Cách dùng:</b> Diễn tả rằng một tác nhân nào đó (người, sự vật, sự việc) chắc chắn sẽ gây ra một hành động hoặc một cảm xúc nào đó ở người khác, không thể nào khác được, hoặc là người nói có ý chí mạnh mẽ nhất định sẽ làm gì đó và không để yên.
<br>──────────<br><b>Ý nghĩa:</b> Chắc chắn sẽ khiến...; Nhất định sẽ... (không để yên); Không thể không...
<br>──────────<br><b>Chú ý:</b> Thường dùng với các động từ chỉ cảm xúc hoặc hành động có tác động mạnh. Vế trước thường là nguyên nhân, vế sau là kết quả tất yếu.
<br>──────────<br><b>Ví dụ:</b>
<br>あの映画は見る人を感動させずにはおかないだろう。 <br>→ Bộ phim đó chắc chắn sẽ khiến người xem cảm động.
<br><br>この不正を知った以上、黙ってはいないではおかない。 <br>→ Một khi đã biết sự bất chính này, tôi nhất định sẽ không im lặng (sẽ làm gì đó).
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>きっと～させる  (<b>N?</b>): "Chắc chắn sẽ khiến...". Cấu trúc này trang trọng và nhấn mạnh hơn về sự không thể tránh khỏi của kết quả.
<br><br>必ず～する  (<b>N4</b>): "Nhất định sẽ làm".') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('251.  ずには済まない  /  ないでは済まない: Phải; nhất định sẽ; không thể
không ~', 'Common', '     <b>Công thức:</b> V-ない (bỏ  ない) +  ずには済まない / V-ない +  ないでは済まない
<br>──────────<br><b>Cách dùng:</b> Diễn tả rằng dựa trên tình hình, quy tắc xã hội, hoặc trách nhiệm đạo đức, một hành động nào đó là bắt buộc phải làm, không thể tránh khỏi, nếu không sẽ không ổn thỏa.
<br>──────────<br><b>Ý nghĩa:</b> Không thể không...; Buộc phải...; Không làm thì không xong.
<br>──────────<br><b>Chú ý:</b> Nhấn mạnh sự bắt buộc về mặt xã hội hoặc đạo đức, nếu không làm sẽ có vấn đề.
<br>──────────<br><b>Ví dụ:</b>
<br>多大な損害を与えたのだから、謝らずには済まない。 <br>→ Vì đã gây ra thiệt hại lớn nên không thể không xin lỗi (nếu không xin lỗi thì không xong).
<br><br>人の物を盗んだのだから、罰を受けないでは済まないだろう。 <br>→ Vì đã trộm đồ của người khác nên chắc chắn sẽ phải chịu phạt (không chịu phạt thì không được).
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～なければならない  (<b>N4</b>): "Phải", nghĩa vụ nói chung.  ずには済まない nhấn mạnh sự bắt buộc do hoàn cảnh xã hội/đạo đức, không làm thì không được yên.
<br><br>～ざるを得ない  (<b>N1</b>): "Buộc phải", thường do hoàn cảnh bên ngoài ép buộc, không còn lựa chọn khác.
<br><br>～ないわけにはいかない  (<b>N2</b>): "Không thể không", do áp lực xã hội hoặc
tình thế.') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('252.  ずとも: Ngay cả khi không làm; ngay cả khi không là ~', 'Common', '     <b>Công thức:</b> V-ない (bỏ  ない) +  ずとも
<br>──────────<br><b>Cách dùng:</b> Dùng để diễn tả ý nghĩa "dù không..." hoặc "không cần...". Là cách nói cổ và trang trọng, ít dùng trong văn nói hiện đại.
<br>──────────<br><b>Ý nghĩa:</b> Dù không...; Không cần... (thì vẫn...).
<br>──────────<br><b>Chú ý:</b> Cách nói cũ, trang trọng, văn viết.
<br>──────────<br><b>Ví dụ:</b>
<br>言わずとも、彼の気持ちは分かっている。 <br>→ Dù không nói ra, tôi cũng hiểu cảm xúc của anh ấy.
<br><br>わざわざ行かずとも、電話で済むことだ。 <br>→ Không cần cất công đi, việc đó có thể giải quyết bằng điện thoại.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～なくても  (<b>N4</b>): "Dù không...", phổ biến nhất.  ずとも cổ và trang trọng hơn.
<br><br>～ないでも  (<b>N?</b>): "Dù không...".') ON CONFLICT DO NOTHING;
INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('253.  ずくめ: Hoàn toàn; toàn là; chỉ toàn là ~', 'Common', '     <b>Công thức:</b> N +  ずくめ
<br>──────────<br><b>Cách dùng:</b> Diễn tả rằng một thứ gì đó được bao phủ hoặc bao gồm hoàn toàn bởi N, không có gì khác, toàn bộ đều là N.
<br>──────────<br><b>Ý nghĩa:</b> Toàn là...; Đầy... (chỉ một loại).
<br>──────────<br><b>Chú ý:</b> Thường đi với các danh từ chỉ màu sắc (黒ずくめ - toàn màu đen), hoặc những thứ mang tính đồng nhất (いいことずくめ - toàn chuyện tốt,  ごちそうずくめ - toàn món ngon,  規則ずくめ - toàn quy tắc).
<br>──────────<br><b>Ví dụ:</b>
<br>彼女はいつも黒ずくめの服装をしている。 <br>→ Cô ấy lúc nào cũng mặc đồ toàn màu đen.
<br><br>最近、いいことずくめで嬉しい。 <br>→ Gần đây toàn chuyện tốt nên tôi rất vui.
<br>──────────<br><b>Ngữ pháp tương tự:</b>
<br>～だらけ  (<b>N3</b>): "Toàn là", thường dùng cho những thứ tiêu cực hoặc không mong muốn (泥だらけ - toàn bùn,  間違いだらけ - toàn lỗi).  ずくめ có thể dùng cho cả tích cực và tiêu cực, và nhấn mạnh sự đồng nhất, "chỉ toàn một loại đó".') ON CONFLICT DO NOTHING;
