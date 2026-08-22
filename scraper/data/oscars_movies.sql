INSERT INTO oscars_years (
    year,
    winner_title,
    imdb_id,
    original_title,
    release_year,
    runtime_minutes,
    genres,
    director,
    imdb_rating,
    imdb_votes,
    overview,
    poster_url,
    metacritic_score,
    rotten_tomatoes_score,
    critic_summary
)
VALUES (
    1980,
    'Ordinary People',
    'tt0081283',
    'Ordinary People',
    1980,
    124,
    'Drama',
    'Robert Redford',
    7.7,
    62494,
    'Beth, Calvin, and their son Conrad are living in the aftermath of the death of the other son. Conrad is overcome by grief and misplaced guilt to the extent of a suicide attempt. He is in therapy. Beth had always preferred his brother and is having difficulty being supportive to Conrad. Calvin is trapped between the two trying to hold the family together.',
    'https://m.media-amazon.com/images/M/MV5BODkyODllNDQtMTRjZS00ZGM5LWFmYmQtMzlhZjNhZjgwOGVhXkEyXkFqcGc@._V1_SX300.jpg',
    86,
    90,
    NULL
)
ON CONFLICT (year)
DO UPDATE SET

    winner_title = EXCLUDED.winner_title,

    imdb_id = EXCLUDED.imdb_id,

    original_title = EXCLUDED.original_title,

    release_year = EXCLUDED.release_year,

    runtime_minutes = EXCLUDED.runtime_minutes,

    genres = EXCLUDED.genres,

    director = EXCLUDED.director,

    imdb_rating = EXCLUDED.imdb_rating,

    imdb_votes = EXCLUDED.imdb_votes,

    overview = EXCLUDED.overview,

    poster_url = EXCLUDED.poster_url,

    metacritic_score = EXCLUDED.metacritic_score,

    rotten_tomatoes_score =
        EXCLUDED.rotten_tomatoes_score,

    critic_summary =
        EXCLUDED.critic_summary;

INSERT INTO oscars_years (
    year,
    winner_title,
    imdb_id,
    original_title,
    release_year,
    runtime_minutes,
    genres,
    director,
    imdb_rating,
    imdb_votes,
    overview,
    poster_url,
    metacritic_score,
    rotten_tomatoes_score,
    critic_summary
)
VALUES (
    1981,
    'Chariots of Fire',
    'tt0082158',
    'Chariots of Fire',
    1981,
    125,
    'Biography, Drama, Sport',
    'Hugh Hudson',
    7.1,
    71522,
    'It''s the post-World War I era. Britons Harold Abrahams and Eric Liddell are both naturally gifted fast sprinters, but approach running and how it fits into their respective lives differently. The son of a Lithuanian Jew, Harold, who lives a somewhat privileged life as a student at Cambridge, uses being the fastest to overcome what he sees as the obstacles he faces in life as a Jew despite that privilege. In his words to paraphrase an old adage, he is often invited to the trough, but isn''t allowed to drink. His running prowess does earn him the respect of his classmates, especially his running teammates, and to some extent the school administration, if only he maintains what they consider proper gentlemanly decorum, which isn''t always the case in their minds. Born in China, the son of Christian missionaries, Eric, a Scot, is a devout member of the Church of Scotland who eventually wants to return to that missionary work. He sees running as a win-win in that the notoriety of being fast gives him an added outlet to spread the word of God, while he sees his speed as being a gift from God, and he wants to run to honor God and that gift. This view does not sit well with his sister, Jennie Liddell, who sees his running as only taking away time from his work to God. Harold and Eric''s lives do intersect in national races, but it is the one hundred meter track event at the 1924 Paris Olympics which the two men and their supporters most anticipate. Beyond the fact that Americans Charles Paddock and Jackson Scholz are favored in the event, the much anticipated head to head between Harold and Eric may be further shadowed by other issues, especially as it affects Eric''s Christian beliefs.',
    'https://m.media-amazon.com/images/M/MV5BZjkzZjFmZDEtNTliZi00MDcwLThjMTMtNmI5OGVmYjZjZDM1XkEyXkFqcGc@._V1_SX300.jpg',
    78,
    84,
    NULL
)
ON CONFLICT (year)
DO UPDATE SET

    winner_title = EXCLUDED.winner_title,

    imdb_id = EXCLUDED.imdb_id,

    original_title = EXCLUDED.original_title,

    release_year = EXCLUDED.release_year,

    runtime_minutes = EXCLUDED.runtime_minutes,

    genres = EXCLUDED.genres,

    director = EXCLUDED.director,

    imdb_rating = EXCLUDED.imdb_rating,

    imdb_votes = EXCLUDED.imdb_votes,

    overview = EXCLUDED.overview,

    poster_url = EXCLUDED.poster_url,

    metacritic_score = EXCLUDED.metacritic_score,

    rotten_tomatoes_score =
        EXCLUDED.rotten_tomatoes_score,

    critic_summary =
        EXCLUDED.critic_summary;

INSERT INTO oscars_years (
    year,
    winner_title,
    imdb_id,
    original_title,
    release_year,
    runtime_minutes,
    genres,
    director,
    imdb_rating,
    imdb_votes,
    overview,
    poster_url,
    metacritic_score,
    rotten_tomatoes_score,
    critic_summary
)
VALUES (
    1982,
    'Gandhi',
    'tt0083987',
    'Gandhi',
    1982,
    191,
    'Biography, Drama, History',
    'Richard Attenborough',
    8.0,
    246824,
    'In 1893, Mohandas K. Gandhi is thrown off a South African train for being an Indian and traveling in a first class compartment. Gandhi realizes that the laws are biased against Indians and decides to start a non-violent protest campaign for the rights of all Indians in South Africa. After numerous arrests and the unwanted attention of the world, the government finally relents by recognizing rights for Indians, though not for the native blacks of South Africa. After this victory, Gandhi is invited back to India, where he is now considered something of a national hero. He is urged to take up the fight for India''s independence from the British Empire. Gandhi agrees, and mounts a non-violent non-cooperation campaign of unprecedented scale, coordinating millions of Indians nationwide. There are some setbacks, such as violence against the protesters and Gandhi''s occasional imprisonment. Nevertheless, the campaign generates great attention, and Britain faces intense public pressure. Too weak from World War II to continue enforcing its will in India, Britain finally grants India''s independence. Indians celebrate this victory, but their troubles are far from over. Religious tensions between Hindus and Muslims erupt into nation-wide violence. Gandhi declares a hunger strike, saying he will not eat until the fighting stops. The fighting does stop eventually, but the country is divided. It is decided that the northwest area of India, and eastern part of India (current day Bangladesh), both places where Muslims are in the majority, will become a new country called Pakistan (West and East Pakistan respectively). It is hoped that by encouraging the Muslims to live in a separate country, violence will abate. Gandhi is opposed to the idea, and is even willing to allow Muhammad Ali Jinnah to become the first prime minister of India, but the Partition of India is carried out nevertheless. Gandhi spends his last days trying to bring about peace between both nations. He thereby angers many dissidents on both sides, one of whom finally gets close enough to assassinate him.',
    'https://m.media-amazon.com/images/M/MV5BNTg3ODhlZTEtM2Q3MC00YzMxLWJjN2YtOWUyMDIyYTlhYzM3XkEyXkFqcGc@._V1_SX300.jpg',
    79,
    89,
    NULL
)
ON CONFLICT (year)
DO UPDATE SET

    winner_title = EXCLUDED.winner_title,

    imdb_id = EXCLUDED.imdb_id,

    original_title = EXCLUDED.original_title,

    release_year = EXCLUDED.release_year,

    runtime_minutes = EXCLUDED.runtime_minutes,

    genres = EXCLUDED.genres,

    director = EXCLUDED.director,

    imdb_rating = EXCLUDED.imdb_rating,

    imdb_votes = EXCLUDED.imdb_votes,

    overview = EXCLUDED.overview,

    poster_url = EXCLUDED.poster_url,

    metacritic_score = EXCLUDED.metacritic_score,

    rotten_tomatoes_score =
        EXCLUDED.rotten_tomatoes_score,

    critic_summary =
        EXCLUDED.critic_summary;

INSERT INTO oscars_years (
    year,
    winner_title,
    imdb_id,
    original_title,
    release_year,
    runtime_minutes,
    genres,
    director,
    imdb_rating,
    imdb_votes,
    overview,
    poster_url,
    metacritic_score,
    rotten_tomatoes_score,
    critic_summary
)
VALUES (
    1983,
    'Terms of Endearment',
    'tt0086425',
    'Terms of Endearment',
    1983,
    132,
    'Comedy, Drama',
    'James L. Brooks',
    7.4,
    71227,
    'Aurora and Emma are mother and daughter who march to different drummers. Beginning with Emma''s marriage, Aurora shows how difficult and loving she can be. The movie covers several years of their lives as each finds different reasons to go on living and find joy. Aurora''s interludes with Garrett Breedlove, retired astronaut and next door neighbor are quite striking. In the end, different people show their love in very different ways.',
    'https://m.media-amazon.com/images/M/MV5BMTk0ODM4NDk0MF5BMl5BanBnXkFtZTgwMTEzMDUxMDE@._V1_SX300.jpg',
    79,
    81,
    NULL
)
ON CONFLICT (year)
DO UPDATE SET

    winner_title = EXCLUDED.winner_title,

    imdb_id = EXCLUDED.imdb_id,

    original_title = EXCLUDED.original_title,

    release_year = EXCLUDED.release_year,

    runtime_minutes = EXCLUDED.runtime_minutes,

    genres = EXCLUDED.genres,

    director = EXCLUDED.director,

    imdb_rating = EXCLUDED.imdb_rating,

    imdb_votes = EXCLUDED.imdb_votes,

    overview = EXCLUDED.overview,

    poster_url = EXCLUDED.poster_url,

    metacritic_score = EXCLUDED.metacritic_score,

    rotten_tomatoes_score =
        EXCLUDED.rotten_tomatoes_score,

    critic_summary =
        EXCLUDED.critic_summary;

INSERT INTO oscars_years (
    year,
    winner_title,
    imdb_id,
    original_title,
    release_year,
    runtime_minutes,
    genres,
    director,
    imdb_rating,
    imdb_votes,
    overview,
    poster_url,
    metacritic_score,
    rotten_tomatoes_score,
    critic_summary
)
VALUES (
    1984,
    'Amadeus',
    'tt0086879',
    'Amadeus',
    1984,
    160,
    'Biography, Drama, Music',
    'Miloš Forman',
    8.4,
    472184,
    'Antonio Salieri believes that Wolfgang Amadeus Mozart''s music is divine and miraculous. He wishes he was himself as good a musician as Mozart so that he can praise the Lord through composing. He began his career as a devout man who believes his success and talent as a composer are God''s rewards for his piety. He''s also content as the respected, financially well-off, court composer of Austrian Emperor Joseph II. But he''s shocked to learn that Mozart is such a vulgar creature, and can''t understand why God favored Mozart to be his instrument. Salieri''s envy has made him an enemy of God whose greatness was evident in Mozart. He is ready to take revenge against God and Mozart for his own musical mediocrity.',
    'https://m.media-amazon.com/images/M/MV5BMzc2MjM0NTMtOGY4NC00NzY1LWE2ODUtZjMzY2RhNGNkZDAyXkEyXkFqcGc@._V1_SX300.jpg',
    87,
    90,
    NULL
)
ON CONFLICT (year)
DO UPDATE SET

    winner_title = EXCLUDED.winner_title,

    imdb_id = EXCLUDED.imdb_id,

    original_title = EXCLUDED.original_title,

    release_year = EXCLUDED.release_year,

    runtime_minutes = EXCLUDED.runtime_minutes,

    genres = EXCLUDED.genres,

    director = EXCLUDED.director,

    imdb_rating = EXCLUDED.imdb_rating,

    imdb_votes = EXCLUDED.imdb_votes,

    overview = EXCLUDED.overview,

    poster_url = EXCLUDED.poster_url,

    metacritic_score = EXCLUDED.metacritic_score,

    rotten_tomatoes_score =
        EXCLUDED.rotten_tomatoes_score,

    critic_summary =
        EXCLUDED.critic_summary;

INSERT INTO oscars_years (
    year,
    winner_title,
    imdb_id,
    original_title,
    release_year,
    runtime_minutes,
    genres,
    director,
    imdb_rating,
    imdb_votes,
    overview,
    poster_url,
    metacritic_score,
    rotten_tomatoes_score,
    critic_summary
)
VALUES (
    1985,
    'Out of Africa',
    'tt0089755',
    'Out of Africa',
    1985,
    161,
    'Biography, Drama, Romance',
    'Sydney Pollack',
    7.2,
    93930,
    'Follows the life of Karen Blixen, who establishes a plantation in Africa. Her life is complicated by a husband of convenience (Bror Blixen), a true love (Denys), troubles on the plantation, schooling of the natives, war, and catching VD from her husband.',
    'https://m.media-amazon.com/images/M/MV5BOWQ5MGI3NWYtMmVjNS00OWIzLWEzMGQtMGZhMzY3NjI2YjhiXkEyXkFqcGc@._V1_SX300.jpg',
    69,
    62,
    NULL
)
ON CONFLICT (year)
DO UPDATE SET

    winner_title = EXCLUDED.winner_title,

    imdb_id = EXCLUDED.imdb_id,

    original_title = EXCLUDED.original_title,

    release_year = EXCLUDED.release_year,

    runtime_minutes = EXCLUDED.runtime_minutes,

    genres = EXCLUDED.genres,

    director = EXCLUDED.director,

    imdb_rating = EXCLUDED.imdb_rating,

    imdb_votes = EXCLUDED.imdb_votes,

    overview = EXCLUDED.overview,

    poster_url = EXCLUDED.poster_url,

    metacritic_score = EXCLUDED.metacritic_score,

    rotten_tomatoes_score =
        EXCLUDED.rotten_tomatoes_score,

    critic_summary =
        EXCLUDED.critic_summary;

INSERT INTO oscars_years (
    year,
    winner_title,
    imdb_id,
    original_title,
    release_year,
    runtime_minutes,
    genres,
    director,
    imdb_rating,
    imdb_votes,
    overview,
    poster_url,
    metacritic_score,
    rotten_tomatoes_score,
    critic_summary
)
VALUES (
    1986,
    'Platoon',
    'tt0091763',
    'Platoon',
    1986,
    120,
    'Drama, War',
    'Oliver Stone',
    8.0,
    475936,
    'Chris Taylor is a young, naive American who gives up college and volunteers for combat in Vietnam. Upon arrival, he quickly discovers that his presence is quite nonessential, and is considered insignificant to the other soldiers, as he has not fought for as long as the rest of them and felt the effects of combat. Chris has two non-commissioned officers, the ill-tempered and indestructible Staff Sergeant Robert Barnes and the more pleasant and cooperative Sergeant Elias Grodin. A line is drawn between the two NCOs and a number of men in the platoon when an illegal killing occurs during a village raid. As the war continues, Chris himself draws towards psychological meltdown. And as he struggles for survival, he soon realizes he is fighting two battles, the conflict with the enemy and the conflict between the men within his platoon.',
    'https://m.media-amazon.com/images/M/MV5BZjE4YjllODAtZGMxZS00Mjg2LThkOWUtZjNkMjQ5YThiNDU4XkEyXkFqcGc@._V1_QL75_UX380_CR0,16,380,562_.jpg',
    92,
    89,
    NULL
)
ON CONFLICT (year)
DO UPDATE SET

    winner_title = EXCLUDED.winner_title,

    imdb_id = EXCLUDED.imdb_id,

    original_title = EXCLUDED.original_title,

    release_year = EXCLUDED.release_year,

    runtime_minutes = EXCLUDED.runtime_minutes,

    genres = EXCLUDED.genres,

    director = EXCLUDED.director,

    imdb_rating = EXCLUDED.imdb_rating,

    imdb_votes = EXCLUDED.imdb_votes,

    overview = EXCLUDED.overview,

    poster_url = EXCLUDED.poster_url,

    metacritic_score = EXCLUDED.metacritic_score,

    rotten_tomatoes_score =
        EXCLUDED.rotten_tomatoes_score,

    critic_summary =
        EXCLUDED.critic_summary;

INSERT INTO oscars_years (
    year,
    winner_title,
    imdb_id,
    original_title,
    release_year,
    runtime_minutes,
    genres,
    director,
    imdb_rating,
    imdb_votes,
    overview,
    poster_url,
    metacritic_score,
    rotten_tomatoes_score,
    critic_summary
)
VALUES (
    1987,
    'The Last Emperor',
    'tt0093389',
    'The Last Emperor',
    1987,
    163,
    'Biography, Drama, History',
    'Bernardo Bertolucci',
    7.7,
    120648,
    'This sweeping account of the life of Pu-Yi, the last emperor of China, follows the leader''s tumultuous reign. After being captured by the Red Army as a war criminal in 1950, Pu-Yi recalls his childhood from prison. He remembers his lavish youth in the Forbidden City, where he was afforded every luxury but unfortunately sheltered from the outside world and complex political situation surrounding him. As revolution sweeps through China, the world Pu-Yi knew is dramatically upended.',
    'https://m.media-amazon.com/images/M/MV5BYjIxYWFiMDgtZTgyMy00MjFiLWIyMmEtNGIyZjc1NTRlMzQ3XkEyXkFqcGc@._V1_SX300.jpg',
    76,
    86,
    NULL
)
ON CONFLICT (year)
DO UPDATE SET

    winner_title = EXCLUDED.winner_title,

    imdb_id = EXCLUDED.imdb_id,

    original_title = EXCLUDED.original_title,

    release_year = EXCLUDED.release_year,

    runtime_minutes = EXCLUDED.runtime_minutes,

    genres = EXCLUDED.genres,

    director = EXCLUDED.director,

    imdb_rating = EXCLUDED.imdb_rating,

    imdb_votes = EXCLUDED.imdb_votes,

    overview = EXCLUDED.overview,

    poster_url = EXCLUDED.poster_url,

    metacritic_score = EXCLUDED.metacritic_score,

    rotten_tomatoes_score =
        EXCLUDED.rotten_tomatoes_score,

    critic_summary =
        EXCLUDED.critic_summary;

INSERT INTO oscars_years (
    year,
    winner_title,
    imdb_id,
    original_title,
    release_year,
    runtime_minutes,
    genres,
    director,
    imdb_rating,
    imdb_votes,
    overview,
    poster_url,
    metacritic_score,
    rotten_tomatoes_score,
    critic_summary
)
VALUES (
    1988,
    'Rain Man',
    'tt0095953',
    'Rain Man',
    1988,
    133,
    'Drama',
    'Barry Levinson',
    8.0,
    588471,
    'Charles Sanford "Charlie" Babbit is a self-centered Los Angeles-based automobile dealer/hustler/bookie who is at war with his own life. Charlie, as a young teenager, used his father''s 1949 Buick convertible without permission and as a result, he went to jail for two days on account that his father reported it stolen. It is then that Charlie learns that his estranged father died and left him from his last will and testament a huge bed of roses and the car while the remainder will of $3 Million goes into a trust fund to be distributed to someone. Charlie seemed pretty angry by this and decides to look into this matter. It seems as if that "someone" is Raymond, Charlie''s unknown brother, an autistic savant who lives in a world of his own, resides at the Walbrook Institute. Charlie then kidnaps Raymond and decides to take him on a lust for life trip to the west coast as a threat to get the $3 Million inheritance. Raymond''s acts and nagging, including repeated talks of "Abbott &amp; Costello", "Four minutes till Wapner" and refusal to fly on an airline except Qantas drives Charlie insane... and out of his selfish world into a cross-country trek of pure love and understanding that these two both have.',
    'https://m.media-amazon.com/images/M/MV5BZDUzODNkNGUtNzJjNi00ODFlLTkzMzktMGNkOTIwYWM2YTQzXkEyXkFqcGc@._V1_SX300.jpg',
    65,
    88,
    NULL
)
ON CONFLICT (year)
DO UPDATE SET

    winner_title = EXCLUDED.winner_title,

    imdb_id = EXCLUDED.imdb_id,

    original_title = EXCLUDED.original_title,

    release_year = EXCLUDED.release_year,

    runtime_minutes = EXCLUDED.runtime_minutes,

    genres = EXCLUDED.genres,

    director = EXCLUDED.director,

    imdb_rating = EXCLUDED.imdb_rating,

    imdb_votes = EXCLUDED.imdb_votes,

    overview = EXCLUDED.overview,

    poster_url = EXCLUDED.poster_url,

    metacritic_score = EXCLUDED.metacritic_score,

    rotten_tomatoes_score =
        EXCLUDED.rotten_tomatoes_score,

    critic_summary =
        EXCLUDED.critic_summary;

INSERT INTO oscars_years (
    year,
    winner_title,
    imdb_id,
    original_title,
    release_year,
    runtime_minutes,
    genres,
    director,
    imdb_rating,
    imdb_votes,
    overview,
    poster_url,
    metacritic_score,
    rotten_tomatoes_score,
    critic_summary
)
VALUES (
    1989,
    'Driving Miss Daisy',
    'tt0097239',
    'Driving Miss Daisy',
    1989,
    99,
    'Comedy, Drama',
    'Bruce Beresford',
    7.3,
    124359,
    'An elderly Jewish widow living in Atlanta can no longer drive. Her son insists she allow him to hire a driver, which in the 1950s meant a black man. She resists any change in her life but, Hoke, the driver is hired by her son. She refuses to allow him to drive her anywhere at first, but Hoke slowly wins her over with his native good graces. The movie is directly taken from a stage play and does show it. It covers over twenty years of the pair''s life together as they slowly build a relationship that transcends their differences.',
    'https://m.media-amazon.com/images/M/MV5BN2M2MWUyZmQtMmI4Yi00NGE2LWFiZmEtNDZkZmYxNWRlM2Y1XkEyXkFqcGc@._V1_SX300.jpg',
    81,
    85,
    NULL
)
ON CONFLICT (year)
DO UPDATE SET

    winner_title = EXCLUDED.winner_title,

    imdb_id = EXCLUDED.imdb_id,

    original_title = EXCLUDED.original_title,

    release_year = EXCLUDED.release_year,

    runtime_minutes = EXCLUDED.runtime_minutes,

    genres = EXCLUDED.genres,

    director = EXCLUDED.director,

    imdb_rating = EXCLUDED.imdb_rating,

    imdb_votes = EXCLUDED.imdb_votes,

    overview = EXCLUDED.overview,

    poster_url = EXCLUDED.poster_url,

    metacritic_score = EXCLUDED.metacritic_score,

    rotten_tomatoes_score =
        EXCLUDED.rotten_tomatoes_score,

    critic_summary =
        EXCLUDED.critic_summary;

INSERT INTO oscars_years (
    year,
    winner_title,
    imdb_id,
    original_title,
    release_year,
    runtime_minutes,
    genres,
    director,
    imdb_rating,
    imdb_votes,
    overview,
    poster_url,
    metacritic_score,
    rotten_tomatoes_score,
    critic_summary
)
VALUES (
    1990,
    'Dances With Wolves',
    'tt0099348',
    'Dances with Wolves',
    1990,
    181,
    'Adventure, Drama, Western',
    'Kevin Costner',
    8.0,
    312508,
    'Lt. John Dunbar is dubbed a hero after he accidentally leads Union troops to a victory during the Civil War. He requests a position on the western frontier, but finds it deserted. He soon finds out he is not alone, but meets a wolf he dubs "Two-socks" and a curious Indian tribe. Dunbar quickly makes friends with the tribe, and discovers a white woman who was raised by the Indians. He gradually earns the respect of these native people, and sheds his white-man''s ways.',
    'https://m.media-amazon.com/images/M/MV5BMTY3OTI5NDczN15BMl5BanBnXkFtZTcwNDA0NDY3Mw@@._V1_SX300.jpg',
    72,
    87,
    NULL
)
ON CONFLICT (year)
DO UPDATE SET

    winner_title = EXCLUDED.winner_title,

    imdb_id = EXCLUDED.imdb_id,

    original_title = EXCLUDED.original_title,

    release_year = EXCLUDED.release_year,

    runtime_minutes = EXCLUDED.runtime_minutes,

    genres = EXCLUDED.genres,

    director = EXCLUDED.director,

    imdb_rating = EXCLUDED.imdb_rating,

    imdb_votes = EXCLUDED.imdb_votes,

    overview = EXCLUDED.overview,

    poster_url = EXCLUDED.poster_url,

    metacritic_score = EXCLUDED.metacritic_score,

    rotten_tomatoes_score =
        EXCLUDED.rotten_tomatoes_score,

    critic_summary =
        EXCLUDED.critic_summary;

INSERT INTO oscars_years (
    year,
    winner_title,
    imdb_id,
    original_title,
    release_year,
    runtime_minutes,
    genres,
    director,
    imdb_rating,
    imdb_votes,
    overview,
    poster_url,
    metacritic_score,
    rotten_tomatoes_score,
    critic_summary
)
VALUES (
    1991,
    'The Silence of the Lambs',
    'tt0102926',
    'The Silence of the Lambs',
    1991,
    118,
    'Crime, Drama, Horror',
    'Jonathan Demme',
    8.6,
    1743158,
    'F.B.I. trainee Clarice Starling (Jodie Foster) works hard to advance her career, while trying to hide or put behind her West Virginia roots, of which if some knew, would automatically classify her as being backward or white trash. After graduation, she aspires to work in the agency''s Behavioral Science Unit under the leadership of Jack Crawford (Scott Glenn). While she is still a trainee, Crawford asks her to question Dr. Hannibal Lecter (Sir Anthony Hopkins), a psychiatrist imprisoned, thus far, for eight years in maximum security isolation for being a serial killer who cannibalized his victims. Clarice is able to figure out the assignment is to pick Lecter''s brains to help them solve another serial murder case, that of someone coined by the media as "Buffalo Bill" (Ted Levine), who has so far killed five victims, all located in the eastern U.S., all young women, who are slightly overweight (especially around the hips), all who were drowned in natural bodies of water, and all who were stripped of large swaths of skin. She also figures that Crawford chose her, as a woman, to be able to trigger some emotional response from Lecter. After speaking to Lecter for the first time, she realizes that everything with him will be a psychological game, with her often having to read between the very cryptic lines he provides. She has to decide how much she will play along, as his request in return for talking to him is to expose herself emotionally to him. The case takes a more dire turn when a sixth victim is discovered, this one from who they are able to retrieve a key piece of evidence, if Lecter is being forthright as to its meaning. A potential seventh victim is high profile Catherine Martin (Brooke Smith), the daughter of Senator Ruth Martin (Diane Baker), which places greater scrutiny on the case as they search for a hopefully still alive Catherine. Who may factor into what happens is Dr. Frederick Chilton (Anthony Heald), the warden at the prison, an opportunist who sees the higher profile with Catherine, meaning a higher profile for himself if he can insert himself successfully into the proceedings.',
    'https://m.media-amazon.com/images/M/MV5BNDdhOGJhYzctYzYwZC00YmI2LWI0MjctYjg4ODdlMDExYjBlXkEyXkFqcGc@._V1_QL75_UY562_CR1,0,380,562_.jpg',
    86,
    95,
    NULL
)
ON CONFLICT (year)
DO UPDATE SET

    winner_title = EXCLUDED.winner_title,

    imdb_id = EXCLUDED.imdb_id,

    original_title = EXCLUDED.original_title,

    release_year = EXCLUDED.release_year,

    runtime_minutes = EXCLUDED.runtime_minutes,

    genres = EXCLUDED.genres,

    director = EXCLUDED.director,

    imdb_rating = EXCLUDED.imdb_rating,

    imdb_votes = EXCLUDED.imdb_votes,

    overview = EXCLUDED.overview,

    poster_url = EXCLUDED.poster_url,

    metacritic_score = EXCLUDED.metacritic_score,

    rotten_tomatoes_score =
        EXCLUDED.rotten_tomatoes_score,

    critic_summary =
        EXCLUDED.critic_summary;

INSERT INTO oscars_years (
    year,
    winner_title,
    imdb_id,
    original_title,
    release_year,
    runtime_minutes,
    genres,
    director,
    imdb_rating,
    imdb_votes,
    overview,
    poster_url,
    metacritic_score,
    rotten_tomatoes_score,
    critic_summary
)
VALUES (
    1992,
    'Unforgiven',
    'tt0105695',
    'Unforgiven',
    1992,
    130,
    'Drama, Western',
    'Clint Eastwood',
    8.2,
    471716,
    'After escaping death by the skin of her teeth, the horribly disfigured prostitute, Delilah Fitzgerald, and her appalled and equally furious co-workers summon up the courage to seek retribution in 1880s Wyoming''s dangerous town of Big Whiskey. With a hefty bounty on the perpetrators'' heads, triggered by the tough Sheriff "Little Bill" Daggett''s insufficient sense of justice, the infamous former outlaw and now destitute Kansas hog farmer, William Munny, embarks on a murderous last mission to find the men behind the hideous crime. Along with his old partner-in-crime, Ned Logan, and the brash but inexperienced young gunman, the "Schofield Kid", Munny enters a perilous world he has renounced many years ago, knowing that he walks right into a deadly trap; however, he still needs to find a way to raise his motherless children. Now, blood demands blood. Who is the hero, and who is the villain?',
    'https://m.media-amazon.com/images/M/MV5BNmZmMzM3YWMtZjg5Yi00M2MxLTg3ZGItNGU4YjQxNDAxM2Q4XkEyXkFqcGc@._V1_SX300.jpg',
    85,
    96,
    NULL
)
ON CONFLICT (year)
DO UPDATE SET

    winner_title = EXCLUDED.winner_title,

    imdb_id = EXCLUDED.imdb_id,

    original_title = EXCLUDED.original_title,

    release_year = EXCLUDED.release_year,

    runtime_minutes = EXCLUDED.runtime_minutes,

    genres = EXCLUDED.genres,

    director = EXCLUDED.director,

    imdb_rating = EXCLUDED.imdb_rating,

    imdb_votes = EXCLUDED.imdb_votes,

    overview = EXCLUDED.overview,

    poster_url = EXCLUDED.poster_url,

    metacritic_score = EXCLUDED.metacritic_score,

    rotten_tomatoes_score =
        EXCLUDED.rotten_tomatoes_score,

    critic_summary =
        EXCLUDED.critic_summary;

INSERT INTO oscars_years (
    year,
    winner_title,
    imdb_id,
    original_title,
    release_year,
    runtime_minutes,
    genres,
    director,
    imdb_rating,
    imdb_votes,
    overview,
    poster_url,
    metacritic_score,
    rotten_tomatoes_score,
    critic_summary
)
VALUES (
    1993,
    'Schindler''s List',
    'tt0108052',
    'Schindler''s List',
    1993,
    196,
    'Biography, Drama, History',
    'Steven Spielberg',
    9.0,
    1598921,
    'Oskar Schindler is a vain and greedy German businessman who becomes an unlikely humanitarian amid the barbaric German Nazi reign when he feels compelled to turn his factory into a refuge for Jews. Based on the true story of Oskar Schindler who managed to save about 1100 Jews from being gassed at the Auschwitz concentration camp, it is a testament to the good in all of us.',
    'https://m.media-amazon.com/images/M/MV5BNjM1ZDQxYWUtMzQyZS00MTE1LWJmZGYtNGUyNTdlYjM3ZmVmXkEyXkFqcGc@._V1_QL75_UX380_CR0,4,380,562_.jpg',
    95,
    98,
    NULL
)
ON CONFLICT (year)
DO UPDATE SET

    winner_title = EXCLUDED.winner_title,

    imdb_id = EXCLUDED.imdb_id,

    original_title = EXCLUDED.original_title,

    release_year = EXCLUDED.release_year,

    runtime_minutes = EXCLUDED.runtime_minutes,

    genres = EXCLUDED.genres,

    director = EXCLUDED.director,

    imdb_rating = EXCLUDED.imdb_rating,

    imdb_votes = EXCLUDED.imdb_votes,

    overview = EXCLUDED.overview,

    poster_url = EXCLUDED.poster_url,

    metacritic_score = EXCLUDED.metacritic_score,

    rotten_tomatoes_score =
        EXCLUDED.rotten_tomatoes_score,

    critic_summary =
        EXCLUDED.critic_summary;

INSERT INTO oscars_years (
    year,
    winner_title,
    imdb_id,
    original_title,
    release_year,
    runtime_minutes,
    genres,
    director,
    imdb_rating,
    imdb_votes,
    overview,
    poster_url,
    metacritic_score,
    rotten_tomatoes_score,
    critic_summary
)
VALUES (
    1994,
    'Forrest Gump',
    'tt0109830',
    'Forrest Gump',
    1994,
    142,
    'Drama, Romance',
    'Robert Zemeckis',
    8.8,
    2526560,
    'Forrest Gump is a simple man with a low I.Q. but good intentions. He is running through childhood with his best and only friend Jenny. His ''mama'' teaches him the ways of life and leaves him to choose his destiny. Forrest joins the army for service in Vietnam, finding new friends called Dan and Bubba, he wins medals, creates a famous shrimp fishing fleet, inspires people to jog, starts a ping-pong craze, creates the smiley, writes bumper stickers and songs, donates to people and meets the president several times. However, this is all irrelevant to Forrest who can only think of his childhood sweetheart Jenny Curran, who has messed up her life. Although in the end all he wants to prove is that anyone can love anyone.',
    'https://m.media-amazon.com/images/M/MV5BNDYwNzVjMTItZmU5YS00YjQ5LTljYjgtMjY2NDVmYWMyNWFmXkEyXkFqcGc@._V1_QL75_UY562_CR4,0,380,562_.jpg',
    82,
    75,
    NULL
)
ON CONFLICT (year)
DO UPDATE SET

    winner_title = EXCLUDED.winner_title,

    imdb_id = EXCLUDED.imdb_id,

    original_title = EXCLUDED.original_title,

    release_year = EXCLUDED.release_year,

    runtime_minutes = EXCLUDED.runtime_minutes,

    genres = EXCLUDED.genres,

    director = EXCLUDED.director,

    imdb_rating = EXCLUDED.imdb_rating,

    imdb_votes = EXCLUDED.imdb_votes,

    overview = EXCLUDED.overview,

    poster_url = EXCLUDED.poster_url,

    metacritic_score = EXCLUDED.metacritic_score,

    rotten_tomatoes_score =
        EXCLUDED.rotten_tomatoes_score,

    critic_summary =
        EXCLUDED.critic_summary;

INSERT INTO oscars_years (
    year,
    winner_title,
    imdb_id,
    original_title,
    release_year,
    runtime_minutes,
    genres,
    director,
    imdb_rating,
    imdb_votes,
    overview,
    poster_url,
    metacritic_score,
    rotten_tomatoes_score,
    critic_summary
)
VALUES (
    1995,
    'Braveheart',
    'tt0112573',
    'Braveheart',
    1995,
    178,
    'Drama, War',
    'Mel Gibson',
    8.3,
    1169904,
    'William Wallace is a Scottish rebel who leads an uprising against the cruel English ruler Edward the Longshanks, who wishes to inherit the crown of Scotland for himself. When he was a young boy, William Wallace''s father and brother, along with many others, lost their lives trying to free Scotland. Once he loses another of his loved ones, William Wallace begins his long quest to make Scotland free once and for all, along with the assistance of Robert the Bruce.',
    'https://m.media-amazon.com/images/M/MV5BNGMxZDBhNGQtYTZlNi00N2UzLWI4NDEtNmUzNWM2NTdmZDA0XkEyXkFqcGc@._V1_SX300.jpg',
    68,
    74,
    NULL
)
ON CONFLICT (year)
DO UPDATE SET

    winner_title = EXCLUDED.winner_title,

    imdb_id = EXCLUDED.imdb_id,

    original_title = EXCLUDED.original_title,

    release_year = EXCLUDED.release_year,

    runtime_minutes = EXCLUDED.runtime_minutes,

    genres = EXCLUDED.genres,

    director = EXCLUDED.director,

    imdb_rating = EXCLUDED.imdb_rating,

    imdb_votes = EXCLUDED.imdb_votes,

    overview = EXCLUDED.overview,

    poster_url = EXCLUDED.poster_url,

    metacritic_score = EXCLUDED.metacritic_score,

    rotten_tomatoes_score =
        EXCLUDED.rotten_tomatoes_score,

    critic_summary =
        EXCLUDED.critic_summary;

INSERT INTO oscars_years (
    year,
    winner_title,
    imdb_id,
    original_title,
    release_year,
    runtime_minutes,
    genres,
    director,
    imdb_rating,
    imdb_votes,
    overview,
    poster_url,
    metacritic_score,
    rotten_tomatoes_score,
    critic_summary
)
VALUES (
    1996,
    'The English Patient',
    'tt0116209',
    'The English Patient',
    1996,
    162,
    'Drama, Romance, War',
    'Anthony Minghella',
    7.4,
    214917,
    'October 1944 in war torn Italy. Hana (Juliette Binoche), a French-Canadian nurse working in a mobile army medical unit, feels like everything she loves in life dies on her. Because of the difficulty traveling and the dangers, especially as the landscape is still heavily booby-trapped with mines, Hana volunteers to stay behind at a church to care solely for a dying semi-amnesiac patient, who is badly burned and disfigured. She agrees to catch up to the rest of the unit after he dies. All the patient remembers is that he is English, and that he is married. Their solitude is disrupted with the arrival at the church of fellow Canadian David Caravaggio (Willem Dafoe), part of the Intelligence Service, who is certain that he knows the patient as a man who cooperated with the Germans. Caravaggio believes that the patient''s memory is largely intact, and that he is running away from his past, in part, or in its entirety. The patient does open up about his past, all surrounding his work as a cartographer in North Africa, which was interrupted by the war. He may not be running from his work as a spy for the Germans as Caravaggio believes, but rather the memory of an affair he had with married Katharine Clifton (Dame Kristin Scott Thomas), the love of his life, and the memory of a promise not totally fulfilled. Hana may also test her theory of her fates with love and death as she embarks on a relationship of her own with Kip Singh (Naveen Andrews), a Sikh from India, whose unit has camped on the now overgrown lawn of the church. Their work entails sweeping for and diffusing mines, the discovery of one such mine which had earlier saved her life.',
    'https://m.media-amazon.com/images/M/MV5BODg0NjdiN2UtZWY3MS00M2JmLTg1MDAtY2ZiNzNiMzAzYWFmXkEyXkFqcGc@._V1_SX300.jpg',
    86,
    86,
    NULL
)
ON CONFLICT (year)
DO UPDATE SET

    winner_title = EXCLUDED.winner_title,

    imdb_id = EXCLUDED.imdb_id,

    original_title = EXCLUDED.original_title,

    release_year = EXCLUDED.release_year,

    runtime_minutes = EXCLUDED.runtime_minutes,

    genres = EXCLUDED.genres,

    director = EXCLUDED.director,

    imdb_rating = EXCLUDED.imdb_rating,

    imdb_votes = EXCLUDED.imdb_votes,

    overview = EXCLUDED.overview,

    poster_url = EXCLUDED.poster_url,

    metacritic_score = EXCLUDED.metacritic_score,

    rotten_tomatoes_score =
        EXCLUDED.rotten_tomatoes_score,

    critic_summary =
        EXCLUDED.critic_summary;

INSERT INTO oscars_years (
    year,
    winner_title,
    imdb_id,
    original_title,
    release_year,
    runtime_minutes,
    genres,
    director,
    imdb_rating,
    imdb_votes,
    overview,
    poster_url,
    metacritic_score,
    rotten_tomatoes_score,
    critic_summary
)
VALUES (
    1997,
    'Titanic',
    'tt0120338',
    'Titanic',
    1997,
    194,
    'Drama, Romance',
    'James Cameron',
    8.0,
    1408486,
    '84 years later, a 100 year-old woman named Rose DeWitt Bukater tells the story to her granddaughter Lizzy Calvert, Brock Lovett, Lewis Bodine, Bobby Buell and Anatoly Mikailavich on the Keldysh about her life set in April 10th 1912, on a ship called Titanic when young Rose boards the departing ship with the upper-class passengers and her mother, Ruth DeWitt Bukater, and her fiancé, Caledon Hockley. Meanwhile, a drifter and artist named Jack Dawson and his best friend Fabrizio De Rossi win third-class tickets to the ship in a game. And she explains the whole story from departure until the death of Titanic on its first and last voyage April 15th, 1912 at 2:20 in the morning.',
    'https://m.media-amazon.com/images/M/MV5BYzYyN2FiZmUtYWYzMy00MzViLWJkZTMtOGY1ZjgzNWMwN2YxXkEyXkFqcGc@._V1_QL75_UX380_CR0,2,380,562_.jpg',
    75,
    88,
    NULL
)
ON CONFLICT (year)
DO UPDATE SET

    winner_title = EXCLUDED.winner_title,

    imdb_id = EXCLUDED.imdb_id,

    original_title = EXCLUDED.original_title,

    release_year = EXCLUDED.release_year,

    runtime_minutes = EXCLUDED.runtime_minutes,

    genres = EXCLUDED.genres,

    director = EXCLUDED.director,

    imdb_rating = EXCLUDED.imdb_rating,

    imdb_votes = EXCLUDED.imdb_votes,

    overview = EXCLUDED.overview,

    poster_url = EXCLUDED.poster_url,

    metacritic_score = EXCLUDED.metacritic_score,

    rotten_tomatoes_score =
        EXCLUDED.rotten_tomatoes_score,

    critic_summary =
        EXCLUDED.critic_summary;

INSERT INTO oscars_years (
    year,
    winner_title,
    imdb_id,
    original_title,
    release_year,
    runtime_minutes,
    genres,
    director,
    imdb_rating,
    imdb_votes,
    overview,
    poster_url,
    metacritic_score,
    rotten_tomatoes_score,
    critic_summary
)
VALUES (
    1998,
    'Shakespeare in Love',
    'tt0138097',
    'Shakespeare in Love',
    1998,
    123,
    'Comedy, Drama, History',
    'John Madden',
    7.1,
    244049,
    'William Shakespeare (Joseph Fiennes) is a known but struggling poet, playwright, and actor, who not only has sold his next play to both Philip Henslowe (Geoffrey Rush) and Richard Burbage (Martin Clunes), but now faces a far more difficult problem: he is bereft of ideas and has yet to begin writing. He is in search of his muse, the woman who will inspire him but all attempts fail him until he meets the beautiful Viola De Lesseps (Gwyneth Paltrow). She loves the theatre and would like nothing more than to take to the stage, but is forbidden from doing so as only men can be actors. She is also a great admirer of Shakespeare''s works. Dressing as a man, and going by the name of "Thomas Kent", she auditions and is ideal for a part in his next play. Shakespeare soon sees through her disguise and they begin a love affair, one they know cannot end happily for them as he is already married and she has been promised to the dour Lord Wessex (Colin Firth). As the company rehearses his new play, William and Viola''s love is transferred to the written page leading to the masterpiece that is Romeo and Juliet.',
    'https://m.media-amazon.com/images/M/MV5BYmM3MTllNzYtN2MzNS00NWQwLTk0NTEtNjY1MmMwYjNkNTE5XkEyXkFqcGc@._V1_SX300.jpg',
    87,
    93,
    NULL
)
ON CONFLICT (year)
DO UPDATE SET

    winner_title = EXCLUDED.winner_title,

    imdb_id = EXCLUDED.imdb_id,

    original_title = EXCLUDED.original_title,

    release_year = EXCLUDED.release_year,

    runtime_minutes = EXCLUDED.runtime_minutes,

    genres = EXCLUDED.genres,

    director = EXCLUDED.director,

    imdb_rating = EXCLUDED.imdb_rating,

    imdb_votes = EXCLUDED.imdb_votes,

    overview = EXCLUDED.overview,

    poster_url = EXCLUDED.poster_url,

    metacritic_score = EXCLUDED.metacritic_score,

    rotten_tomatoes_score =
        EXCLUDED.rotten_tomatoes_score,

    critic_summary =
        EXCLUDED.critic_summary;

INSERT INTO oscars_years (
    year,
    winner_title,
    imdb_id,
    original_title,
    release_year,
    runtime_minutes,
    genres,
    director,
    imdb_rating,
    imdb_votes,
    overview,
    poster_url,
    metacritic_score,
    rotten_tomatoes_score,
    critic_summary
)
VALUES (
    1999,
    'American Beauty',
    'tt0169547',
    'American Beauty',
    1999,
    122,
    'Drama',
    'Sam Mendes',
    8.3,
    1286252,
    'After his death sometime in his 43rd year, suburbanite Lester Burnham tells of the last few weeks of his life, during which he had no idea of his imminent passing. He is a husband to real estate agent Carolyn Burnham and father to high school student Jane Burnham. Although Lester and Carolyn once loved each other, they now merely tolerate each other. Typical wallflower Jane also hates both her parents; the three suffer individually in silence in their home life. Jane tries to steer clear of both her parents. Carolyn, relatively new to the real estate business, wants to create the persona of success to further her career, aspiring to the professional life of Buddy Kane, the king of the real estate business in their neighborhood. Lester merely walks mindlessly through life, including at his job in advertising. His company is downsizing, and he, like all the other employees, has to justify his position to the newly hired efficiency expert to keep his job. Things change for Lester when he falls in love at first sight with Jane''s more experienced classmate, Angela Hayes. Both Janie and Angela can see Lester''s sexual infatuation with Angela, who courts such attention from any man as a sign that she is model material, she having once appeared in Seventeen and is a career to which she aspires. Lester''s infatuation with Angela gives him a reenergized view on life, where he openly doesn''t care anymore what anyone thinks about what he does, anyone except Angela. This infatuation coincides with the Fittses moving in next door: homophobic disciplinarian US Marine Colonel Frank Fitts who rules the house with a military fist (that fist being both figurative and literal), his semi-comatose wife Barbara Fitts, and their bright and quietly subversive 18-year-old son Ricky Fitts, who openly abides by his father''s rules while behind the scenes lives by his own quite different perspective. Much like Lester''s infatuation, Ricky immediately becomes infatuated with Jane; he considers girls like Angela as ordinary. The entry of Angela and the Fittses into the Burnhams'' lives ultimately leads to each of the players confronting what is truly in his or her heart.',
    'https://m.media-amazon.com/images/M/MV5BMDI1MDE0OTMtMmI2MS00Yjc2LTg2MTItMWExYTg5NzA1OGUzXkEyXkFqcGc@._V1_SX300.jpg',
    84,
    87,
    NULL
)
ON CONFLICT (year)
DO UPDATE SET

    winner_title = EXCLUDED.winner_title,

    imdb_id = EXCLUDED.imdb_id,

    original_title = EXCLUDED.original_title,

    release_year = EXCLUDED.release_year,

    runtime_minutes = EXCLUDED.runtime_minutes,

    genres = EXCLUDED.genres,

    director = EXCLUDED.director,

    imdb_rating = EXCLUDED.imdb_rating,

    imdb_votes = EXCLUDED.imdb_votes,

    overview = EXCLUDED.overview,

    poster_url = EXCLUDED.poster_url,

    metacritic_score = EXCLUDED.metacritic_score,

    rotten_tomatoes_score =
        EXCLUDED.rotten_tomatoes_score,

    critic_summary =
        EXCLUDED.critic_summary;

INSERT INTO oscars_years (
    year,
    winner_title,
    imdb_id,
    original_title,
    release_year,
    runtime_minutes,
    genres,
    director,
    imdb_rating,
    imdb_votes,
    overview,
    poster_url,
    metacritic_score,
    rotten_tomatoes_score,
    critic_summary
)
VALUES (
    2000,
    'Gladiator',
    'tt0172495',
    'Gladiator',
    2000,
    155,
    'Action, Adventure, Drama',
    'Ridley Scott',
    8.5,
    1875113,
    'Maximus is a powerful Roman general, loved by the people and the aging Emperor, Marcus Aurelius. Before his death, the Emperor chooses Maximus to be his heir over his own son, Commodus, and a power struggle leaves Maximus and his family condemned to death. The powerful general is captured and put into the Gladiator games until he dies. The only desire that fuels him now is the chance to rise to the top so that he will be able to look into the eyes of the man who will feel his revenge.',
    'https://m.media-amazon.com/images/M/MV5BYWQ4YmNjYjEtOWE1Zi00Y2U4LWI4NTAtMTU0MjkxNWQ1ZmJiXkEyXkFqcGc@._V1_QL75_UX380_CR0,0,380,562_.jpg',
    67,
    80,
    NULL
)
ON CONFLICT (year)
DO UPDATE SET

    winner_title = EXCLUDED.winner_title,

    imdb_id = EXCLUDED.imdb_id,

    original_title = EXCLUDED.original_title,

    release_year = EXCLUDED.release_year,

    runtime_minutes = EXCLUDED.runtime_minutes,

    genres = EXCLUDED.genres,

    director = EXCLUDED.director,

    imdb_rating = EXCLUDED.imdb_rating,

    imdb_votes = EXCLUDED.imdb_votes,

    overview = EXCLUDED.overview,

    poster_url = EXCLUDED.poster_url,

    metacritic_score = EXCLUDED.metacritic_score,

    rotten_tomatoes_score =
        EXCLUDED.rotten_tomatoes_score,

    critic_summary =
        EXCLUDED.critic_summary;

INSERT INTO oscars_years (
    year,
    winner_title,
    imdb_id,
    original_title,
    release_year,
    runtime_minutes,
    genres,
    director,
    imdb_rating,
    imdb_votes,
    overview,
    poster_url,
    metacritic_score,
    rotten_tomatoes_score,
    critic_summary
)
VALUES (
    2001,
    'A Beautiful Mind',
    'tt0268978',
    'A Beautiful Mind',
    2001,
    135,
    'Biography, Drama, Mystery',
    'Ron Howard',
    8.2,
    1061589,
    'Mathematician John Nash rises to prominence at Princeton with his groundbreaking theories in game theory. While achieving academic success, he begins experiencing paranoid delusions and hallucinations, straining his relationships with his wife Alicia and colleagues. Nash struggles with schizophrenia, gradually learning to distinguish reality from illusion while continuing his work. The film explores genius, mental illness, love, and perseverance, showing the challenges of balancing personal struggles with professional achievement.',
    'https://m.media-amazon.com/images/M/MV5BYjgzNjFkMmItOGJhNi00NWM3LWJlYTUtNDExMGQ3ZTI3NjJkXkEyXkFqcGc@._V1_QL75_UX380_CR0,1,380,562_.jpg',
    72,
    74,
    NULL
)
ON CONFLICT (year)
DO UPDATE SET

    winner_title = EXCLUDED.winner_title,

    imdb_id = EXCLUDED.imdb_id,

    original_title = EXCLUDED.original_title,

    release_year = EXCLUDED.release_year,

    runtime_minutes = EXCLUDED.runtime_minutes,

    genres = EXCLUDED.genres,

    director = EXCLUDED.director,

    imdb_rating = EXCLUDED.imdb_rating,

    imdb_votes = EXCLUDED.imdb_votes,

    overview = EXCLUDED.overview,

    poster_url = EXCLUDED.poster_url,

    metacritic_score = EXCLUDED.metacritic_score,

    rotten_tomatoes_score =
        EXCLUDED.rotten_tomatoes_score,

    critic_summary =
        EXCLUDED.critic_summary;

INSERT INTO oscars_years (
    year,
    winner_title,
    imdb_id,
    original_title,
    release_year,
    runtime_minutes,
    genres,
    director,
    imdb_rating,
    imdb_votes,
    overview,
    poster_url,
    metacritic_score,
    rotten_tomatoes_score,
    critic_summary
)
VALUES (
    2002,
    'Chicago',
    'tt0299658',
    'Chicago',
    2002,
    113,
    'Comedy, Crime, Musical',
    'Rob Marshall',
    7.2,
    258194,
    'Murderesses Velma Kelly (Catherine Zeta-Jones) (a chanteuse and tease who killed her husband and sister after finding them in bed together) and Roxie Hart (Renée Zellweger) (who killed her boyfriend when she discovered he wasn''t going to make her a star) find themselves on death row together and fight for the fame that will keep them from the gallows in 1920s Chicago.',
    'https://m.media-amazon.com/images/M/MV5BNmJmZDEyNTctOTM1MS00NWEwLWFkMjctMjhhODEzMjU1MjA0XkEyXkFqcGc@._V1_SX300.jpg',
    81,
    87,
    NULL
)
ON CONFLICT (year)
DO UPDATE SET

    winner_title = EXCLUDED.winner_title,

    imdb_id = EXCLUDED.imdb_id,

    original_title = EXCLUDED.original_title,

    release_year = EXCLUDED.release_year,

    runtime_minutes = EXCLUDED.runtime_minutes,

    genres = EXCLUDED.genres,

    director = EXCLUDED.director,

    imdb_rating = EXCLUDED.imdb_rating,

    imdb_votes = EXCLUDED.imdb_votes,

    overview = EXCLUDED.overview,

    poster_url = EXCLUDED.poster_url,

    metacritic_score = EXCLUDED.metacritic_score,

    rotten_tomatoes_score =
        EXCLUDED.rotten_tomatoes_score,

    critic_summary =
        EXCLUDED.critic_summary;

INSERT INTO oscars_years (
    year,
    winner_title,
    imdb_id,
    original_title,
    release_year,
    runtime_minutes,
    genres,
    director,
    imdb_rating,
    imdb_votes,
    overview,
    poster_url,
    metacritic_score,
    rotten_tomatoes_score,
    critic_summary
)
VALUES (
    2003,
    'The Lord of the Rings: The Return of the King',
    'tt0167260',
    'The Lord of the Rings: The Return of the King',
    2003,
    201,
    'Adventure, Drama, Fantasy',
    'Peter Jackson',
    9.0,
    2186778,
    'The final confrontation between the forces of good and evil fighting for control of the future of Middle-earth. Frodo and Sam reach Mordor in their quest to destroy the One Ring, while Aragorn leads the forces of good against Sauron''s evil army at the stone city of Minas Tirith.',
    'https://m.media-amazon.com/images/M/MV5BMTZkMjBjNWMtZGI5OC00MGU0LTk4ZTItODg2NWM3NTVmNWQ4XkEyXkFqcGc@._V1_QL75_UX380_CR0,0,380,562_.jpg',
    94,
    94,
    NULL
)
ON CONFLICT (year)
DO UPDATE SET

    winner_title = EXCLUDED.winner_title,

    imdb_id = EXCLUDED.imdb_id,

    original_title = EXCLUDED.original_title,

    release_year = EXCLUDED.release_year,

    runtime_minutes = EXCLUDED.runtime_minutes,

    genres = EXCLUDED.genres,

    director = EXCLUDED.director,

    imdb_rating = EXCLUDED.imdb_rating,

    imdb_votes = EXCLUDED.imdb_votes,

    overview = EXCLUDED.overview,

    poster_url = EXCLUDED.poster_url,

    metacritic_score = EXCLUDED.metacritic_score,

    rotten_tomatoes_score =
        EXCLUDED.rotten_tomatoes_score,

    critic_summary =
        EXCLUDED.critic_summary;

INSERT INTO oscars_years (
    year,
    winner_title,
    imdb_id,
    original_title,
    release_year,
    runtime_minutes,
    genres,
    director,
    imdb_rating,
    imdb_votes,
    overview,
    poster_url,
    metacritic_score,
    rotten_tomatoes_score,
    critic_summary
)
VALUES (
    2004,
    'Million Dollar Baby',
    'tt0405159',
    'Million Dollar Baby',
    2004,
    132,
    'Drama, Sport',
    'Clint Eastwood',
    8.1,
    771884,
    'Wanting to learn from the best, aspiring boxer Maggie Fitzgerald (Hilary Swank) wants Frankie Dunn (Clint Eastwood) to train her. At the outset, he flatly refuses saying he has no interest in training a girl. Frankie leads a lonely existence, alienated from his only daughter and having few friends. Maggie''s rough around the edges, but shows a lot of grit in the ring and he eventually relents. Maggie not only proves to be the boxer he always dreamed of having under his wing, but a friend who fills the great void he''s had in his life. Maggie''s career skyrockets, but an accident in the ring leads her to ask Frankie for one last favor.',
    'https://m.media-amazon.com/images/M/MV5BMTkxNzA1NDQxOV5BMl5BanBnXkFtZTcwNTkyMTIzMw@@._V1_QL75_UY562_CR1,0,380,562_.jpg',
    86,
    90,
    NULL
)
ON CONFLICT (year)
DO UPDATE SET

    winner_title = EXCLUDED.winner_title,

    imdb_id = EXCLUDED.imdb_id,

    original_title = EXCLUDED.original_title,

    release_year = EXCLUDED.release_year,

    runtime_minutes = EXCLUDED.runtime_minutes,

    genres = EXCLUDED.genres,

    director = EXCLUDED.director,

    imdb_rating = EXCLUDED.imdb_rating,

    imdb_votes = EXCLUDED.imdb_votes,

    overview = EXCLUDED.overview,

    poster_url = EXCLUDED.poster_url,

    metacritic_score = EXCLUDED.metacritic_score,

    rotten_tomatoes_score =
        EXCLUDED.rotten_tomatoes_score,

    critic_summary =
        EXCLUDED.critic_summary;

INSERT INTO oscars_years (
    year,
    winner_title,
    imdb_id,
    original_title,
    release_year,
    runtime_minutes,
    genres,
    director,
    imdb_rating,
    imdb_votes,
    overview,
    poster_url,
    metacritic_score,
    rotten_tomatoes_score,
    critic_summary
)
VALUES (
    2005,
    'Crash',
    'tt0375679',
    'Crash',
    2004,
    112,
    'Crime, Drama, Thriller',
    'Paul Haggis',
    7.7,
    463819,
    'Over a thirty-six hour period in Los Angeles, a handful of disparate people''s lives intertwine as they deal with the tense race relations that belie life in the city. Among the players are: the Caucasian district attorney, who uses race as a political card; his Caucasian wife, who, having recently been carjacked by two black men, believes that her stereotypical views of non-whites is justified and cannot be considered racism; the two black carjackers who use their race both to their advantage and as an excuse; partnered Caucasian police constables, one who is a racist and uses his authority to harass non-whites, and the other who hates his partner because of those racist views, but who may have the same underlying values in his subconscious; a black film director and his black wife, who believes her husband doesn''t support their black background enough, especially in light of an incident with the racist white cop; partnered police detectives and sometimes lovers, one Hispanic female and the other black male, the latter who is dealing with a drugged out mother that feels he isn''t concerned enough about taking care of family; an East Asian man who is run over but who is hiding some valuable cargo in the back of his van; a Persian store owner, who feels he isn''t getting satisfaction from American society when his store is robbed time and time again; and a Hispanic locksmith, who just wants to keep his family, especially his young daughter, safe in a seemingly unsafe world.',
    'https://m.media-amazon.com/images/M/MV5BOTk1OTA1MjIyNV5BMl5BanBnXkFtZTcwODQxMTkyMQ@@._V1_SX300.jpg',
    66,
    73,
    NULL
)
ON CONFLICT (year)
DO UPDATE SET

    winner_title = EXCLUDED.winner_title,

    imdb_id = EXCLUDED.imdb_id,

    original_title = EXCLUDED.original_title,

    release_year = EXCLUDED.release_year,

    runtime_minutes = EXCLUDED.runtime_minutes,

    genres = EXCLUDED.genres,

    director = EXCLUDED.director,

    imdb_rating = EXCLUDED.imdb_rating,

    imdb_votes = EXCLUDED.imdb_votes,

    overview = EXCLUDED.overview,

    poster_url = EXCLUDED.poster_url,

    metacritic_score = EXCLUDED.metacritic_score,

    rotten_tomatoes_score =
        EXCLUDED.rotten_tomatoes_score,

    critic_summary =
        EXCLUDED.critic_summary;

INSERT INTO oscars_years (
    year,
    winner_title,
    imdb_id,
    original_title,
    release_year,
    runtime_minutes,
    genres,
    director,
    imdb_rating,
    imdb_votes,
    overview,
    poster_url,
    metacritic_score,
    rotten_tomatoes_score,
    critic_summary
)
VALUES (
    2006,
    'The Departed',
    'tt0407887',
    'The Departed',
    2006,
    151,
    'Crime, Drama, Thriller',
    'Martin Scorsese',
    8.5,
    1573121,
    'In this crime-action tour de force, the South Boston state police force is waging war on Irish-American organized crime. Young undercover cop Billy Costigan is assigned to infiltrate the mob syndicate run by gangland chief Frank Costello. While Billy quickly gains Costello''s confidence, Colin Sullivan, a hardened young criminal who has infiltrated the state police as an informer for the syndicate, is rising to a position of power in the Special Investigation Unit. Each man becomes deeply consumed by their double lives, gathering information about the plans and counter-plans of the operations they have penetrated. But when it becomes clear to both the mob and the police that there is a mole in their midst, Billy and Colin are suddenly in danger of being caught and exposed to the enemy - and each must race to uncover the identity of the other man in time to save themselves. But is either willing to turn on their friends and comrades they''ve made during their long stints undercover?',
    'https://m.media-amazon.com/images/M/MV5BMTI1MTY2OTIxNV5BMl5BanBnXkFtZTYwNjQ4NjY3._V1_QL75_UY562_CR0,0,380,562_.jpg',
    85,
    91,
    NULL
)
ON CONFLICT (year)
DO UPDATE SET

    winner_title = EXCLUDED.winner_title,

    imdb_id = EXCLUDED.imdb_id,

    original_title = EXCLUDED.original_title,

    release_year = EXCLUDED.release_year,

    runtime_minutes = EXCLUDED.runtime_minutes,

    genres = EXCLUDED.genres,

    director = EXCLUDED.director,

    imdb_rating = EXCLUDED.imdb_rating,

    imdb_votes = EXCLUDED.imdb_votes,

    overview = EXCLUDED.overview,

    poster_url = EXCLUDED.poster_url,

    metacritic_score = EXCLUDED.metacritic_score,

    rotten_tomatoes_score =
        EXCLUDED.rotten_tomatoes_score,

    critic_summary =
        EXCLUDED.critic_summary;

INSERT INTO oscars_years (
    year,
    winner_title,
    imdb_id,
    original_title,
    release_year,
    runtime_minutes,
    genres,
    director,
    imdb_rating,
    imdb_votes,
    overview,
    poster_url,
    metacritic_score,
    rotten_tomatoes_score,
    critic_summary
)
VALUES (
    2007,
    'No Country for Old Men',
    'tt0477348',
    'No Country for Old Men',
    2007,
    122,
    'Crime, Drama, Thriller',
    'Ethan Coen, Joel Coen',
    8.2,
    1208535,
    'In rural Texas, welder and hunter Llewelyn Moss (Josh Brolin) discovers the remains of several drug runners who have all killed each other in an exchange gone violently wrong. Rather than report the discovery to the police, Moss decides to simply take the two million dollars present for himself. This puts the psychopathic killer, Anton Chigurh (Javier Bardem), on his trail as he dispassionately murders nearly every rival, bystander and even employer in his pursuit of his quarry and the money. As Moss desperately attempts to keep one step ahead, the blood from this hunt begins to flow behind him with relentlessly growing intensity as Chigurh closes in. Meanwhile, the laconic Sheriff Ed Tom Bell (Tommy Lee Jones) blithely oversees the investigation even as he struggles to face the sheer enormity of the crimes he is attempting to thwart.',
    'https://m.media-amazon.com/images/M/MV5BMjA5Njk3MjM4OV5BMl5BanBnXkFtZTcwMTc5MTE1MQ@@._V1_SX300.jpg',
    92,
    93,
    NULL
)
ON CONFLICT (year)
DO UPDATE SET

    winner_title = EXCLUDED.winner_title,

    imdb_id = EXCLUDED.imdb_id,

    original_title = EXCLUDED.original_title,

    release_year = EXCLUDED.release_year,

    runtime_minutes = EXCLUDED.runtime_minutes,

    genres = EXCLUDED.genres,

    director = EXCLUDED.director,

    imdb_rating = EXCLUDED.imdb_rating,

    imdb_votes = EXCLUDED.imdb_votes,

    overview = EXCLUDED.overview,

    poster_url = EXCLUDED.poster_url,

    metacritic_score = EXCLUDED.metacritic_score,

    rotten_tomatoes_score =
        EXCLUDED.rotten_tomatoes_score,

    critic_summary =
        EXCLUDED.critic_summary;

INSERT INTO oscars_years (
    year,
    winner_title,
    imdb_id,
    original_title,
    release_year,
    runtime_minutes,
    genres,
    director,
    imdb_rating,
    imdb_votes,
    overview,
    poster_url,
    metacritic_score,
    rotten_tomatoes_score,
    critic_summary
)
VALUES (
    2008,
    'Slumdog Millionaire',
    'tt1010048',
    'Slumdog Millionaire',
    2008,
    120,
    'Crime, Drama, Romance',
    'Danny Boyle, Loveleen Tandan',
    8.0,
    914179,
    'The story of Jamal Malik, an 18 year-old orphan from the slums of Mumbai, who is about to experience the biggest day of his life. With the whole nation watching, he is just one question away from winning a staggering 20 million rupees on India''s Kaun Banega Crorepati? (2000) (Who Wants To Be A Millionaire?) But when the show breaks for the night, police arrest him on suspicion of cheating; how could a street kid know so much? Desperate to prove his innocence, Jamal tells the story of his life in the slum where he and his brother grew up, of their adventures together on the road, of vicious encounters with local gangs, and of Latika, the girl he loved and lost. Each chapter of his story reveals the key to the answer to one of the game show''s questions. Each chapter of Jamal''s increasingly layered story reveals where he learned the answers to the show''s seemingly impossible quizzes. But one question remains a mystery: what is this young man with no apparent desire for riches really doing on the game show? When the new day dawns and Jamal returns to answer the final question, the Inspector and sixty million viewers are about to find out. At the heart of its storytelling lies the question of how anyone comes to know the things they know about life and love.',
    'https://m.media-amazon.com/images/M/MV5BMTE5ZTRkYWEtZmU5MC00NDJjLTk3NmUtZGJlYTM2MmQ3NTJkXkEyXkFqcGc@._V1_SX300.jpg',
    84,
    92,
    NULL
)
ON CONFLICT (year)
DO UPDATE SET

    winner_title = EXCLUDED.winner_title,

    imdb_id = EXCLUDED.imdb_id,

    original_title = EXCLUDED.original_title,

    release_year = EXCLUDED.release_year,

    runtime_minutes = EXCLUDED.runtime_minutes,

    genres = EXCLUDED.genres,

    director = EXCLUDED.director,

    imdb_rating = EXCLUDED.imdb_rating,

    imdb_votes = EXCLUDED.imdb_votes,

    overview = EXCLUDED.overview,

    poster_url = EXCLUDED.poster_url,

    metacritic_score = EXCLUDED.metacritic_score,

    rotten_tomatoes_score =
        EXCLUDED.rotten_tomatoes_score,

    critic_summary =
        EXCLUDED.critic_summary;

INSERT INTO oscars_years (
    year,
    winner_title,
    imdb_id,
    original_title,
    release_year,
    runtime_minutes,
    genres,
    director,
    imdb_rating,
    imdb_votes,
    overview,
    poster_url,
    metacritic_score,
    rotten_tomatoes_score,
    critic_summary
)
VALUES (
    2009,
    'The Hurt Locker',
    'tt0887912',
    'The Hurt Locker',
    2008,
    131,
    'Drama, Thriller, War',
    'Kathryn Bigelow',
    7.5,
    499091,
    'An intense portrayal of elite soldiers who have one of the most dangerous jobs in the world: disarming bombs in the heat of combat. When a new sergeant, James, takes over a highly trained bomb disposal team amidst violent conflict, he surprises his two subordinates, Sanborn and Eldridge, by recklessly plunging them into a deadly game of urban combat, behaving as if he''s indifferent to death. As the men struggle to control their wild new leader, the city explodes into chaos, and James'' true character reveals itself in a way that will change each man forever.',
    'https://m.media-amazon.com/images/M/MV5BNzgyMGM2YTItYzY2Yi00NDQ0LWE0M2EtMGUzYjFlMDgyY2M3XkEyXkFqcGc@._V1_QL75_UX380_CR0,4,380,562_.jpg',
    95,
    96,
    NULL
)
ON CONFLICT (year)
DO UPDATE SET

    winner_title = EXCLUDED.winner_title,

    imdb_id = EXCLUDED.imdb_id,

    original_title = EXCLUDED.original_title,

    release_year = EXCLUDED.release_year,

    runtime_minutes = EXCLUDED.runtime_minutes,

    genres = EXCLUDED.genres,

    director = EXCLUDED.director,

    imdb_rating = EXCLUDED.imdb_rating,

    imdb_votes = EXCLUDED.imdb_votes,

    overview = EXCLUDED.overview,

    poster_url = EXCLUDED.poster_url,

    metacritic_score = EXCLUDED.metacritic_score,

    rotten_tomatoes_score =
        EXCLUDED.rotten_tomatoes_score,

    critic_summary =
        EXCLUDED.critic_summary;

INSERT INTO oscars_years (
    year,
    winner_title,
    imdb_id,
    original_title,
    release_year,
    runtime_minutes,
    genres,
    director,
    imdb_rating,
    imdb_votes,
    overview,
    poster_url,
    metacritic_score,
    rotten_tomatoes_score,
    critic_summary
)
VALUES (
    2010,
    'The King''s Speech',
    'tt1504320',
    'The King''s Speech',
    2010,
    118,
    'Biography, Drama, History',
    'Tom Hooper',
    8.0,
    736013,
    'Britain''s Prince Albert must ascend the throne as King George VI, but he has a speech impediment. Knowing that the country needs her husband to be able to communicate effectively, Elizabeth hires Lionel Logue, an Australian actor and speech therapist, to help him overcome his stammer. An extraordinary friendship develops between the two men, as Logue uses unconventional means to teach the monarch how to speak with confidence.',
    'https://m.media-amazon.com/images/M/MV5BMzU5MjEwMTg2Nl5BMl5BanBnXkFtZTcwNzM3MTYxNA@@._V1_QL75_UY562_CR2,0,380,562_.jpg',
    88,
    94,
    NULL
)
ON CONFLICT (year)
DO UPDATE SET

    winner_title = EXCLUDED.winner_title,

    imdb_id = EXCLUDED.imdb_id,

    original_title = EXCLUDED.original_title,

    release_year = EXCLUDED.release_year,

    runtime_minutes = EXCLUDED.runtime_minutes,

    genres = EXCLUDED.genres,

    director = EXCLUDED.director,

    imdb_rating = EXCLUDED.imdb_rating,

    imdb_votes = EXCLUDED.imdb_votes,

    overview = EXCLUDED.overview,

    poster_url = EXCLUDED.poster_url,

    metacritic_score = EXCLUDED.metacritic_score,

    rotten_tomatoes_score =
        EXCLUDED.rotten_tomatoes_score,

    critic_summary =
        EXCLUDED.critic_summary;

INSERT INTO oscars_years (
    year,
    winner_title,
    imdb_id,
    original_title,
    release_year,
    runtime_minutes,
    genres,
    director,
    imdb_rating,
    imdb_votes,
    overview,
    poster_url,
    metacritic_score,
    rotten_tomatoes_score,
    critic_summary
)
VALUES (
    2011,
    'The Artist',
    'tt1655442',
    'The Artist',
    2011,
    100,
    'Comedy, Drama, Romance',
    'Michel Hazanavicius',
    7.8,
    256202,
    'Outside a movie premiere, enthusiastic fan Peppy Miller literally bumps into the swashbuckling hero of the silent film, George Valentin. The star reacts graciously and Peppy plants a kiss on his cheek as they are surrounded by photographers. The headlines demand: "Who''s That Girl?" and Peppy is inspired to audition for a dancing bit-part at the studio. However as Peppy slowly rises through the industry, the introduction of talking-pictures turns Valentin''s world upside-down.',
    'https://m.media-amazon.com/images/M/MV5BYjEwOGZmM2QtNjY4Mi00NjI0LTkyZjItZDEzZGI1YTEzMDg1XkEyXkFqcGc@._V1_SX300.jpg',
    89,
    95,
    NULL
)
ON CONFLICT (year)
DO UPDATE SET

    winner_title = EXCLUDED.winner_title,

    imdb_id = EXCLUDED.imdb_id,

    original_title = EXCLUDED.original_title,

    release_year = EXCLUDED.release_year,

    runtime_minutes = EXCLUDED.runtime_minutes,

    genres = EXCLUDED.genres,

    director = EXCLUDED.director,

    imdb_rating = EXCLUDED.imdb_rating,

    imdb_votes = EXCLUDED.imdb_votes,

    overview = EXCLUDED.overview,

    poster_url = EXCLUDED.poster_url,

    metacritic_score = EXCLUDED.metacritic_score,

    rotten_tomatoes_score =
        EXCLUDED.rotten_tomatoes_score,

    critic_summary =
        EXCLUDED.critic_summary;

INSERT INTO oscars_years (
    year,
    winner_title,
    imdb_id,
    original_title,
    release_year,
    runtime_minutes,
    genres,
    director,
    imdb_rating,
    imdb_votes,
    overview,
    poster_url,
    metacritic_score,
    rotten_tomatoes_score,
    critic_summary
)
VALUES (
    2012,
    'Argo',
    'tt1024648',
    'Argo',
    2012,
    120,
    'Biography, Drama, History',
    'Ben Affleck',
    7.7,
    671624,
    'After Iranian militants stormed and took control of the U.S. Embassy in Tehran in November 1979 taking 56 Americans as hostages, six Americans managed to get away and took refuge in the home of Canadian Ambassador Ken Taylor. After two months of the Canadians putting their lives on the line everyday, the CIA and the US State Department try to come up with a plan to get their people out. Tony Mendez is an "ex filtration" specialist who proposes that they pose as a Canadian film crew scouting locations for a science fiction movie called Argo. Using Hollywood connections, Mendez creates a back story for the movie - ads in Variety, casting calls, inviting he media to a production launch - and then heads off to Iran to lead the six Americans out.',
    'https://m.media-amazon.com/images/M/MV5BM2QyMGUyZTEtMjE4Yi00M2RiLTgwN2QtZDMxZDNiMTFkMTFjXkEyXkFqcGc@._V1_QL75_UX380_CR0,0,380,562_.jpg',
    86,
    96,
    NULL
)
ON CONFLICT (year)
DO UPDATE SET

    winner_title = EXCLUDED.winner_title,

    imdb_id = EXCLUDED.imdb_id,

    original_title = EXCLUDED.original_title,

    release_year = EXCLUDED.release_year,

    runtime_minutes = EXCLUDED.runtime_minutes,

    genres = EXCLUDED.genres,

    director = EXCLUDED.director,

    imdb_rating = EXCLUDED.imdb_rating,

    imdb_votes = EXCLUDED.imdb_votes,

    overview = EXCLUDED.overview,

    poster_url = EXCLUDED.poster_url,

    metacritic_score = EXCLUDED.metacritic_score,

    rotten_tomatoes_score =
        EXCLUDED.rotten_tomatoes_score,

    critic_summary =
        EXCLUDED.critic_summary;

INSERT INTO oscars_years (
    year,
    winner_title,
    imdb_id,
    original_title,
    release_year,
    runtime_minutes,
    genres,
    director,
    imdb_rating,
    imdb_votes,
    overview,
    poster_url,
    metacritic_score,
    rotten_tomatoes_score,
    critic_summary
)
VALUES (
    2013,
    '12 Years a Slave',
    'tt2024544',
    '12 Years a Slave',
    2013,
    134,
    'Biography, Drama, History',
    'Steve McQueen',
    8.1,
    792965,
    'Based on an incredible true story of one man''s fight for survival and freedom. In the pre-Civil War United States, Solomon Northup, a free Black man from upstate New York, is abducted and sold into slavery. Facing cruelty personified by a malevolent slave owner, as well as unexpected kindnesses, Solomon struggles not only to stay alive, but to retain his dignity. In the twelfth year of his unforgettable odyssey, Solomon''s chance meeting with a Canadian abolitionist will forever alter his life.',
    'https://m.media-amazon.com/images/M/MV5BMjExMTEzODkyN15BMl5BanBnXkFtZTcwNTU4NTc4OQ@@._V1_QL75_UX380_CR0,1,380,562_.jpg',
    96,
    95,
    NULL
)
ON CONFLICT (year)
DO UPDATE SET

    winner_title = EXCLUDED.winner_title,

    imdb_id = EXCLUDED.imdb_id,

    original_title = EXCLUDED.original_title,

    release_year = EXCLUDED.release_year,

    runtime_minutes = EXCLUDED.runtime_minutes,

    genres = EXCLUDED.genres,

    director = EXCLUDED.director,

    imdb_rating = EXCLUDED.imdb_rating,

    imdb_votes = EXCLUDED.imdb_votes,

    overview = EXCLUDED.overview,

    poster_url = EXCLUDED.poster_url,

    metacritic_score = EXCLUDED.metacritic_score,

    rotten_tomatoes_score =
        EXCLUDED.rotten_tomatoes_score,

    critic_summary =
        EXCLUDED.critic_summary;

INSERT INTO oscars_years (
    year,
    winner_title,
    imdb_id,
    original_title,
    release_year,
    runtime_minutes,
    genres,
    director,
    imdb_rating,
    imdb_votes,
    overview,
    poster_url,
    metacritic_score,
    rotten_tomatoes_score,
    critic_summary
)
VALUES (
    2014,
    'Birdman or (The Unexpected Virtue of Ignorance)',
    'tt2562232',
    'Birdman or (The Unexpected Virtue of Ignorance)',
    2014,
    119,
    'Comedy, Drama',
    'Alejandro G. Iñárritu',
    7.7,
    702300,
    'Actor Riggan Thomson is most famous for his movie role from over twenty years ago of the comic book superhero Birdman in the blockbuster movie of the same name and its two equally popular sequels. His association with the role took over his life, where Birdman is more renowned than "Riggan Thomson" the actor. Now past middle age, Riggan is trying to establish himself as a true artist by writing, directing, starring in and co-producing with his best friend Jake what is his Broadway debut, an adaptation of Raymond Carver''s story, What We Talk About When We Talk About Love. He is staking his name, what little artistic reputation that comes with that name and his life savings on the project, and as such will do anything needed to make the play a success. As he and Jake go through the process of the previews toward opening night, Riggan runs into several issues: needing to find a replacement for the integral supporting male role the night before the first preview; hiring the talented Broadway name, Mike Shiner, for that role, Mike who ends up being difficult to work with and who may end up overshadowing Riggan in the play; having to deal potentially with a lawsuit based on one of his actions to ensure success; needing to be there for his daughter, Sam, who he has hired to be his production assistant and who has just come out of drug rehab; and pleasing the New York Times critic, Tabitha Dickinson, who wants to use any excuse to give the play a scathing review which in turn would close the show after the opening night performance. But Riggan''s biggest problem may be his own insecurities, which are manifested by him constantly hearing what he believes to be the truth from the voice of his Birdman character, who he often battles both internally and externally.',
    'https://m.media-amazon.com/images/M/MV5BODAzNDMxMzAxOV5BMl5BanBnXkFtZTgwMDMxMjA4MjE@._V1_QL75_UX380_CR0,0,380,562_.jpg',
    87,
    91,
    NULL
)
ON CONFLICT (year)
DO UPDATE SET

    winner_title = EXCLUDED.winner_title,

    imdb_id = EXCLUDED.imdb_id,

    original_title = EXCLUDED.original_title,

    release_year = EXCLUDED.release_year,

    runtime_minutes = EXCLUDED.runtime_minutes,

    genres = EXCLUDED.genres,

    director = EXCLUDED.director,

    imdb_rating = EXCLUDED.imdb_rating,

    imdb_votes = EXCLUDED.imdb_votes,

    overview = EXCLUDED.overview,

    poster_url = EXCLUDED.poster_url,

    metacritic_score = EXCLUDED.metacritic_score,

    rotten_tomatoes_score =
        EXCLUDED.rotten_tomatoes_score,

    critic_summary =
        EXCLUDED.critic_summary;

INSERT INTO oscars_years (
    year,
    winner_title,
    imdb_id,
    original_title,
    release_year,
    runtime_minutes,
    genres,
    director,
    imdb_rating,
    imdb_votes,
    overview,
    poster_url,
    metacritic_score,
    rotten_tomatoes_score,
    critic_summary
)
VALUES (
    2015,
    'Spotlight',
    'tt1895587',
    'Spotlight',
    2015,
    129,
    'Biography, Crime, Drama',
    'Tom McCarthy',
    8.1,
    539565,
    'When the Boston Globe''s tenacious "Spotlight" team of reporters delves into allegations of abuse in the Catholic Church, their year-long investigation uncovers a decades-long cover-up at the highest levels of Boston''s religious, legal, and government establishment, touching off a wave of revelations around the world.',
    'https://m.media-amazon.com/images/M/MV5BMjIyOTM5OTIzNV5BMl5BanBnXkFtZTgwMDkzODE2NjE@._V1_SX300.jpg',
    93,
    97,
    NULL
)
ON CONFLICT (year)
DO UPDATE SET

    winner_title = EXCLUDED.winner_title,

    imdb_id = EXCLUDED.imdb_id,

    original_title = EXCLUDED.original_title,

    release_year = EXCLUDED.release_year,

    runtime_minutes = EXCLUDED.runtime_minutes,

    genres = EXCLUDED.genres,

    director = EXCLUDED.director,

    imdb_rating = EXCLUDED.imdb_rating,

    imdb_votes = EXCLUDED.imdb_votes,

    overview = EXCLUDED.overview,

    poster_url = EXCLUDED.poster_url,

    metacritic_score = EXCLUDED.metacritic_score,

    rotten_tomatoes_score =
        EXCLUDED.rotten_tomatoes_score,

    critic_summary =
        EXCLUDED.critic_summary;

INSERT INTO oscars_years (
    year,
    winner_title,
    imdb_id,
    original_title,
    release_year,
    runtime_minutes,
    genres,
    director,
    imdb_rating,
    imdb_votes,
    overview,
    poster_url,
    metacritic_score,
    rotten_tomatoes_score,
    critic_summary
)
VALUES (
    2016,
    'Moonlight',
    'tt4975722',
    'Moonlight',
    2016,
    111,
    'Drama',
    'Barry Jenkins',
    7.4,
    355143,
    'Three time periods - young adolescence, mid-teen and young adult - in the life of black-American Chiron is presented. When a child, Chiron lives with his single, crack addict mother Paula in a crime ridden neighborhood in Miami. Chiron is a shy, withdrawn child largely due to his small size and being neglected by his mother, who is more concerned about getting her fixes and satisfying her carnal needs than taking care of him. Because of these issues, Chiron is bullied, the slurs hurled at him which he doesn''t understand beyond knowing that they are meant to be hurtful. Besides his same aged Cuban-American friend Kevin, Chiron is given what little guidance he has in life from a neighborhood drug dealer named Juan, who can see that he is neglected, and Juan''s caring girlfriend Teresa, whose home acts as a sanctuary away from the bullies and away from Paula''s abuse. With this childhood as a foundation, Chiron may have a predetermined path in life, one that will only be magnified in terms of its problems when he reaches his difficult teen years when peer pressure affects what he and many of his peers do, unless he follows Juan''s advice of truly making his own decisions for himself.',
    'https://m.media-amazon.com/images/M/MV5BNzQxNTIyODAxMV5BMl5BanBnXkFtZTgwNzQyMDA3OTE@._V1_SX300.jpg',
    99,
    98,
    NULL
)
ON CONFLICT (year)
DO UPDATE SET

    winner_title = EXCLUDED.winner_title,

    imdb_id = EXCLUDED.imdb_id,

    original_title = EXCLUDED.original_title,

    release_year = EXCLUDED.release_year,

    runtime_minutes = EXCLUDED.runtime_minutes,

    genres = EXCLUDED.genres,

    director = EXCLUDED.director,

    imdb_rating = EXCLUDED.imdb_rating,

    imdb_votes = EXCLUDED.imdb_votes,

    overview = EXCLUDED.overview,

    poster_url = EXCLUDED.poster_url,

    metacritic_score = EXCLUDED.metacritic_score,

    rotten_tomatoes_score =
        EXCLUDED.rotten_tomatoes_score,

    critic_summary =
        EXCLUDED.critic_summary;

INSERT INTO oscars_years (
    year,
    winner_title,
    imdb_id,
    original_title,
    release_year,
    runtime_minutes,
    genres,
    director,
    imdb_rating,
    imdb_votes,
    overview,
    poster_url,
    metacritic_score,
    rotten_tomatoes_score,
    critic_summary
)
VALUES (
    2017,
    'The Shape of Water',
    'tt5580390',
    'The Shape of Water',
    2017,
    123,
    'Drama, Fantasy, Romance',
    'Guillermo del Toro',
    7.3,
    479337,
    'From master storyteller Guillermo del Toro comes THE SHAPE OF WATER, an otherworldly fable set against the backdrop of Cold War era America circa 1962. In the hidden high-security government laboratory where she works, lonely Elisa (Sally Hawkins) is trapped in a life of isolation. Elisa''s life is changed forever when she and co-worker Zelda (Octavia Spencer) discover a secret classified experiment. Rounding out the cast are Michael Shannon, Richard Jenkins, Michael Stuhlbarg, and Doug Jones.',
    'https://m.media-amazon.com/images/M/MV5BOGFlMTM2MTgtZDdlMy00ZDZlLWFjOTUtZDMzMGEwNmNiMWY0XkEyXkFqcGc@._V1_SX300.jpg',
    87,
    92,
    NULL
)
ON CONFLICT (year)
DO UPDATE SET

    winner_title = EXCLUDED.winner_title,

    imdb_id = EXCLUDED.imdb_id,

    original_title = EXCLUDED.original_title,

    release_year = EXCLUDED.release_year,

    runtime_minutes = EXCLUDED.runtime_minutes,

    genres = EXCLUDED.genres,

    director = EXCLUDED.director,

    imdb_rating = EXCLUDED.imdb_rating,

    imdb_votes = EXCLUDED.imdb_votes,

    overview = EXCLUDED.overview,

    poster_url = EXCLUDED.poster_url,

    metacritic_score = EXCLUDED.metacritic_score,

    rotten_tomatoes_score =
        EXCLUDED.rotten_tomatoes_score,

    critic_summary =
        EXCLUDED.critic_summary;

INSERT INTO oscars_years (
    year,
    winner_title,
    imdb_id,
    original_title,
    release_year,
    runtime_minutes,
    genres,
    director,
    imdb_rating,
    imdb_votes,
    overview,
    poster_url,
    metacritic_score,
    rotten_tomatoes_score,
    critic_summary
)
VALUES (
    2018,
    'Green Book',
    'tt6966692',
    'Green Book',
    2018,
    130,
    'Biography, Comedy, Drama',
    'Peter Farrelly',
    8.2,
    700032,
    'In 1962, tough bouncer Frank "Tony Lip" Vallelonga searches for work while his nightclub is closed for renovations. The most promising offer turns out to be the driver for African-American classical pianist Don Shirley for a concert tour into the Deep South states. Although hardly enthused at working for a Black man, Tony accepts the job and they begin their trek armed with "The Negro Motorist Green Book," a guide for safe travel through America''s racial segregation. The snobbishly erudite pianist and the crudely practical bouncer can barely get along with their clashing attitudes to life and ideals. However, as the disparate pair witness and endure America''s appalling injustices on the road, they find a newfound respect for each other''s talents and start to face them together. In doing so, they nurture an understanding and a friendship that would change both their lives.',
    'https://m.media-amazon.com/images/M/MV5BNDU5YTNmMmItN2QxNy00OGQ0LTg5MTctNzFmYjEzZjcwN2UwXkEyXkFqcGc@._V1_QL75_UX380_CR0,4,380,562_.jpg',
    69,
    77,
    NULL
)
ON CONFLICT (year)
DO UPDATE SET

    winner_title = EXCLUDED.winner_title,

    imdb_id = EXCLUDED.imdb_id,

    original_title = EXCLUDED.original_title,

    release_year = EXCLUDED.release_year,

    runtime_minutes = EXCLUDED.runtime_minutes,

    genres = EXCLUDED.genres,

    director = EXCLUDED.director,

    imdb_rating = EXCLUDED.imdb_rating,

    imdb_votes = EXCLUDED.imdb_votes,

    overview = EXCLUDED.overview,

    poster_url = EXCLUDED.poster_url,

    metacritic_score = EXCLUDED.metacritic_score,

    rotten_tomatoes_score =
        EXCLUDED.rotten_tomatoes_score,

    critic_summary =
        EXCLUDED.critic_summary;

INSERT INTO oscars_years (
    year,
    winner_title,
    imdb_id,
    original_title,
    release_year,
    runtime_minutes,
    genres,
    director,
    imdb_rating,
    imdb_votes,
    overview,
    poster_url,
    metacritic_score,
    rotten_tomatoes_score,
    critic_summary
)
VALUES (
    2019,
    'Parasite',
    'tt6751668',
    'Gisaengchung',
    2019,
    132,
    'Drama, Thriller',
    'Bong Joon Ho',
    8.5,
    1188830,
    'The Kims - mother and father Chung-sook and Ki-taek, and their young adult offspring, son Ki-woo and daughter Ki-jung - are a poor family living in a shabby and cramped half basement apartment in a busy lower working class commercial district of Seoul. Without even knowing it, they, especially Mr. and Mrs. Kim, literally smell of poverty. Often as a collective, they perpetrate minor scams to get by, and even when they have jobs, they do the minimum work required. Ki-woo is the one who has dreams of getting out of poverty by one day going to university. Despite not having that university education, Ki-woo is chosen by his university student friend Min, who is leaving to go to school, to take over his tutoring job to Park Da-hye, who Min plans to date once he returns to Seoul and she herself is in university. The Parks are a wealthy family who for four years have lived in their modernistic house designed by and the former residence of famed architect Namgoong. While Mr. and Mrs. Park are all about status, Mrs. Park has a flighty, simpleminded mentality and temperament, which Min tells Ki-woo to feel comfortable in lying to her about his education to get the job. In getting the job, Ki-woo further learns that Mrs. Park is looking for an art therapist for the Parks'' adolescent son, Da-song, Ki-woo quickly recommending his professional art therapist friend "Jessica", really Ki-jung who he knows can pull off the scam in being the easiest liar of the four Kims. In Ki-woo also falling for Da-hye, he begins to envision himself in that house, and thus the Kims as a collective start a plan for all the Kims, like Ki-jung using assumed names, to replace existing servants in the Parks'' employ in orchestrating reasons for them to be fired. The most difficult to get rid of may be Moon-gwang, the Parks'' housekeeper who literally came with the house - she Namgoong''s housekeeper when he lived there - and thus knows all the little nooks and crannies of it better than the Parks themselves. The question then becomes how far the Kims can take this scam in their quest to become their version of the Parks.',
    'https://m.media-amazon.com/images/M/MV5BYjk1Y2U4MjQtY2ZiNS00OWQyLWI3MmYtZWUwNmRjYWRiNWNhXkEyXkFqcGc@._V1_SX300.jpg',
    97,
    99,
    NULL
)
ON CONFLICT (year)
DO UPDATE SET

    winner_title = EXCLUDED.winner_title,

    imdb_id = EXCLUDED.imdb_id,

    original_title = EXCLUDED.original_title,

    release_year = EXCLUDED.release_year,

    runtime_minutes = EXCLUDED.runtime_minutes,

    genres = EXCLUDED.genres,

    director = EXCLUDED.director,

    imdb_rating = EXCLUDED.imdb_rating,

    imdb_votes = EXCLUDED.imdb_votes,

    overview = EXCLUDED.overview,

    poster_url = EXCLUDED.poster_url,

    metacritic_score = EXCLUDED.metacritic_score,

    rotten_tomatoes_score =
        EXCLUDED.rotten_tomatoes_score,

    critic_summary =
        EXCLUDED.critic_summary;

INSERT INTO oscars_years (
    year,
    winner_title,
    imdb_id,
    original_title,
    release_year,
    runtime_minutes,
    genres,
    director,
    imdb_rating,
    imdb_votes,
    overview,
    poster_url,
    metacritic_score,
    rotten_tomatoes_score,
    critic_summary
)
VALUES (
    2020,
    'Nomadland',
    'tt9770150',
    'Nomadland',
    2020,
    107,
    'Drama',
    'Chloé Zhao',
    7.3,
    221399,
    'Following the economic collapse of a company town in rural Nevada, Fern (Frances McDormand) packs her van and sets off on the road exploring a life outside of conventional society as a modern-day nomad. The third feature film from director Chloé Zhao, NOMADLAND features real nomads Linda May, Swankie and Bob Wells as Fern''s mentors and comrades in her exploration through the vast landscape of the American West.',
    'https://m.media-amazon.com/images/M/MV5BZGNkOWQ0ZjMtMTc4Ny00NDRhLTgyMjUtNzFmZDM0MTc3N2JjXkEyXkFqcGc@._V1_SX300.jpg',
    87,
    93,
    NULL
)
ON CONFLICT (year)
DO UPDATE SET

    winner_title = EXCLUDED.winner_title,

    imdb_id = EXCLUDED.imdb_id,

    original_title = EXCLUDED.original_title,

    release_year = EXCLUDED.release_year,

    runtime_minutes = EXCLUDED.runtime_minutes,

    genres = EXCLUDED.genres,

    director = EXCLUDED.director,

    imdb_rating = EXCLUDED.imdb_rating,

    imdb_votes = EXCLUDED.imdb_votes,

    overview = EXCLUDED.overview,

    poster_url = EXCLUDED.poster_url,

    metacritic_score = EXCLUDED.metacritic_score,

    rotten_tomatoes_score =
        EXCLUDED.rotten_tomatoes_score,

    critic_summary =
        EXCLUDED.critic_summary;

INSERT INTO oscars_years (
    year,
    winner_title,
    imdb_id,
    original_title,
    release_year,
    runtime_minutes,
    genres,
    director,
    imdb_rating,
    imdb_votes,
    overview,
    poster_url,
    metacritic_score,
    rotten_tomatoes_score,
    critic_summary
)
VALUES (
    2021,
    'CODA',
    'tt10366460',
    'CODA',
    2021,
    111,
    'Comedy, Drama, Music',
    'Sian Heder',
    8.0,
    231641,
    'Gloucester, Massachusetts. As a Child of Deaf Adults and the only hearing person in her family, high school senior Ruby Rossi always has a lot on her plate. Indeed, trying to juggle back-breaking work on her father''s fishing boat, schoolwork, social life, and the family''s expectations can be too much for a teenager. But do her parents know Ruby loves to sing? When Ruby signs up for the school choir, singing becomes a passion, and suddenly, the talented young girl finds herself at a crossroads: should Ruby spread her wings and follow her dreams, or should she keep fighting everyday battles as a member of the proud Rossi clan?',
    'https://m.media-amazon.com/images/M/MV5BNzIzOTNjOTQtM2QzOC00NjFlLTljZDUtZmI4Yjg1YTkyMTBiXkEyXkFqcGc@._V1_SX300.jpg',
    72,
    94,
    NULL
)
ON CONFLICT (year)
DO UPDATE SET

    winner_title = EXCLUDED.winner_title,

    imdb_id = EXCLUDED.imdb_id,

    original_title = EXCLUDED.original_title,

    release_year = EXCLUDED.release_year,

    runtime_minutes = EXCLUDED.runtime_minutes,

    genres = EXCLUDED.genres,

    director = EXCLUDED.director,

    imdb_rating = EXCLUDED.imdb_rating,

    imdb_votes = EXCLUDED.imdb_votes,

    overview = EXCLUDED.overview,

    poster_url = EXCLUDED.poster_url,

    metacritic_score = EXCLUDED.metacritic_score,

    rotten_tomatoes_score =
        EXCLUDED.rotten_tomatoes_score,

    critic_summary =
        EXCLUDED.critic_summary;

INSERT INTO oscars_years (
    year,
    winner_title,
    imdb_id,
    original_title,
    release_year,
    runtime_minutes,
    genres,
    director,
    imdb_rating,
    imdb_votes,
    overview,
    poster_url,
    metacritic_score,
    rotten_tomatoes_score,
    critic_summary
)
VALUES (
    2022,
    'Everything Everywhere All at Once',
    'tt6710474',
    'Everything Everywhere All at Once',
    2022,
    139,
    'Action, Adventure, Comedy',
    'Daniel Kwan, Daniel Scheinert',
    7.7,
    658886,
    'With her laundromat teetering on the brink of failure and her marriage to wimpy husband Waymond on the rocks, overworked Evelyn Wang struggles to cope with everything, including a tattered relationship with her judgmental father and daughter. And as if facing a gloomy midlife crisis wasn''t enough, Evelyn must brace herself up for an unpleasant meeting with an impersonal bureaucrat: Deirdre, the shabbily dressed IRS auditor. However, as the stern agent loses patience, an inexplicable multiverse rift becomes an eye-opening exploration of parallel realities. Will Evelyn jump down the rabbit hole? But how many stars are in the universe? Can weary Evelyn fathom the irrepressible force of possibilities, tap into newfound powers, and prevent an evil entity from destroying the thin, countless layers of the unseen world?',
    'https://m.media-amazon.com/images/M/MV5BOWNmMzAzZmQtNDQ1NC00Nzk5LTkyMmUtNGI2N2NkOWM4MzEyXkEyXkFqcGc@._V1_QL75_UY562_CR4,0,380,562_.jpg',
    81,
    93,
    NULL
)
ON CONFLICT (year)
DO UPDATE SET

    winner_title = EXCLUDED.winner_title,

    imdb_id = EXCLUDED.imdb_id,

    original_title = EXCLUDED.original_title,

    release_year = EXCLUDED.release_year,

    runtime_minutes = EXCLUDED.runtime_minutes,

    genres = EXCLUDED.genres,

    director = EXCLUDED.director,

    imdb_rating = EXCLUDED.imdb_rating,

    imdb_votes = EXCLUDED.imdb_votes,

    overview = EXCLUDED.overview,

    poster_url = EXCLUDED.poster_url,

    metacritic_score = EXCLUDED.metacritic_score,

    rotten_tomatoes_score =
        EXCLUDED.rotten_tomatoes_score,

    critic_summary =
        EXCLUDED.critic_summary;

INSERT INTO oscars_years (
    year,
    winner_title,
    imdb_id,
    original_title,
    release_year,
    runtime_minutes,
    genres,
    director,
    imdb_rating,
    imdb_votes,
    overview,
    poster_url,
    metacritic_score,
    rotten_tomatoes_score,
    critic_summary
)
VALUES (
    2023,
    'Oppenheimer',
    'tt15398776',
    'Oppenheimer',
    2023,
    180,
    'Biography, Drama, History',
    'Christopher Nolan',
    8.2,
    1088038,
    'A dramatization of the life story of J. Robert Oppenheimer, the physicist who had a large hand in the development of the atomic bomb, thus helping end World War 2. We see his life from university days all the way to post-WW2, where his fame saw him embroiled in political machinations.',
    'https://m.media-amazon.com/images/M/MV5BN2JkMDc5MGQtZjg3YS00NmFiLWIyZmQtZTJmNTM5MjVmYTQ4XkEyXkFqcGc@._V1_QL75_UX380_CR0,0,380,562_.jpg',
    90,
    93,
    NULL
)
ON CONFLICT (year)
DO UPDATE SET

    winner_title = EXCLUDED.winner_title,

    imdb_id = EXCLUDED.imdb_id,

    original_title = EXCLUDED.original_title,

    release_year = EXCLUDED.release_year,

    runtime_minutes = EXCLUDED.runtime_minutes,

    genres = EXCLUDED.genres,

    director = EXCLUDED.director,

    imdb_rating = EXCLUDED.imdb_rating,

    imdb_votes = EXCLUDED.imdb_votes,

    overview = EXCLUDED.overview,

    poster_url = EXCLUDED.poster_url,

    metacritic_score = EXCLUDED.metacritic_score,

    rotten_tomatoes_score =
        EXCLUDED.rotten_tomatoes_score,

    critic_summary =
        EXCLUDED.critic_summary;

INSERT INTO oscars_years (
    year,
    winner_title,
    imdb_id,
    original_title,
    release_year,
    runtime_minutes,
    genres,
    director,
    imdb_rating,
    imdb_votes,
    overview,
    poster_url,
    metacritic_score,
    rotten_tomatoes_score,
    critic_summary
)
VALUES (
    2024,
    'Anora',
    'tt28607951',
    'Anora',
    2024,
    139,
    'Comedy, Drama, Romance',
    'Sean Baker',
    7.4,
    303587,
    'Anora, a young stripper from Brooklyn, gets her chance at a Cinderella story when she meets and impulsively marries the son of an oligarch. Once the news reaches Russia, her fairytale is threatened as the parents set out for New York to get the marriage annulled.',
    'https://m.media-amazon.com/images/M/MV5BYThiN2M0NTItODRmNC00NDhlLWFiYTgtMWM2YTEyYzI3ZTY1XkEyXkFqcGc@._V1_QL75_UX380_CR0,0,380,562_.jpg',
    91,
    93,
    NULL
)
ON CONFLICT (year)
DO UPDATE SET

    winner_title = EXCLUDED.winner_title,

    imdb_id = EXCLUDED.imdb_id,

    original_title = EXCLUDED.original_title,

    release_year = EXCLUDED.release_year,

    runtime_minutes = EXCLUDED.runtime_minutes,

    genres = EXCLUDED.genres,

    director = EXCLUDED.director,

    imdb_rating = EXCLUDED.imdb_rating,

    imdb_votes = EXCLUDED.imdb_votes,

    overview = EXCLUDED.overview,

    poster_url = EXCLUDED.poster_url,

    metacritic_score = EXCLUDED.metacritic_score,

    rotten_tomatoes_score =
        EXCLUDED.rotten_tomatoes_score,

    critic_summary =
        EXCLUDED.critic_summary;

INSERT INTO oscars_years (
    year,
    winner_title,
    imdb_id,
    original_title,
    release_year,
    runtime_minutes,
    genres,
    director,
    imdb_rating,
    imdb_votes,
    overview,
    poster_url,
    metacritic_score,
    rotten_tomatoes_score,
    critic_summary
)
VALUES (
    2025,
    'One Battle after Another',
    'tt30144839',
    'One Battle After Another',
    2025,
    161,
    'Crime, Thriller',
    'Paul Thomas Anderson',
    7.6,
    439283,
    'Washed-up revolutionary Bob exists in a state of stoned paranoia, surviving off-grid with his spirited, self-reliant daughter, Willa. When his evil nemesis resurfaces after 16 years and she goes missing, the former radical scrambles to find her, father and daughter both battling the consequences of his past.',
    'https://m.media-amazon.com/images/M/MV5BMzBkZmQ0NjMtNTZlMy00ZjdlLTg5ODUtYWFlNGM0YzE3MTg0XkEyXkFqcGc@._V1_QL75_UY562_CR35,0,380,562_.jpg',
    95,
    94,
    NULL
)
ON CONFLICT (year)
DO UPDATE SET

    winner_title = EXCLUDED.winner_title,

    imdb_id = EXCLUDED.imdb_id,

    original_title = EXCLUDED.original_title,

    release_year = EXCLUDED.release_year,

    runtime_minutes = EXCLUDED.runtime_minutes,

    genres = EXCLUDED.genres,

    director = EXCLUDED.director,

    imdb_rating = EXCLUDED.imdb_rating,

    imdb_votes = EXCLUDED.imdb_votes,

    overview = EXCLUDED.overview,

    poster_url = EXCLUDED.poster_url,

    metacritic_score = EXCLUDED.metacritic_score,

    rotten_tomatoes_score =
        EXCLUDED.rotten_tomatoes_score,

    critic_summary =
        EXCLUDED.critic_summary;
