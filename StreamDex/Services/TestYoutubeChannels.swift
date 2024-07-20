//
//  TestYoutubeChannels.swift
//  StreamDex
//
//  Created by Paul Kim on 7/17/24.
//

import Foundation
import SharedModule

struct TestData {
    
    static var YouTubeChannels: [Channel] {
        var channels: [Channel] = []
        for item in youtubeChannelsData {
            if let id = item["id"], let name = item["name"], let userLogin = item["userLogin"], let imageURLString = item["imageURL"], let imageURL = URL(string: imageURLString) {
                let channel = Channel(id: id, name: name, userLogin: userLogin, platform: "youtube"/*, imageBackgroundColor: .yellow*/, imageURL: imageURL)
                channels.append(channel)
            } else if let id = item["id"], let name = item["name"], let userLogin = item["userLogin"] {
                let channel = Channel(id: id, name: name, userLogin: userLogin, platform: "youtube"/*, imageBackgroundColor: .red*/)
                channels.append(channel)
            }
        }
        return channels
    }
    
    static var TwitchChannels: [Channel] {
        var channels: [Channel] = []
        for item in twitchChannelsData {
            if let id = item["to_id"], let name = item["to_name"], let userLogin = item["to_login"] {
                let channel = Channel(id: id, name: name, userLogin: userLogin, platform: "twitch"/*, imageBackgroundColor: .purple*/)
                channels.append(channel)
            }
        }
        return channels
    }
    
//    static let YouTubeChannels: [Channel] = []
//    static let TwitchChannels: [Channel] = []
    
    static var Channels: [Channel] {
        YouTubeChannels + TwitchChannels
    }
}

let twitchChannelsData = [
    ["to_login": "ironmouse", "to_name": "ironmouse", "to_id": "175831187"],
    ["to_login": "harukakaribu", "to_id": "483194031", "to_name": "HarukaKaribu"],
    ["to_name": "LordAethelstan", "to_login": "lordaethelstan", "to_id": "600888725"],
    ["to_login": "nyanners", "to_id": "82350088", "to_name": "nyanners"],
    ["to_id": "151054406", "to_name": "Apricot", "to_login": "apricot"],
    ["to_id": "56938961", "to_name": "Silvervale", "to_login": "silvervale"],
    ["to_id": "159498717", "to_name": "Jinnytty", "to_login": "jinnytty"],
    ["to_name": "crazyjapanese", "to_login": "crazyjapanese", "to_id": "510473442"],
    ["to_id": "88946548", "to_name": "aceu", "to_login": "aceu"],
    ["to_login": "xqc", "to_id": "71092938", "to_name": "xQc"],
    ["to_name": "39daph", "to_login": "39daph", "to_id": "160504245"],
    ["to_id": "803456874", "to_name": "飴宮なずな", "to_login": "amemiyanazuna"],
    ["to_login": "cdawgva", "to_id": "45098797", "to_name": "CDawgVA"],
    ["to_name": "FrankieLollia", "to_login": "frankielollia", "to_id": "540820830"],
    ["to_login": "vei", "to_id": "97245742", "to_name": "vei"],
    ["to_login": "woohankyung", "to_id": "455679396", "to_name": "한갱"],
    ["to_id": "91067577", "to_name": "Emiru", "to_login": "emiru"],
    ["to_name": "TheStockGuy", "to_login": "thestockguy", "to_id": "249820319"],
    ["to_name": "moistcr1tikal", "to_login": "moistcr1tikal", "to_id": "132230344"],
    ["to_login": "hasanabi", "to_id": "207813352", "to_name": "HasanAbi"],
    ["to_id": "526763937", "to_name": "kkatamina", "to_login": "kkatamina"],
    ["to_name": "QuarterJade", "to_id": "173758090", "to_login": "quarterjade"],
    ["to_id": "45302947", "to_login": "iitztimmy", "to_name": "iiTzTimmy"],
    ["to_name": "xChocoBars", "to_login": "xchocobars", "to_id": "42583390"],
    ["to_id": "42177890", "to_name": "Natsumiii", "to_login": "natsumiii"],
    ["to_name": "JooxHano", "to_id": "169031497", "to_login": "jooxhano"],
    ["to_id": "197886470", "to_name": "TwitchRivals", "to_login": "twitchrivals"],
    ["to_name": "snuffy", "to_login": "snuffy", "to_id": "515567425"],
    ["to_id": "61852275", "to_name": "starsmitten", "to_login": "starsmitten"],
    ["to_id": "801786062", "to_name": "AmanogawaShiina", "to_login": "amanogawashiina"],
    ["to_name": "GEEGA", "to_id": "36973271", "to_login": "geega"],
    ["to_name": "りぽぽ", "to_login": "rip0p0chan", "to_id": "91485490"],
    ["to_id": "598826002", "to_name": "Tobs", "to_login": "tobs"],
    ["to_id": "100901794", "to_name": "Shylily", "to_login": "shylily"],
    ["to_login": "ksonsouchou", "to_id": "149495712", "to_name": "ksonsouchou"],
    ["to_name": "vedal987", "to_id": "85498365", "to_login": "vedal987"],
    ["to_id": "694413391", "to_name": "KanekoLumi", "to_login": "kanekolumi"],
    ["to_name": "Sessis", "to_login": "sessis", "to_id": "80525799"],
    ["to_name": "yurina_jpg", "to_id": "814418755", "to_login": "yurina_jpg"],
    ["to_login": "zentreya", "to_id": "128440061", "to_name": "Zentreya"],
    ["to_name": "filian", "to_login": "filian", "to_id": "198633200"],
    ["to_id": "592934481", "to_name": "marimari_en", "to_login": "marimari_en"],
    ["to_login": "saddummy", "to_id": "30904062", "to_name": "서새봄냥"],
    ["to_name": "새옴", "to_id": "446242611", "to_login": "som0322"],
    ["to_name": "PremierTwo", "to_id": "582765062", "to_login": "premiertwo"],
    ["to_id": "45184940", "to_login": "yvonnie", "to_name": "yvonnie"],
    ["to_id": "65217491", "to_name": "SuppyColleen", "to_login": "suppycolleen"],
    ["to_id": "102731041", "to_login": "ploo", "to_name": "ploo"],
    ["to_login": "tenz", "to_id": "70225218", "to_name": "TenZ"],
    ["to_login": "kyedae", "to_id": "445529741", "to_name": "Kyedae"],
    ["to_login": "projektmelody", "to_id": "478575546", "to_name": "projektmelody"],
    ["to_id": "127550308", "to_name": "BotezLive", "to_login": "botezlive"],
    ["to_id": "47474524", "to_login": "dizzykitten", "to_name": "DizzyKitten"],
    ["to_id": "122888997", "to_login": "willneff", "to_name": "willneff"],
    ["to_name": "Hiko", "to_login": "hiko", "to_id": "26991127"],
    ["to_login": "esfandtv", "to_name": "EsfandTV", "to_id": "38746172"],
    ["to_id": "601522057", "to_name": "Miyune", "to_login": "miyune"],
    ["to_id": "247808909", "to_login": "qtcinderella", "to_name": "QTCinderella"],
    ["to_login": "yattaa_", "to_id": "216473763", "to_name": "얏따"],
    ["to_name": "さくらみこ", "to_login": "sakuramiko_hololive", "to_id": "557359020"],
    ["to_id": "36340781", "to_login": "tarik", "to_name": "tarik"],
    ["to_name": "DisguisedToast", "to_login": "disguisedtoast", "to_id": "87204022"],
    ["to_id": "517475551", "to_name": "ExtraEmily", "to_login": "extraemily"],
    ["to_login": "masayoshi", "to_id": "46673989", "to_name": "Masayoshi"],
    ["to_id": "754246106", "to_login": "laplusdarknesss_hololive", "to_name": "ラプラスダークネス総帥"],
    ["to_id": "601150976", "to_login": "watsonamelia_hololiveen", "to_name": "watsonAMElia_hololiveen"],
    ["to_id": "705442813", "to_login": "rosemilovelock", "to_name": "rosemilovelock"],
    ["to_id": "139635292", "to_name": "릴카", "to_login": "llilka"],
    ["to_name": "fanfan", "to_id": "596031520", "to_login": "fanfan"],
    ["to_name": "HAchubby", "to_login": "hachubby", "to_id": "195166073"],
    ["to_name": "robocosan_hololive", "to_id": "778664817", "to_login": "robocosan_hololive"],
    ["to_id": "896388738", "to_name": "henyathegenius", "to_login": "henyathegenius"],
    ["to_id": "776474056", "to_login": "tokoyamitowa_holo", "to_name": "tokoyamitowa_holo"],
    ["to_name": "demondiceofficial", "to_id": "813923612", "to_login": "demondiceofficial"],
    ["to_login": "delutaya_ch", "to_name": "delutaya_ch", "to_id": "827907771"],
    ["to_id": "12943173", "to_name": "pokelawls", "to_login": "pokelawls"],
    ["to_login": "anny", "to_name": "anny", "to_id": "56418014"],
    ["to_login": "the8bitdrummer", "to_id": "63321379", "to_name": "The8BitDrummer"],
    ["to_id": "103210547", "to_name": "Keekihime_LIVE", "to_login": "keekihime_live"],
    ["to_name": "karacomparetto", "to_login": "karacomparetto", "to_id": "413199470"],
    ["to_login": "zekken", "to_id": "445768007", "to_name": "zekken"],
    ["to_login": "cooksux", "to_id": "59016177", "to_name": "CookSux"],
    ["to_login": "alanamisako", "to_id": "215139308", "to_name": "alanamisako"],
    ["to_name": "김유월님", "to_login": "yuwol_92", "to_id": "155592963"],
    ["to_name": "K9KURO", "to_login": "k9kuro", "to_id": "938216791"],
    ["to_id": "553731558", "to_name": "sushidog", "to_login": "sushidog"],
    ["to_id": "948230892", "to_login": "matarakan", "to_name": "MataraKan"],
    ["to_login": "koefficient", "to_name": "Koefficient", "to_id": "40990240"],
    ["to_name": "TinaKitten", "to_login": "tinakitten", "to_id": "42032495"],
    ["to_login": "ruki_otokado_666", "to_name": "るき루키", "to_id": "806658817"],
    ["to_id": "548633177", "to_name": "MiaMakesMusic", "to_login": "miamakesmusic"],
    ["to_login": "minatoaquach_hololive", "to_id": "738746247", "to_name": "湊あくあ_本物"],
    ["to_login": "s0mcs", "to_name": "s0mcs", "to_id": "128002336"],
    ["to_login": "sinatraa", "to_id": "138094916", "to_name": "sinatraa"],
    ["to_id": "1026613890", "to_name": "hnecbaqwkylfzc7", "to_login": "hnecbaqwkylfzc7"],
    ["to_id": "37402112", "to_name": "shroud", "to_login": "shroud"],
    ["to_name": "MichiMochievee", "to_id": "1057785822", "to_login": "michimochievee"],
    ["to_login": "rayasianboy", "to_id": "570335223", "to_name": "rayasianboy"],
    ["to_id": "641972806", "to_name": "KaiCenat", "to_login": "kaicenat"],
    ["to_id": "713951941", "to_name": "Dasnerth", "to_login": "dasnerth"],
    ["to_login": "dezignful", "to_id": "431470138", "to_name": "Dezignful"],
    ["to_login": "shanks_ttv", "to_id": "540056482", "to_name": "shanks_ttv"]
]


let youtubeChannelsData = [
    ["name": "fuslie", "id": "UCujyjxsq5FZNVnQro51zKSQ", "imageURL": "https://yt3.ggpht.com/iDK0_ghEYuzp8ejL58-ScXSyjmQMEzZfq5Ms6ugaBFzv1KF9IHpZzHLoZUEVl8I6X3yULiee=s88-c-k-c0x00ffffff-no-rj", "userLogin": "@fuslie"],
    ["id": "UCAUicVZlApAIhcdL9df3gWw", "userLogin": "@otokado_ruki", "imageURL": "https://yt3.ggpht.com/7q9hOlgVOLGGMGNDnAokhFo7vECpLIyKCOj3xLKwBqPvQuu2-kkLS9E3kkNd-rrfdK0GKepd4w=s88-c-k-c0x00ffffff-no-rj", "name": "Ruki Otokado 音門るき [VEE]"],
    ["name": "Erina Ch. エリナ・マキナ 【Phase Connect】", "userLogin": "@erinamakina", "imageURL": "https://yt3.ggpht.com/9xQ1dCrwG1jkO_xUBWZbq3pS7ZLGF2YFb_5C4_JVmhZG4HnnmWh65Fhtcu65qGRz6T3oWov_=s88-c-k-c0x00ffffff-no-rj", "id": "UCupmjRr7kPgzXKh-cPxxGbg"],
    ["imageURL": "https://yt3.ggpht.com/Df9IibspJL2Dur37_ebWD6n6F0U8Fvp_1QOu5m-d7qqEAn1fRwsMiar4CvSpHrI3wA6uPw2h=s88-c-k-c0x00ffffff-no-rj", "name": "Kureiji Ollie Ch. hololive-ID", "id": "UCYz_5n-uDuChHtLo7My1HnQ", "userLogin": "@kureijiollie"],
    ["imageURL": "https://yt3.ggpht.com/8B_T08sx8R7XVi5Mwx_l9sjQm5FGWGspeujSvVDvd80Zyr-3VvVTRGVLOnBrqNRxZp6ZeXAV=s88-c-k-c0x00ffffff-no-rj", "userLogin": "@moricalliope", "name": "Mori Calliope Ch. hololive-EN", "id": "UCL_qhgtOy0dy1Agp8vkySQg"],
    ["userLogin": "@mariamarionette", "id": "UCwaS8_S7kMiKA3izlTWHbQg", "name": "Maria Marionette 【NIJISANJI EN】", "imageURL": "https://yt3.ggpht.com/EZJ0E6UnrsXZKRPGwZQUJHQ4e3y9PkCHInZFzP06lAE6cYN6MXSZL7O5L5jmTRuDPSzbxNty=s88-c-k-c0x00ffffff-no-rj"],
    ["name": "朝日南アカネ / Asahina Akane 【にじさんじ】", "id": "UCe_p3YEuYJb8Np0Ip9dk-FQ", "userLogin": "@asahinaakane", "imageURL": "https://yt3.ggpht.com/O8kXqY0UQgIGm3xyVYl3Az5xkDyyfyU54mvzf8MUIyYtDy9fbEX_7ujQEO30MvnCkptDb8p-=s88-c-k-c0x00ffffff-no-rj"],
    ["name": "Pomu Rainpuff 【NIJISANJI EN】", "userLogin": "@pomurainpuff", "id": "UCP4nMSTdwU1KqYWu3UH5DHQ", "imageURL": "https://yt3.ggpht.com/m2uqTymqS-XEzQfA9OnZZkIBni-VbzMki5_Zx8OWQc4O1OdA6YxCg2r9MHfMvHJlDGT8gu-IZQ=s88-c-k-c0x00ffffff-no-rj"],
    ["id": "UCvQczq3aHiHRBGEx-BKdrcg", "imageURL": "https://yt3.ggpht.com/6wGHT2a82E80Qx57FPoMXztFcHWGoZNElpHR1SS1AOJBr2KVSs8wh3dpLJIIp5g8Pe0CakQSZ14=s88-c-k-c0x00ffffff-no-rj", "name": "Myth", "userLogin": "@myth_yt"],
    ["imageURL": "https://yt3.ggpht.com/uMUat6yJL2_Sk6Wg2-yn0fSIqUr_D6aKVNVoWbgeZ8N-edT5QJAusk4PI8nmPgT_DxFDTyl8=s88-c-k-c0x00ffffff-no-rj", "name": "Gawr Gura Ch. hololive-EN", "userLogin": "@gawrgura", "id": "UCoSrY_IQQVpmIRZ9Xf-y93g"],
    ["name": "Ludwig", "id": "UCrPseYLGpNygVi34QpGNqpA", "userLogin": "@ludwig", "imageURL": "https://yt3.ggpht.com/ytc/AIdro_lr_y83UCcdbqs-KpjgkViIjMXkv1DpGrKLhspQ1GpnG2Q=s88-c-k-c0x00ffffff-no-rj"],
    ["id": "UCnJNNk45O1QYS2oMRYFKSyw", "imageURL": "https://yt3.ggpht.com/W728s3d963g7LudJGAYxe47jqnV-qwbMu6dsdASIgQzrNlVV-eoVHckDNu0iFmDRov5hDkGrFw=s88-c-k-c0x00ffffff-no-rj", "name": "Shiina Ch. 天ノ川 しいな 【Phase Connect】", "userLogin": "@amanogawashiina"],
    ["name": "LilyPichu", "id": "UCvWU1K29wCZ8j1NsXsRrKnA", "imageURL": "https://yt3.ggpht.com/OtaIg76Jp3RAIs8dJQHZJwXWcW-kgJ3s3KEZ1mIAUEgyUnCKSEMDamRxgx8TiU_Bh27yFJXtPw=s88-c-k-c0x00ffffff-no-rj", "userLogin": "@lilypichu"],
    ["userLogin": "@ikuhoshifuri", "id": "UC2hWFlqMew61Jy6A8zu5HzQ", "name": "Iku Hoshifuri / 星降いく【Cosmia】", "imageURL": "https://yt3.ggpht.com/iiWwBB0rsPadW6D92ATHoouqLHw7dppOJJPdpYg9fbeqriEFhfpSjpmS7eh1wsC06s93c56B=s88-c-k-c0x00ffffff-no-rj"],
    ["name": "Watson Amelia Ch. hololive-EN", "imageURL": "https://yt3.ggpht.com/RZ4Fp3L6_zyq6YA7s5WnH8-22iezMLwdJhtkBgs_EAb06mvMCnF59JKMNu9YPCqb7nhaeXMdPvY=s88-c-k-c0x00ffffff-no-rj", "id": "UCyl1z3jo3XHR1riLFKG5UAg", "userLogin": "@watsonamelia"],
    ["name": "A.I.Channel", "id": "UC4YaOt1yT-ZeyB0OmxHgolA", "imageURL": "https://yt3.ggpht.com/tGIJZoN26oD-M5HXGGMC8MizD0iDFdzeaIygX3ArOxSZeJxsRt1IYDrwQgDW5fB9NRAse11-Zg=s88-c-k-c0x00ffffff-no-rj", "userLogin": "@aichannel"],
    ["name": "Takanashi Kiara Ch. hololive-EN", "imageURL": "https://yt3.ggpht.com/w7TKJYU7zmamFmf-WxfahCo_K7Bg2__Pk-CCBNnbewMG-77OZLqJO9MLvDAmH9nEkZH8OkWgSQ=s88-c-k-c0x00ffffff-no-rj", "userLogin": "@takanashikiara", "id": "UCHsx4Hqa-1ORjQTh9TYDhww"],
    ["userLogin": "@rosemi_lovelock", "name": "Rosemi Lovelock【NIJISANJI EN】", "id": "UC4WvIIAo89_AzGUh1AZ6Dkg", "imageURL": "https://yt3.ggpht.com/dIXH0sOv8hWRp2KlAz4jb7D5JHLaRgLSi2QTWv8mKqbuLQV-tSpvR9tmBNy50zEVSLaNGVpQgA=s88-c-k-c0x00ffffff-no-rj"],
    ["name": "Destiny", "id": "UC554eY5jNUfDq3yDOJYirOQ", "imageURL": "https://yt3.ggpht.com/ebyxBdQuvnKms9MFkPGKur6i1VfYqGXgppaASnPtKOIKe3s4qyjK5THA-yNSvMfZU-rHhgtMRg=s88-c-k-c0x00ffffff-no-rj", "userLogin": "@destiny"],
    ["id": "UCMwGHR0BTZuLsmjY_NT5Pwg", "userLogin": "@ninomaeinanis", "imageURL": "https://yt3.ggpht.com/f4uYWHJxiGwyXm8NUlm818N1MRnywtgL6wM8JdWqWsKBzI7v1eg8dxDWG7igkWuukUSiufydqPg=s88-c-k-c0x00ffffff-no-rj", "name": "Ninomae Ina'nis Ch. hololive-EN"],
    ["userLogin": "@usadapekora", "name": "Pekora Ch. 兎田ぺこら", "imageURL": "https://yt3.ggpht.com/ytc/AIdro_kkVsQvCxxEZ_-SPXCnNJS7L6k7TEJRyMehz762Rbqc8rM=s88-c-k-c0x00ffffff-no-rj", "id": "UC1DCedRgGHBdm81E1llLhOQ"],
    ["imageURL": "https://yt3.ggpht.com/pHb5MqbZsGRnQhO6xS_cC7P4-vJX35Tx5k55_GzRhuG86YnQoxZLPgmq5Fdian6QftQUrolL7A=s88-c-k-c0x00ffffff-no-rj", "name": "Sykkuno", "userLogin": "@sykkuno", "id": "UCRAEUAmW9kletIzOxhpLRFw"],
    ["name": "jacksepticeye", "id": "UCYzPXprvl5Y-Sf0g4vX-m6g", "imageURL": "https://yt3.ggpht.com/ytc/AIdro_naRywyoMhjCn8PJgwaAI6Hm_SZYh4LGCHWSmnntLcrGfc=s88-c-k-c0x00ffffff-no-rj", "userLogin": "@jacksepticeye"],
    ["userLogin": "@zaionlanza", "id": "UCIairB9UMDvqSKfMdv1jmjg", "imageURL": "https://yt3.ggpht.com/DrHNK8DkQhELD8LMdrvJ7SSj0t5UrZfQjvMuYUDlGM1LTREgx7GEg7kE48EWBDWCcfzaDGiktqg=s88-c-k-c0x00ffffff-no-rj", "name": "Zaion LanZa【NIJISANJI EN】"],
    ["imageURL": "https://yt3.ggpht.com/flg7E5XnFWh-NhGZOydJ2QHMpFdkBGbou0OcYUiYjKVisv8UsY-FiPLrTtexXVUqPmIyDvgC=s88-c-k-c0x00ffffff-no-rj", "name": "Ouro Kronii Ch. hololive-EN", "userLogin": "@ourokronii", "id": "UCmbs8T6MWqUHP1tIQvSgKrg"],
    ["userLogin": "@ceresfauna", "id": "UCO_aKKYxn4tvrqPjcTzZ6EQ", "imageURL": "https://yt3.ggpht.com/cBtserkb211p6If2OewgWd8oriIKRkfwTcP4_Vdq2YETG5TK9Q02v4cYmnLU03KBAJ0gcDha7oQ=s88-c-k-c0x00ffffff-no-rj", "name": "Ceres Fauna Ch. hololive-EN"],
    ["id": "UCTvHWSfBZgtxE4sILOaurIQ", "imageURL": "https://yt3.ggpht.com/-IdVo-vK7pr0VRjJDdza1-t1Edjce1Rd1R1hon_3SRIzuQ-XVBTWOJj-UfwYPp8y40KM197_y4o=s88-c-k-c0x00ffffff-no-rj", "name": "Vestia Zeta Ch. hololive-ID", "userLogin": "@vestiazeta"],
    ["id": "UCJ46YTYBQVXsfsp8-HryoUA", "name": "Pipkin Pippa Ch.【Phase Connect】", "imageURL": "https://yt3.ggpht.com/Uv6EuTjobBEKwGigQTJnfr-5DkrC1fL3EshHqaSTPfBrYdiOfG6bGWJd8jCTpSizv0Ci-ZrvboI=s88-c-k-c0x00ffffff-no-rj", "userLogin": "@pipkinpippa"],
    ["id": "UCP0BspO_AMEe3aQqqpo89Dg", "name": "Moona Hoshinova hololive-ID", "userLogin": "@moonahoshinova", "imageURL": "https://yt3.ggpht.com/w8ilN5YMfG3H6SX162Fkg71BaJdYUUoHOc91cryyfdvto94IpypSjvsLaMA1MyODr2V-w-ox-h8=s88-c-k-c0x00ffffff-no-rj"],
    ["name": "Suisei Channel", "userLogin": "@hoshimachisuisei", "id": "UC5CwaMl1eIgY8h02uZw7u8A", "imageURL": "https://yt3.ggpht.com/ytc/AIdro_kLDBK5ksSvk5-XJ6S8e0kWfjy7mVl3jyUkgDeMQ7rlCpU=s88-c-k-c0x00ffffff-no-rj"],
    ["userLogin": "@irys", "name": "IRyS Ch. hololive-EN", "id": "UC8rcEBzJSleTkf_-agPM20g", "imageURL": "https://yt3.ggpht.com/cDSMiVy3Xa49Ci_YyouVNzfCwVXKRYmOeywWQ_UFKzvAp6tvyeMtXMyzWzQ2u8ft4EENsJKt7A=s88-c-k-c0x00ffffff-no-rj"],
    ["imageURL": "https://yt3.ggpht.com/alR74srxq2hblvmXdFviD1CXn3NOHgM61aOpdwA4AU-zfglNjjtEnXjMCVi7bRfr-04u8QQabA=s88-c-k-c0x00ffffff-no-rj", "name": "kson ONAIR", "userLogin": "@ksononair", "id": "UC9ruVYPv7yJmV0Rh0NKA-Lw"],
    ["id": "UC3n5uGu18FoCy23ggWWp8tA", "name": "Nanashi Mumei Ch. hololive-EN", "userLogin": "@nanashimumei", "imageURL": "https://yt3.ggpht.com/owZmjfnG_SGVmfkl3eS7Lv47pGvIr2SrS36imh6O8i0H3Wy41fYKD26U7wnyRB627fXoq0aQ0Q=s88-c-k-c0x00ffffff-no-rj"],
    ["name": "SoraCh. ときのそらチャンネル", "userLogin": "@tokinosora", "id": "UCp6993wxpyDPHUpavwDFqgg", "imageURL": "https://yt3.ggpht.com/ytc/AIdro_kT9PiLS8BWANuBdGG_-GHsNZxFqmF0YjMnzK55jISdca4=s88-c-k-c0x00ffffff-no-rj"],
    ["id": "UCjLEmnpCNeisMxy134KPwWw", "name": "Kobo Kanaeru Ch. hololive-ID", "userLogin": "@kobokanaeru", "imageURL": "https://yt3.ggpht.com/Zi6DMbqTrk8jpNKnJgbw_NxGnggsKX1omQnPeHxrZTmrVmon7zfmg5Q4XbqsHO9AMidW49zCPw=s88-c-k-c0x00ffffff-no-rj"],
    ["userLogin": "@ayundarisu", "imageURL": "https://yt3.ggpht.com/ytc/AIdro_lfOOnprUv5xcScxIgQBTa2ZGUfS3TdfMEerPzr6BXED94=s88-c-k-c0x00ffffff-no-rj", "name": "Ayunda Risu Ch. hololive-ID", "id": "UCOyYb1c43VlX9rc_lT6NKQw"],
    ["userLogin": "@mikenekoko", "name": "みけねこch", "imageURL": "https://yt3.ggpht.com/xp-Gpx4379mUVBgIIKKyABkJZAEZhBdLIL2JsgTiEpvfN7G0J4NHQ2uI3ycywuNKAlXJOSmsbQ=s88-c-k-c0x00ffffff-no-rj", "id": "UC54JqsuIbMw_d1Ieb4hjKoQ"],
    ["imageURL": "https://yt3.ggpht.com/0Qu_iyV5XEUmy7MBd46TqRzsMuTED6M5zvunG8W6GjOrRn3pgs-BSTLREWopbkmzQIC66R_FPDs=s88-c-k-c0x00ffffff-no-rj", "id": "UCWxlUwW9BgGISaakjGM37aw", "name": "Valkyrae", "userLogin": "@valkyrae"],
    ["name": "Hakos Baelz Ch. hololive-EN", "id": "UCgmPnx-EEeOrZSg5Tiw7ZRQ", "imageURL": "https://yt3.ggpht.com/9FFCT3cu9FxyLJUUFovpPI7WRj0I7_KuApwkEaLsD0NHVVL2OPTtGn8Qga5YFbeC_47-MoEXrA=s88-c-k-c0x00ffffff-no-rj", "userLogin": "@hakosbaelz"],
    ["userLogin": "@inugamikorone", "name": "Korone Ch. 戌神ころね", "id": "UChAnqc_AY5_I3Px5dig3X1Q", "imageURL": "https://yt3.ggpht.com/ytc/AIdro_nrS6tFctvjyWv1mKzKBIetHJBfpqwHOpvRFc3KU2P_5yc=s88-c-k-c0x00ffffff-no-rj"],
    ["imageURL": "https://yt3.ggpht.com/gxXHmXJq_kkZ0bvTmz7R1deyOAV44zZr2keaF0ojSq7MeiOGLSzFTCoYgYR4PGDWTCoLR7eK=s88-c-k-c0x00ffffff-no-rj", "userLogin": "@sakuramiko", "name": "Miko Ch. さくらみこ", "id": "UC-hM6YJuNYVAmUWxeIr9FeA"],
    ["name": "HAACHAMA Ch 赤井はあと", "imageURL": "https://yt3.ggpht.com/tUHzjVx8_3IchEO64NDOJGFzH-uN7b5QHUBiKqnUmwLlY0ZSxmQ1snRse4jUx0gt8dGh2MzILP4=s88-c-k-c0x00ffffff-no-rj", "id": "UC1CfXB_kRs3C-zaeTG3oGyg", "userLogin": "@akaihaato"],
    ["name": "しぐれうい", "userLogin": "@ui_shig", "id": "UCt30jJgChL8qeT9VPadidSw", "imageURL": "https://yt3.ggpht.com/ytc/AIdro_m6xQ9ez0I8lnwswHqAns9ZRPsaCCutfzu6eUbM7pwzqsA=s88-c-k-c0x00ffffff-no-rj"],
    ["id": "UCCzUftO8KOVkV4wQG1vkUvg", "userLogin": "@houshoumarine", "imageURL": "https://yt3.ggpht.com/Z2QpYUZ4-jKoFR7Ms330gRQzjI2gZ4CB_uVP6f39YysxUe1u8icrtE07ffpRxCtpu9U65MWNDA=s88-c-k-c0x00ffffff-no-rj", "name": "Marine Ch. 宝鐘マリン"],
    ["id": "UCQ0UDLQCjY0rmuxCDE38FGg", "userLogin": "@natsuiromatsuri", "imageURL": "https://yt3.ggpht.com/wIqM7MWDN94PoibzPmeog7WOt8jFKTKZBOBFEbLBaiUAdKLwoqdLC_CN7B7Gby-FWH-076rN=s88-c-k-c0x00ffffff-no-rj", "name": "Matsuri Channel 夏色まつり"],
    ["name": "Luna Ch. 姫森ルーナ", "imageURL": "https://yt3.ggpht.com/O7m_5HMY_O8yxR3Jhn9cEO1fLNL_GifMERExnAmfY7JrdTRsTjNijTcNYTPN97Llj3zGn8Susw=s88-c-k-c0x00ffffff-no-rj", "userLogin": "@himemoriluna", "id": "UCa9Y57gfeY0Zro_noHRVrnw"],
    ["userLogin": "@tsunomakiwatame", "id": "UCqm3BQLlJfvkTsX_hvm0UmA", "imageURL": "https://yt3.ggpht.com/4wLMmSJkzy4vmWfWYkmzn6YO9T__jp1cORNuFXN7YyihwvhGkqXCxNBaklKoXlgdik-Fp0Zu=s88-c-k-c0x00ffffff-no-rj", "name": "Watame Ch. 角巻わため"],
    ["id": "UCZhgX5W2iLfUm2NfyD7BSvw", "userLogin": "@punkalopi", "imageURL": "https://yt3.ggpht.com/NWtTHi6N3Md-hl5ADnz7CixGFrwSXkCute3t1GGfw7HMDDN5nbtG0pZQVBtCzau0ngopd8PCyQ=s88-c-k-c0x00ffffff-no-rj", "name": "Punkalopi"],
    ["userLogin": "@mystarias", "id": "UCIM92Ok_spNKLVB5TsgwseQ", "imageURL": "https://yt3.ggpht.com/XNqSxIYgxUTBjs6Vbnh8I6keep3B97OGt4LA7ajDdBKq0SW22m9ixn4oW-zAnzBikmq_hk3VoAg=s88-c-k-c0x00ffffff-no-rj", "name": "Mysta Rias 【NIJISANJI EN】"],
    ["userLogin": "@tokoyamitowa", "imageURL": "https://yt3.ggpht.com/meRnxbRUm5yPSwq8Q5QpI5maFApm5QTGQV_LGblQFsoO0yAV4LI-nSZ70GYwMZ_tbfSa_O8MTCU=s88-c-k-c0x00ffffff-no-rj", "id": "UC1uv2Oq6kNxgATlCiez59hw", "name": "Towa Ch. 常闇トワ"],
    ["id": "UCajhBT4nMrg3DLS-bLL2RCg", "imageURL": "https://yt3.ggpht.com/u9LaLcximhcrnhPlTD1ekxrNI4d3WeWviYdLlXJZ8DaI5OQyKLZ5nBo6jY10CSO7o4otePZj=s88-c-k-c0x00ffffff-no-rj", "name": "天野ピカミィ. Pikamee", "userLogin": "@pikamee"],
    ["userLogin": "@nintendoamerica", "name": "Nintendo of America", "imageURL": "https://yt3.ggpht.com/R0U0EvZCB10kisxpg2xK-1c0oVHMXWtJo-DWZKofufsf0q1yQXHAcSjcETab1GGnWKN7xrUBUQ=s88-c-k-c0x00ffffff-no-rj", "id": "UCGIY_O-8vW4rfX98KlMkvRg"],
    ["name": "Nene Ch.桃鈴ねね", "userLogin": "@momosuzunene", "imageURL": "https://yt3.ggpht.com/bMBMxmB1YVDVazU-8KbB6JZqUHn4YzmFiQRWwEUHCeqm5REPW7HHQChC5xE6e36aqqnXgK4a=s88-c-k-c0x00ffffff-no-rj", "id": "UCAWSyEs_Io8MtpY3m-zqILA"],
    ["id": "UC6eWCld0KwmyHFbAqK3V-Rw", "name": "Koyori ch. 博衣こより - holoX -", "userLogin": "@hakuikoyori", "imageURL": "https://yt3.ggpht.com/WO7ItKNmy6tW_NQ82g8c1y74CZSw6GsSdynsE5s2csuEok2fHRrAaGcBV3JJO-2BxEOXXA8lvw=s88-c-k-c0x00ffffff-no-rj"],
    ["name": "フブキCh。白上フブキ", "id": "UCdn5BQ06XqgXoAxIhbqw5Rg", "userLogin": "@shirakamifubuki", "imageURL": "https://yt3.ggpht.com/ytc/AIdro_m1fu92SbTfaHSOnyn1FhjNahnPRea-pgVwN9x_gg8nCzk=s88-c-k-c0x00ffffff-no-rj"],
    ["id": "UCvaTdHTWBGv3MKj3KVqJVCw", "imageURL": "https://yt3.ggpht.com/G92yBEhkf9R2mEpayuPvhwlA42tYAPOcNi2r77JeL7ic0ETS_FvTkwkBHjvR6iCqUk7TOlpROQ=s88-c-k-c0x00ffffff-no-rj", "userLogin": "@nekomataokayu", "name": "Okayu Ch. 猫又おかゆ"],
    ["name": "Roboco Ch. - ロボ子", "userLogin": "@robocosan", "imageURL": "https://yt3.ggpht.com/GF0wbwZvZAGzYg8s8d6Yh1BDcWAE9UmLAh2uf3IMJ5l_ESi3sWeRqk2XfhW3IgzMeliHpt4cAw=s88-c-k-c0x00ffffff-no-rj", "id": "UCDqI2jOz0weumE8s7paEk6g"],
    ["name": "Subaru Ch. 大空スバル", "id": "UCvzGlP9oQwU--Y0r9id_jnA", "userLogin": "@oozorasubaru", "imageURL": "https://yt3.ggpht.com/ytc/AIdro_k5mjdt1wcbaYCXKwmDpVXmSGtOc-LH3WjIyUHVC4soP28=s88-c-k-c0x00ffffff-no-rj"],
    ["imageURL": "https://yt3.ggpht.com/e5wX9w1xSFUjaUdyhFugYZKzDZ_KLTLWBgdtRohHQDu0pshH867pyOv6gLGuqkqy5Ik8bJ9MSZU=s88-c-k-c0x00ffffff-no-rj", "id": "UCZlDXzGoo7d44bwdNObFacg", "name": "Kanata Ch. 天音かなた", "userLogin": "@amanekanata"],
    ["userLogin": "@hololive", "imageURL": "https://yt3.ggpht.com/7ajjK5dKPtpFdAVtuZAdanfIwPhSa1tif_5TCLEApvx1J3kovTayOXGspX9FHHReP_6M-Nel=s88-c-k-c0x00ffffff-no-rj", "name": "hololive ホロライブ - VTuber Group", "id": "UCJFZiqLMntJufDCHc6bQixg"],
    ["id": "UC0TXe_LYZ4scaW2XMyi5_kw", "name": "AZKi Channel", "userLogin": "@azki", "imageURL": "https://yt3.ggpht.com/so69WMDlrSwil0013l7MLKIBLV--U_zjya2tG9_Sgij5NBm7raSvbZXUJiiAbQgrZosseqKDobM=s88-c-k-c0x00ffffff-no-rj"],
    ["id": "UCXTpFs_3PqI41qX2d9tL2Rw", "name": "Shion Ch. 紫咲シオン", "imageURL": "https://yt3.ggpht.com/V3GVqD-sYadScSd8QYW4x1QTRfu2RyUNyKWVRb0IJxX0gj2PV6xH32d_BJHn3l0fouPLUw6Ref0=s88-c-k-c0x00ffffff-no-rj", "userLogin": "@murasakishion"],
    ["id": "UCdyqAaZDKHXg4Ahi7VENThQ", "name": "Noel Ch. 白銀ノエル", "imageURL": "https://yt3.ggpht.com/ytc/AIdro_kIKJPVEqJLs9FNMgdti5WWHtc1t0MwihOlW-ZK90nGUdk=s88-c-k-c0x00ffffff-no-rj", "userLogin": "@shiroganenoel"],
    ["id": "UCENwRMx5Yh42zWpzURebzTw", "name": "Laplus ch. ラプラス・ダークネス - holoX -", "imageURL": "https://yt3.ggpht.com/roGS60A8a_lDbVakIg1JU3u3hbtjHSTilMGHMizuPKh7tuoY2nl46raxuW2f_83IKFGMjL6Z=s88-c-k-c0x00ffffff-no-rj", "userLogin": "@laplusdarknesss"],
    ["imageURL": "https://yt3.ggpht.com/ytc/AIdro_kU3qKIJYEfUnFV1ikRs92qVoxgvWQLf8XGpoUJVJEdUcc=s88-c-k-c0x00ffffff-no-rj", "userLogin": "@akirosenthal", "name": "アキロゼCh。Vtuber/ホロライブ所属", "id": "UCFTLzh12_nrtzqBPsTCqenA"],
    ["name": "Flare Ch. 不知火フレア", "id": "UCvInZx9h3jC2JzsIzoOebWg", "imageURL": "https://yt3.ggpht.com/d9aIrGtZR0eI4k1Wnev5f_R4llIBsWnQOjkdsqkMycoAxA3g_zz-jyeBl8tEHfbm1iTg0SJj=s88-c-k-c0x00ffffff-no-rj", "userLogin": "@shiranuiflare"],
    ["userLogin": "@omarupolka", "imageURL": "https://yt3.ggpht.com/KE2NpU0fd43SXO-G46SSyPOEgyjHW7FnU_SAly2t5URFS4X-I85ILTAOzhrSZ6_3_jU4d6IjRvY=s88-c-k-c0x00ffffff-no-rj", "name": "Polka Ch. 尾丸ポルカ", "id": "UCK9V2B22uJYu3N7eR_BT9QA"],
    ["id": "UCFKOVgVbGmX65RxO3EtH3iw", "name": "Lamy Ch. 雪花ラミィ", "userLogin": "@yukihanalamy", "imageURL": "https://yt3.ggpht.com/ytc/AIdro_nHPsjV8KMncrIzZh7NPGaG8xzAgzN8Vf9YAj12dRN7sCc=s88-c-k-c0x00ffffff-no-rj"],
    ["name": "Mel Channel 夜空メルチャンネル", "id": "UCD8HOxPs4Xvsm8H0ZxXGiBw", "imageURL": "https://yt3.ggpht.com/8U3jlgaSNSJBkqyEI0j4XaT9cRLspqvjuyCkxw6xkfnWRqobKEJA-yJtx9UOZPFWN3jQimcYKc8=s88-c-k-c0x00ffffff-no-rj", "userLogin": "@yozoramel"],
    ["name": "Aqua Ch. 湊あくあ", "id": "UC1opHUrw8rvnsadT-iGp7Cg", "imageURL": "https://yt3.ggpht.com/ytc/AIdro_kaZLtKaya9TSJr3M4lpzV95R2rWdQtGk67fwedroUfSnE=s88-c-k-c0x00ffffff-no-rj", "userLogin": "@minatoaqua"],
    ["name": "Choco Ch. 癒月ちょこ", "userLogin": "@yuzukichoco", "imageURL": "https://yt3.ggpht.com/eB_qZXKL-jDhGyEstj9BvLL0qO_tHEMaIpkfp8M-qXYweZOpDm7uZgBwbWfxwAT7uKh_5tEj=s88-c-k-c0x00ffffff-no-rj", "id": "UC1suqwovbL1kzsoaZgFZLKg"],
    ["imageURL": "https://yt3.ggpht.com/XDGhKwPZcT16Ppg2gQmLHEIYRhw9sY4rqG0HWbeCH68LHkhlVQrrFgxd5hWUuMb2nLfDOhu6=s88-c-k-c0x00ffffff-no-rj", "id": "UC7fk0CB07ly8oSl0aqKkqFg", "name": "Nakiri Ayame Ch. 百鬼あやめ", "userLogin": "@nakiriayame"],
    ["imageURL": "https://yt3.ggpht.com/_xNtPLKQcQxMTnOr4tAcGz0GEeESsi0bQX9mJEP3fx_50a8GUfUyOG1eyLIld2cCz6GvKABwpQ=s88-c-k-c0x00ffffff-no-rj", "userLogin": "@sakamatachloe", "name": "Chloe ch. 沙花叉クロヱ - holoX -", "id": "UCIBY1ollUsauvVi4hW4cumw"],
    ["id": "UCUKD-uaobj9jiqB-VXt71mA", "imageURL": "https://yt3.ggpht.com/CoKMtt9uQNGPOQP_t0LaCL4N21m0TUNCxzLtKRRTBmpH0xPc0s2cZQ-uUuQkxqerbGkxJkGU=s88-c-k-c0x00ffffff-no-rj", "name": "Botan Ch.獅白ぼたん", "userLogin": "@shishirobotan"],
    ["imageURL": "https://yt3.ggpht.com/Z78RNXxUqpOGYKFt-VrJV7nlehOHzl7Ta-l1cgPx5Ewucmr5kY64iGxmPSe7QqIdM1ZhvPlEOg=s88-c-k-c0x00ffffff-no-rj", "id": "UCp-5t9SrOQwXMU7iIjQfARg", "name": "Mio Channel 大神ミオ", "userLogin": "@ookamimio"],
    ["id": "UCotXwY6s8pWmuWd_snKYjhg", "userLogin": "@hololiveenglish", "name": "hololive English", "imageURL": "https://yt3.ggpht.com/6OWNODOaLJ7zHjqojS0chpkwMxaLHwLApAwAZtOXZELVeNJ3FvsGf-YrigoCfPcTBM9uOJUp7A=s88-c-k-c0x00ffffff-no-rj"],
    ["imageURL": "https://yt3.ggpht.com/03vzkDFh4wN995rnwnzRPL0rNv6tUHtVTddBTp5H89fGAJQPhDEwQ-BtxumhdQBzRYKCUAo44w=s88-c-k-c0x00ffffff-no-rj", "userLogin": "@nabii", "id": "UCzKkwB84Y0ql0EvyOWRSkEw", "name": "Nabi"],
    ["userLogin": "@kirispica", "id": "UCbrbFKFhyHD4bMJbEcXZz1g", "imageURL": "https://yt3.ggpht.com/g-0m2dXUzHK-nxWmbCKFPv5JNDhOohDJinKkpHRC1QlnGonVeGYkHBbzuoLpx_HINkqXeCNHFg=s88-c-k-c0x00ffffff-no-rj", "name": "kirispica 【V-Dere】"],
    ["userLogin": "@delutaya", "name": "DELUTAYA Δ.", "id": "UC7YXqPO3eUnxbJ6rN0z2z1Q", "imageURL": "https://yt3.ggpht.com/sCVuWV4fSZYgyIqK4SJOpvG8h0fxykMDl3MRDVjiDTwh1Ykv0JmQvLymxBFXxFQ2QsUzu8U=s88-c-k-c0x00ffffff-no-rj"],
    ["userLogin": "@takanelui", "name": "Lui ch. 鷹嶺ルイ - holoX -", "imageURL": "https://yt3.ggpht.com/zpCsi_VSjmayreBJC8zhElKKLrntqE8hIfNNWguWAPFfsB3vMNFzIvP600OfHLu6PMvW23nD=s88-c-k-c0x00ffffff-no-rj", "id": "UCs9_O1tRPMQTHQ-N_L6FU2g"],
    ["id": "UCRvqjQPSeaWn-uEx-w0XOIg", "userLogin": "@intothecryptoverse", "imageURL": "https://yt3.ggpht.com/oyuuqNxUU_6cmgVEFdrSSu3gNFlS5e84EoOd1GGKCfPSnYKNCcFB8eV0eYNaK0pJRhGXTRMBDQU=s88-c-k-c0x00ffffff-no-rj", "name": "Benjamin Cowen"],
    ["id": "UChgTyjG-pdNvxxhdsXfHQ5Q", "userLogin": "@pavoliareine", "name": "Pavolia Reine Ch. hololive-ID", "imageURL": "https://yt3.ggpht.com/3Wp-qrvmEyR4I4CcqrzbERgqjZkKWpptZTV9veusoh9ZeIdBTx7WfUB3uT8bnMp5ApebFERHZ9I=s88-c-k-c0x00ffffff-no-rj"],
    ["userLogin": "@millieparfait", "imageURL": "https://yt3.ggpht.com/QlRHzMM0rIUcawzWSJ5ZIoWUhXJD8M_aCfVFrHYzlP0WEJF-4mU8jkb0s8MTPpGy4NdfRXlUiJ4=s88-c-k-c0x00ffffff-no-rj", "name": "Millie Parfait【NIJISANJI EN】", "id": "UC47rNmkDcNgbOcM-2BwzJTQ"],
    ["id": "UCZLZ8Jjx_RN2CXloOmgTHVg", "imageURL": "https://yt3.ggpht.com/i-aqA-4BPUKlCYErdtAkp2_s2AsG_8IB1saxXSSBXevz6bA8ptaIm53-SXB1_KIODP4SI4_l=s88-c-k-c0x00ffffff-no-rj", "userLogin": "@kaelakovalskia", "name": "Kaela Kovalskia Ch. hololive-ID"],
    ["id": "UC_vMYWcDjmfdpH6r4TTn1MQ", "userLogin": "@kazamairoha", "imageURL": "https://yt3.ggpht.com/IzJcA0QlV4JwWH9yXi7Voa3359fHUB182xd_xxs92xd_3kuw_pa45dKeyQ9hvKl_1OhwbT6M3g=s88-c-k-c0x00ffffff-no-rj", "name": "Iroha ch. 風真いろは - holoX -"],
    ["name": "FUWAMOCO Ch. hololive-EN", "userLogin": "@fuwamococh", "id": "UCt9H_RpQzhxzlyBxFqrdHqA", "imageURL": "https://yt3.ggpht.com/zt63obGOD6fnCX0elnzt8xkylqOTnAENmSCKmwg_PSiC857DDgB28kEjQ-FJlWGtNYZ9lqzEag=s88-c-k-c0x00ffffff-no-rj"],
    ["name": "Nerissa Ravencroft Ch. hololive-EN", "imageURL": "https://yt3.ggpht.com/JDCIBWj11TgjY2Uyba_efZ0n5hzjysMB9GxkvHGkIN_sfFQJR5mx3iVPqgJ96IPcYjZpCLsb=s88-c-k-c0x00ffffff-no-rj", "userLogin": "@nerissaravencroft", "id": "UC_sFNM0z0MWm9A6WlKPuMMg"],
    ["userLogin": "@kosekibijou", "imageURL": "https://yt3.ggpht.com/75xH5tujXTVPHlQXask8_qTbOeyq0BY4hKxNfvgTrsuqhK_oActrFV197roYikUNZhzayfiLmg=s88-c-k-c0x00ffffff-no-rj", "name": "Koseki Bijou Ch. hololive-EN", "id": "UC9p_lqQ0FEDz327Vgf5JwqA"],
    ["id": "UCgnfPPb9JI3e9A4cXHnWbyg", "name": "Shiori Novella Ch. hololive-EN", "userLogin": "@shiorinovella", "imageURL": "https://yt3.ggpht.com/ZlovVsPyh8NgS37S4dfONiCBySiboGPbT9cYuirb8JM3JhSnqlpJk-8SQUEA7jPfqXpMvjaa=s88-c-k-c0x00ffffff-no-rj"],
    ["id": "UC727SQYUvx5pDDGQpTICNWg", "userLogin": "@anyamelfissa", "imageURL": "https://yt3.ggpht.com/58uF1apTqtovpieDrBCSF5pUeNU2MA6n34bdj2EBEVnySKm-VvEznGNt2puk4v4tAnA3AYh5JA=s88-c-k-c0x00ffffff-no-rj", "name": "Anya Melfissa Ch. hololive-ID"],
    ["userLogin": "@ichijouririka", "name": "Ririka Ch. 一条莉々華 ‐ ReGLOSS", "id": "UCtyWhCj3AqKh2dXctLkDtng", "imageURL": "https://yt3.ggpht.com/TQwdYxMCQYmBQskSxmdAbfAqRR__ROlB-mFGlCFqLF4C-6vHpjYkWj9GbnlKOoOTaOMssRGw=s88-c-k-c0x00ffffff-no-rj"],
    ["userLogin": "@otonosekanade", "imageURL": "https://yt3.ggpht.com/o03i3rWw98BSquRZFhyiDQuunr1cr_9xEBVNNx3Cq8vqlJZVKXMgKsVLGW2AlbsFTvphGiHRCg0=s88-c-k-c0x00ffffff-no-rj", "name": "Kanade Ch. 音乃瀬奏 ‐ ReGLOSS", "id": "UCWQtYtq9EOB4-I5P-3fh8lA"],
    ["userLogin": "@juufuuteiraden", "id": "UCdXAk5MpyLD8594lm_OvtGQ", "name": "Raden Ch. 儒烏風亭らでん ‐ ReGLOSS", "imageURL": "https://yt3.ggpht.com/MrOx47-A0RkLxHN5Wh8stc3SYfbPGNHdJY9AnjD5mRkuKYVeYjxlBSnzKHtqTjDQ3Lm_MRCjcA=s88-c-k-c0x00ffffff-no-rj"],
    ["imageURL": "https://yt3.ggpht.com/vMM_SKbkipyDVJkUYPPWlQkgThE1rXMSh7hkhqvC_Qs-iTigfyKW23OfLH5U1HFTZIcsHR2Z=s88-c-k-c0x00ffffff-no-rj", "userLogin": "@todorokihajime", "name": "Hajime Ch. 轟はじめ ‐ ReGLOSS", "id": "UC1iA6_NT4mtAcIII6ygrvCw"],
    ["name": "Ao Ch. 火威青 ‐ ReGLOSS", "userLogin": "@hiodoshiao", "id": "UCMGfV7TVTmHhEErVJg1oHBQ", "imageURL": "https://yt3.ggpht.com/-D2Cf4dIQGO_CcY_1F9i63TcHyY0EuPV1pYskJQmQHIClJGOt34BoI84zlgje_THCw8AprB6=s88-c-k-c0x00ffffff-no-rj"],
    ["name": "Airani Iofifteen Channel hololive-ID", "id": "UCAoy6rzhSf4ydcYjJw3WoVg", "userLogin": "@airaniiofifteen", "imageURL": "https://yt3.ggpht.com/bF91weVtAIL7Uhnr2HVwtCTLVKK5kVsn4FC_Ze3Gl8rkSsEjDwyey3AbQ1PDfJQ1Oeac5cePeg=s88-c-k-c0x00ffffff-no-rj"],
    ["id": "UChgPVLjqugDQpRLWvC7zzig", "imageURL": "https://yt3.ggpht.com/ytc/AIdro_lnpcdCnJi5j9aL2TtXam65hLVm2Fb9wG6kYUyo9E-yi0E=s88-c-k-c0x00ffffff-no-rj", "userLogin": "@ironmouseparty", "name": "ironmouse"],
    ["imageURL": "https://yt3.ggpht.com/ytc/AIdro_n8z9IuN5gB-5NrCn0rdf048-WZp7V2BmY5LOrRPhgrD1U=s88-c-k-c0x00ffffff-no-rj", "userLogin": "@rip0p0chan", "name": "리포포Ripopo", "id": "UCmAW6Q9CSkDpkBAr_Wf2HAQ"],
    ["userLogin": "@ennaalouette", "name": "Enna Alouette【NIJISANJI EN】", "id": "UCR6qhsLpn62WVxCBK1dkLow", "imageURL": "https://yt3.ggpht.com/MKS8EHgSx1cC75IPUIf0zQefXweMfVpyUQxEQ_emFsTh-LTwODz6jXotb1q-QTrNpvPpf_sSuoM=s88-c-k-c0x00ffffff-no-rj"],
    ["name": "a db", "userLogin": "@adb9210", "imageURL": "https://yt3.ggpht.com/ytc/AIdro_lbpRUu5gbsvWTmsdI3NZ15kpk0Ej3nbI--JsDIpwlL-8rX0jbLwi0IQmkjLB0HWRjkqw=s88-c-k-c0x00ffffff-no-rj", "id": "UC6tdA1w15zpammADxSTTFiA"],
    ["id": "UCcHHkJ98eSfa5aj0mdTwwLQ", "imageURL": "https://yt3.ggpht.com/ytc/AIdro_mxbJ__S3iWA9yHCK-ABLglmhGfKYmpCZWxxP4D-w4ymQ=s88-c-k-c0x00ffffff-no-rj", "name": "Maid Mint Ch. ミント・ファントーム", "userLogin": "@mintfantome"]
]
