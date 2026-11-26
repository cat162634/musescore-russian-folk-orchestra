//=============================================================================
//  Народный оркестр (ОРНИ) — генератор партитур и шаблонов для MuseScore 4
//  Включает полный состав инструментов оркестра русских народных инструментов:
//  деревянные и народные духовые, баяны и гармоники, ударные, гусли, домры, балалайки.
//=============================================================================

import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15
import MuseScore 3.0
import FileIO 3.0

MuseScore {
    version: "1.0.0"
    title: "Народный оркестр (ОРНИ)"
    description: "Создаёт партитуру или шаблон оркестра русских народных инструментов со всеми инструментами, акколадами, строями и диапазонами."
    pluginType: "dialog"
    categoryCode: "composing-arranging-tools"
    requiresScore: false

    width: 920
    height: 700

    property var catalogData: [
  {
    "key": "piccolo",
    "group": "winds",
    "groupName": "Деревянные и народные духовые",
    "msId": "piccolo",
    "musicXmlId": "wind.flutes.flute.piccolo",
    "family": "flutes",
    "longName": "Флейта-пикколо",
    "shortName": "Фл. пик.",
    "trackName": "Флейта-пикколо",
    "staves": 1,
    "clef": "G",
    "concertClef": "G8va",
    "transposingClef": "G",
    "td": 7,
    "tc": 12,
    "minA": 74,
    "maxA": 105,
    "minP": 74,
    "maxP": 108,
    "prog": 72,
    "bank32": 0,
    "bank0": 0,
    "pairGroup": null,
    "presets": [
      "full",
      "academic"
    ]
  },
  {
    "key": "flute1",
    "group": "winds",
    "groupName": "Деревянные и народные духовые",
    "msId": "flute",
    "musicXmlId": "wind.flutes.flute",
    "family": "flutes",
    "longName": "Флейта I",
    "shortName": "Фл. I",
    "trackName": "Флейта I",
    "staves": 1,
    "clef": "G",
    "td": 0,
    "tc": 0,
    "minA": 60,
    "maxA": 93,
    "minP": 59,
    "maxP": 98,
    "prog": 73,
    "bank32": 0,
    "bank0": 0,
    "pairGroup": "flute",
    "presets": [
      "full",
      "academic",
      "concert"
    ]
  },
  {
    "key": "flute2",
    "group": "winds",
    "groupName": "Деревянные и народные духовые",
    "msId": "flute",
    "musicXmlId": "wind.flutes.flute",
    "family": "flutes",
    "longName": "Флейта II",
    "shortName": "Фл. II",
    "trackName": "Флейта II",
    "staves": 1,
    "clef": "G",
    "td": 0,
    "tc": 0,
    "minA": 60,
    "maxA": 93,
    "minP": 59,
    "maxP": 98,
    "prog": 73,
    "bank32": 0,
    "bank0": 0,
    "pairGroup": "flute",
    "presets": [
      "full",
      "academic"
    ]
  },
  {
    "key": "alto_flute",
    "group": "winds",
    "groupName": "Деревянные и народные духовые",
    "msId": "alto-flute",
    "musicXmlId": "wind.flutes.flute.alto",
    "family": "flutes",
    "longName": "Флейта альтовая (in G)",
    "shortName": "Альт. фл.",
    "trackName": "Флейта альтовая",
    "staves": 1,
    "clef": "G",
    "td": -3,
    "tc": -5,
    "minA": 55,
    "maxA": 88,
    "minP": 55,
    "maxP": 91,
    "prog": 73,
    "bank32": 0,
    "bank0": 0,
    "pairGroup": null,
    "presets": [
      "full",
      "academic"
    ]
  },
  {
    "key": "oboe1",
    "group": "winds",
    "groupName": "Деревянные и народные духовые",
    "msId": "oboe",
    "musicXmlId": "wind.reed.oboe",
    "family": "oboes",
    "longName": "Гобой I",
    "shortName": "Гоб. I",
    "trackName": "Гобой I",
    "staves": 1,
    "clef": "G",
    "td": 0,
    "tc": 0,
    "minA": 58,
    "maxA": 87,
    "minP": 58,
    "maxP": 96,
    "prog": 68,
    "bank32": 0,
    "bank0": 0,
    "pairGroup": "oboe",
    "presets": [
      "full",
      "academic",
      "concert"
    ]
  },
  {
    "key": "oboe2",
    "group": "winds",
    "groupName": "Деревянные и народные духовые",
    "msId": "oboe",
    "musicXmlId": "wind.reed.oboe",
    "family": "oboes",
    "longName": "Гобой II",
    "shortName": "Гоб. II",
    "trackName": "Гобой II",
    "staves": 1,
    "clef": "G",
    "td": 0,
    "tc": 0,
    "minA": 58,
    "maxA": 87,
    "minP": 58,
    "maxP": 96,
    "prog": 68,
    "bank32": 0,
    "bank0": 0,
    "pairGroup": "oboe",
    "presets": [
      "full",
      "academic"
    ]
  },
  {
    "key": "english_horn",
    "group": "winds",
    "groupName": "Деревянные и народные духовые",
    "msId": "english-horn",
    "musicXmlId": "wind.reed.english-horn",
    "family": "oboes",
    "longName": "Английский рожок (in F)",
    "shortName": "Англ. рож.",
    "trackName": "Английский рожок",
    "staves": 1,
    "clef": "G",
    "td": -4,
    "tc": -7,
    "minA": 52,
    "maxA": 81,
    "minP": 52,
    "maxP": 83,
    "prog": 69,
    "bank32": 0,
    "bank0": 0,
    "pairGroup": null,
    "presets": [
      "full",
      "academic"
    ]
  },
  {
    "key": "bb_clarinet",
    "group": "winds",
    "groupName": "Деревянные и народные духовые",
    "msId": "bb-clarinet",
    "musicXmlId": "wind.reed.clarinet.bflat",
    "family": "clarinets",
    "longName": "Кларнет (in B♭)",
    "shortName": "Кларн.",
    "trackName": "Кларнет",
    "staves": 1,
    "clef": "G",
    "td": -1,
    "tc": -2,
    "minA": 50,
    "maxA": 89,
    "minP": 50,
    "maxP": 94,
    "prog": 71,
    "bank32": 0,
    "bank0": 0,
    "pairGroup": null,
    "presets": [
      "full"
    ]
  },
  {
    "key": "bassoon",
    "group": "winds",
    "groupName": "Деревянные и народные духовые",
    "msId": "bassoon",
    "musicXmlId": "wind.reed.bassoon",
    "family": "bassoons",
    "longName": "Фагот",
    "shortName": "Фаг.",
    "trackName": "Фагот",
    "staves": 1,
    "clef": "F",
    "td": 0,
    "tc": 0,
    "minA": 34,
    "maxA": 69,
    "minP": 34,
    "maxP": 76,
    "prog": 70,
    "bank32": 0,
    "bank0": 0,
    "pairGroup": null,
    "presets": [
      "full"
    ]
  },
  {
    "key": "svirel",
    "group": "winds",
    "groupName": "Деревянные и народные духовые",
    "msId": "soprano-recorder",
    "musicXmlId": "wind.flutes.recorder.soprano",
    "family": "flutes",
    "longName": "Свирель",
    "shortName": "Свир.",
    "trackName": "Свирель",
    "staves": 1,
    "clef": "G",
    "td": 0,
    "tc": 0,
    "minA": 67,
    "maxA": 91,
    "minP": 64,
    "maxP": 96,
    "prog": 74,
    "bank32": 0,
    "bank0": 0,
    "pairGroup": null,
    "presets": [
      "full",
      "academic"
    ]
  },
  {
    "key": "zhaleika",
    "group": "winds",
    "groupName": "Деревянные и народные духовые",
    "msId": "oboe",
    "musicXmlId": "wind.reed.oboe",
    "family": "oboes",
    "longName": "Жалейка",
    "shortName": "Жал.",
    "trackName": "Жалейка",
    "staves": 1,
    "clef": "G",
    "td": 0,
    "tc": 0,
    "minA": 60,
    "maxA": 81,
    "minP": 58,
    "maxP": 84,
    "prog": 111,
    "bank32": 0,
    "bank0": 0,
    "pairGroup": null,
    "presets": [
      "full",
      "academic"
    ]
  },
  {
    "key": "kugikly",
    "group": "winds",
    "groupName": "Деревянные и народные духовые",
    "msId": "pan-flute",
    "musicXmlId": "wind.flutes.panpipes",
    "family": "flutes",
    "longName": "Кугиклы",
    "shortName": "Куг.",
    "trackName": "Кугиклы",
    "staves": 1,
    "clef": "G",
    "td": 0,
    "tc": 0,
    "minA": 67,
    "maxA": 88,
    "minP": 64,
    "maxP": 93,
    "prog": 75,
    "bank32": 0,
    "bank0": 0,
    "pairGroup": null,
    "presets": [
      "full",
      "academic"
    ]
  },
  {
    "key": "rozhok_soprano",
    "group": "winds",
    "groupName": "Деревянные и народные духовые",
    "msId": "oboe",
    "musicXmlId": "wind.reed.oboe",
    "family": "oboes",
    "longName": "Владимирский рожок (сопрано)",
    "shortName": "Рож. сопр.",
    "trackName": "Владимирский рожок сопрано",
    "staves": 1,
    "clef": "G",
    "td": 0,
    "tc": 0,
    "minA": 64,
    "maxA": 84,
    "minP": 60,
    "maxP": 86,
    "prog": 69,
    "bank32": 0,
    "bank0": 0,
    "pairGroup": "rozhok",
    "presets": [
      "full",
      "academic"
    ]
  },
  {
    "key": "rozhok_alto",
    "group": "winds",
    "groupName": "Деревянные и народные духовые",
    "msId": "oboe",
    "musicXmlId": "wind.reed.oboe",
    "family": "oboes",
    "longName": "Владимирский рожок (альт)",
    "shortName": "Рож. альт",
    "trackName": "Владимирский рожок альт",
    "staves": 1,
    "clef": "G",
    "td": 0,
    "tc": 0,
    "minA": 57,
    "maxA": 77,
    "minP": 55,
    "maxP": 79,
    "prog": 69,
    "bank32": 0,
    "bank0": 0,
    "pairGroup": "rozhok",
    "presets": [
      "full"
    ]
  },
  {
    "key": "rozhok_tenor",
    "group": "winds",
    "groupName": "Деревянные и народные духовые",
    "msId": "oboe",
    "musicXmlId": "wind.reed.oboe",
    "family": "oboes",
    "longName": "Владимирский рожок (тенор)",
    "shortName": "Рож. тен.",
    "trackName": "Владимирский рожок тенор",
    "staves": 1,
    "clef": "G8vb",
    "td": 0,
    "tc": 0,
    "minA": 50,
    "maxA": 70,
    "minP": 48,
    "maxP": 72,
    "prog": 69,
    "bank32": 0,
    "bank0": 0,
    "pairGroup": "rozhok",
    "presets": [
      "full"
    ]
  },
  {
    "key": "rozhok_bass",
    "group": "winds",
    "groupName": "Деревянные и народные духовые",
    "msId": "bassoon",
    "musicXmlId": "wind.reed.bassoon",
    "family": "bassoons",
    "longName": "Владимирский рожок (бас)",
    "shortName": "Рож. бас",
    "trackName": "Владимирский рожок бас",
    "staves": 1,
    "clef": "F",
    "td": 0,
    "tc": 0,
    "minA": 43,
    "maxA": 63,
    "minP": 40,
    "maxP": 65,
    "prog": 70,
    "bank32": 0,
    "bank0": 0,
    "pairGroup": "rozhok",
    "presets": [
      "full"
    ]
  },
  {
    "key": "bayan1",
    "group": "bayans",
    "groupName": "Баяны и гармоники",
    "msId": "accordion",
    "musicXmlId": "keyboard.accordion",
    "family": "accordions",
    "longName": "Баян I",
    "shortName": "Баян I",
    "trackName": "Баян I",
    "staves": 2,
    "clef": "G",
    "clef2": "F",
    "td": 0,
    "tc": 0,
    "minA": 36,
    "maxA": 93,
    "minP": 28,
    "maxP": 97,
    "prog": 21,
    "bank32": 0,
    "bank0": 0,
    "pairGroup": null,
    "presets": [
      "full",
      "academic",
      "concert",
      "small"
    ]
  },
  {
    "key": "bayan2",
    "group": "bayans",
    "groupName": "Баяны и гармоники",
    "msId": "accordion",
    "musicXmlId": "keyboard.accordion",
    "family": "accordions",
    "longName": "Баян II",
    "shortName": "Баян II",
    "trackName": "Баян II",
    "staves": 2,
    "clef": "G",
    "clef2": "F",
    "td": 0,
    "tc": 0,
    "minA": 36,
    "maxA": 93,
    "minP": 28,
    "maxP": 97,
    "prog": 21,
    "bank32": 0,
    "bank0": 0,
    "pairGroup": null,
    "presets": [
      "full",
      "academic",
      "concert",
      "small"
    ]
  },
  {
    "key": "bayan3",
    "group": "bayans",
    "groupName": "Баяны и гармоники",
    "msId": "accordion",
    "musicXmlId": "keyboard.accordion",
    "family": "accordions",
    "longName": "Баян III",
    "shortName": "Баян III",
    "trackName": "Баян III",
    "staves": 2,
    "clef": "G",
    "clef2": "F",
    "td": 0,
    "tc": 0,
    "minA": 36,
    "maxA": 93,
    "minP": 28,
    "maxP": 97,
    "prog": 21,
    "bank32": 0,
    "bank0": 0,
    "pairGroup": null,
    "presets": [
      "full"
    ]
  },
  {
    "key": "bayan_bass",
    "group": "bayans",
    "groupName": "Баяны и гармоники",
    "msId": "accordion",
    "musicXmlId": "keyboard.accordion",
    "family": "accordions",
    "longName": "Бас-баян (контрабас)",
    "shortName": "Бас-баян",
    "trackName": "Бас-баян",
    "staves": 1,
    "clef": "F",
    "concertClef": "F8vb",
    "transposingClef": "F",
    "td": -7,
    "tc": -12,
    "minA": 28,
    "maxA": 60,
    "minP": 24,
    "maxP": 64,
    "prog": 21,
    "bank32": 0,
    "bank0": 0,
    "pairGroup": null,
    "presets": [
      "full",
      "academic"
    ]
  },
  {
    "key": "garmon",
    "group": "bayans",
    "groupName": "Баяны и гармоники",
    "msId": "bandoneon",
    "musicXmlId": "keyboard.bandoneon",
    "family": "accordions",
    "longName": "Гармоника (хромка)",
    "shortName": "Гарм.",
    "trackName": "Гармоника",
    "staves": 2,
    "clef": "G",
    "clef2": "F",
    "td": 0,
    "tc": 0,
    "minA": 43,
    "maxA": 91,
    "minP": 40,
    "maxP": 93,
    "prog": 23,
    "bank32": 0,
    "bank0": 0,
    "pairGroup": null,
    "presets": [
      "full",
      "academic"
    ]
  },
  {
    "key": "timpani",
    "group": "percussion",
    "groupName": "Ударные инструменты",
    "msId": "timpani",
    "musicXmlId": "drum.timpani",
    "family": "timpani",
    "longName": "Литавры",
    "shortName": "Лит.",
    "trackName": "Литавры",
    "staves": 1,
    "clef": "F",
    "td": 0,
    "tc": 0,
    "minA": 38,
    "maxA": 60,
    "minP": 36,
    "maxP": 62,
    "prog": 47,
    "bank32": 0,
    "bank0": 0,
    "pairGroup": null,
    "presets": [
      "full",
      "academic",
      "concert"
    ]
  },
  {
    "key": "xylophone",
    "group": "percussion",
    "groupName": "Ударные инструменты",
    "msId": "xylophone",
    "musicXmlId": "pitched-percussion.xylophone",
    "family": "keyboard-percussion",
    "longName": "Ксилофон",
    "shortName": "Ксил.",
    "trackName": "Ксилофон",
    "staves": 1,
    "clef": "G",
    "concertClef": "G8va",
    "transposingClef": "G",
    "td": 7,
    "tc": 12,
    "minA": 65,
    "maxA": 96,
    "minP": 60,
    "maxP": 108,
    "prog": 13,
    "bank32": 0,
    "bank0": 0,
    "pairGroup": null,
    "presets": [
      "full",
      "academic",
      "concert"
    ]
  },
  {
    "key": "glockenspiel",
    "group": "percussion",
    "groupName": "Ударные инструменты",
    "msId": "glockenspiel",
    "musicXmlId": "pitched-percussion.glockenspiel",
    "family": "keyboard-percussion",
    "longName": "Колокольчики",
    "shortName": "Колокол.",
    "trackName": "Колокольчики",
    "staves": 1,
    "clef": "G",
    "concertClef": "G15ma",
    "transposingClef": "G",
    "td": 14,
    "tc": 24,
    "minA": 79,
    "maxA": 108,
    "minP": 76,
    "maxP": 108,
    "prog": 9,
    "bank32": 0,
    "bank0": 0,
    "pairGroup": null,
    "presets": [
      "full",
      "academic",
      "concert"
    ]
  },
  {
    "key": "tubular_bells",
    "group": "percussion",
    "groupName": "Ударные инструменты",
    "msId": "tubular-bells",
    "musicXmlId": "pitched-percussion.tubular-bells",
    "family": "pitched-metal-percussion",
    "longName": "Колокола (оркестровые)",
    "shortName": "Колокола",
    "trackName": "Колокола",
    "staves": 1,
    "clef": "G",
    "td": 0,
    "tc": 0,
    "minA": 60,
    "maxA": 79,
    "minP": 53,
    "maxP": 79,
    "prog": 14,
    "bank32": 0,
    "bank0": 0,
    "pairGroup": null,
    "presets": [
      "full",
      "academic"
    ]
  },
  {
    "key": "snare_drum",
    "group": "percussion",
    "groupName": "Ударные инструменты",
    "msId": "snare-drum",
    "musicXmlId": "drum.snare-drum",
    "family": "drums",
    "longName": "Малый барабан",
    "shortName": "М. б-н",
    "trackName": "Малый барабан",
    "staves": 1,
    "clef": "PERC",
    "perc": "snare",
    "prog": 48,
    "bank32": 0,
    "bank0": 1,
    "pairGroup": null,
    "presets": [
      "full",
      "academic",
      "concert",
      "small"
    ]
  },
  {
    "key": "bass_drum",
    "group": "percussion",
    "groupName": "Ударные инструменты",
    "msId": "bass-drum",
    "musicXmlId": "drum.bass-drum",
    "family": "drums",
    "longName": "Большой барабан",
    "shortName": "Б. б-н",
    "trackName": "Большой барабан",
    "staves": 1,
    "clef": "PERC",
    "perc": "bass_drum",
    "prog": 48,
    "bank32": 0,
    "bank0": 1,
    "pairGroup": null,
    "presets": [
      "full",
      "academic",
      "concert"
    ]
  },
  {
    "key": "cymbals",
    "group": "percussion",
    "groupName": "Ударные инструменты",
    "msId": "cymbal",
    "musicXmlId": "metal.cymbal.crash",
    "family": "unpitched-metal-percussion",
    "longName": "Тарелки",
    "shortName": "Тарел.",
    "trackName": "Тарелки",
    "staves": 1,
    "clef": "PERC",
    "perc": "cymbals",
    "prog": 48,
    "bank32": 0,
    "bank0": 1,
    "pairGroup": null,
    "presets": [
      "full",
      "academic",
      "concert"
    ]
  },
  {
    "key": "tam_tam",
    "group": "percussion",
    "groupName": "Ударные инструменты",
    "msId": "tam-tam",
    "musicXmlId": "metal.tamtam",
    "family": "unpitched-metal-percussion",
    "longName": "Там-там",
    "shortName": "Там-там",
    "trackName": "Там-там",
    "staves": 1,
    "clef": "PERC",
    "perc": "tam_tam",
    "prog": 0,
    "bank32": 0,
    "bank0": 1,
    "pairGroup": null,
    "presets": [
      "full"
    ]
  },
  {
    "key": "triangle",
    "group": "percussion",
    "groupName": "Ударные инструменты",
    "msId": "triangle",
    "musicXmlId": "metal.triangle",
    "family": "unpitched-metal-percussion",
    "longName": "Треугольник",
    "shortName": "Треуг.",
    "trackName": "Треугольник",
    "staves": 1,
    "clef": "PERC",
    "perc": "triangle",
    "prog": 48,
    "bank32": 0,
    "bank0": 1,
    "pairGroup": null,
    "presets": [
      "full",
      "academic",
      "concert",
      "small"
    ]
  },
  {
    "key": "tambourine",
    "group": "percussion",
    "groupName": "Ударные инструменты",
    "msId": "tambourine",
    "musicXmlId": "drum.tambourine",
    "family": "drums",
    "longName": "Бубен",
    "shortName": "Бубен",
    "trackName": "Бубен",
    "staves": 1,
    "clef": "PERC",
    "perc": "tambourine",
    "prog": 0,
    "bank32": 0,
    "bank0": 1,
    "pairGroup": null,
    "presets": [
      "full",
      "academic",
      "concert",
      "small"
    ]
  },
  {
    "key": "sleigh_bells",
    "group": "percussion",
    "groupName": "Ударные инструменты",
    "msId": "sleigh-bells",
    "musicXmlId": "metal.bells.sleigh-bells",
    "family": "unpitched-metal-percussion",
    "longName": "Бубенцы",
    "shortName": "Бубенцы",
    "trackName": "Бубенцы",
    "staves": 1,
    "clef": "PERC",
    "perc": "sleigh_bells",
    "prog": 0,
    "bank32": 0,
    "bank0": 1,
    "pairGroup": null,
    "presets": [
      "full",
      "academic",
      "concert"
    ]
  },
  {
    "key": "lozhki",
    "group": "percussion",
    "groupName": "Ударные инструменты",
    "msId": "wood-blocks",
    "musicXmlId": "wood.woodblock",
    "family": "unpitched-wooden-percussion",
    "longName": "Ложки",
    "shortName": "Ложки",
    "trackName": "Ложки",
    "staves": 1,
    "clef": "PERC",
    "perc": "lozhki",
    "prog": 0,
    "bank32": 0,
    "bank0": 1,
    "pairGroup": null,
    "presets": [
      "full",
      "academic",
      "concert",
      "small"
    ]
  },
  {
    "key": "treschotka",
    "group": "percussion",
    "groupName": "Ударные инструменты",
    "msId": "ratchet",
    "musicXmlId": "rattle.ratchet",
    "family": "unpitched-wooden-percussion",
    "longName": "Трещотка",
    "shortName": "Трещ.",
    "trackName": "Трещотка",
    "staves": 1,
    "clef": "PERC",
    "perc": "treschotka",
    "prog": 0,
    "bank32": 0,
    "bank0": 1,
    "pairGroup": null,
    "presets": [
      "full",
      "academic",
      "concert"
    ]
  },
  {
    "key": "wood_blocks",
    "group": "percussion",
    "groupName": "Ударные инструменты",
    "msId": "wood-blocks",
    "musicXmlId": "wood.woodblock",
    "family": "unpitched-wooden-percussion",
    "longName": "Деревянная коробочка",
    "shortName": "Короб.",
    "trackName": "Коробочка",
    "staves": 1,
    "clef": "PERC",
    "perc": "wood_blocks",
    "prog": 0,
    "bank32": 0,
    "bank0": 1,
    "pairGroup": null,
    "presets": [
      "full",
      "academic"
    ]
  },
  {
    "key": "rubel",
    "group": "percussion",
    "groupName": "Ударные инструменты",
    "msId": "guiro",
    "musicXmlId": "wood.guiro",
    "family": "unpitched-wooden-percussion",
    "longName": "Рубель",
    "shortName": "Руб.",
    "trackName": "Рубель",
    "staves": 1,
    "clef": "PERC",
    "perc": "rubel",
    "prog": 0,
    "bank32": 0,
    "bank0": 1,
    "pairGroup": null,
    "presets": [
      "full"
    ]
  },
  {
    "key": "gusli_zvonchatye",
    "group": "gusli",
    "groupName": "Гусли и щипковые",
    "msId": "harp",
    "musicXmlId": "pluck.harp",
    "family": "harps",
    "longName": "Гусли звончатые",
    "shortName": "Гусли зв.",
    "trackName": "Гусли звончатые",
    "staves": 1,
    "clef": "G",
    "td": 0,
    "tc": 0,
    "minA": 55,
    "maxA": 86,
    "minP": 53,
    "maxP": 91,
    "prog": 46,
    "bank32": 0,
    "bank0": 0,
    "pairGroup": null,
    "presets": [
      "full",
      "academic",
      "concert"
    ]
  },
  {
    "key": "gusli_klavishnye",
    "group": "gusli",
    "groupName": "Гусли и щипковые",
    "msId": "harpsichord",
    "musicXmlId": "keyboard.harpsichord",
    "family": "harps",
    "longName": "Гусли клавишные",
    "shortName": "Гусли кл.",
    "trackName": "Гусли клавишные",
    "staves": 2,
    "clef": "G",
    "clef2": "F",
    "td": 0,
    "tc": 0,
    "minA": 36,
    "maxA": 96,
    "minP": 36,
    "maxP": 96,
    "prog": 6,
    "bank32": 0,
    "bank0": 0,
    "pairGroup": null,
    "presets": [
      "full",
      "academic",
      "concert"
    ]
  },
  {
    "key": "gusli_schipkovye",
    "group": "gusli",
    "groupName": "Гусли и щипковые",
    "msId": "harp",
    "musicXmlId": "pluck.harp",
    "family": "harps",
    "longName": "Гусли щипковые",
    "shortName": "Гусли щип.",
    "trackName": "Гусли щипковые",
    "staves": 2,
    "clef": "G",
    "clef2": "F",
    "td": 0,
    "tc": 0,
    "minA": 36,
    "maxA": 96,
    "minP": 24,
    "maxP": 103,
    "prog": 46,
    "bank32": 0,
    "bank0": 0,
    "pairGroup": null,
    "presets": [
      "full",
      "academic"
    ]
  },
  {
    "key": "cimbalom",
    "group": "gusli",
    "groupName": "Гусли и щипковые",
    "msId": "cimbalom",
    "musicXmlId": "pitched-percussion.cimbalom",
    "family": "keyboard-percussion",
    "longName": "Цимбалы",
    "shortName": "Цимб.",
    "trackName": "Цимбалы",
    "staves": 2,
    "clef": "G",
    "clef2": "F",
    "td": 0,
    "tc": 0,
    "minA": 48,
    "maxA": 88,
    "minP": 40,
    "maxP": 93,
    "prog": 15,
    "bank32": 0,
    "bank0": 0,
    "pairGroup": null,
    "presets": [
      "full"
    ]
  },
  {
    "key": "domra_piccolo",
    "group": "domras",
    "groupName": "Группа домр",
    "msId": "mandolin",
    "musicXmlId": "pluck.mandolin",
    "family": "mandolins",
    "longName": "Домра пикколо",
    "shortName": "Домра пик.",
    "trackName": "Домра пикколо",
    "staves": 1,
    "clef": "G",
    "concertClef": "G8va",
    "transposingClef": "G",
    "td": 7,
    "tc": 12,
    "minA": 71,
    "maxA": 98,
    "minP": 71,
    "maxP": 103,
    "strings": [
      71,
      76,
      81
    ],
    "frets": 24,
    "prog": 25,
    "bank32": 16,
    "bank0": 0,
    "pairGroup": null,
    "presets": [
      "full",
      "academic"
    ]
  },
  {
    "key": "domra_prima1",
    "group": "domras",
    "groupName": "Группа домр",
    "msId": "mandolin",
    "musicXmlId": "pluck.mandolin",
    "family": "mandolins",
    "longName": "Домра малая I",
    "shortName": "Домра м. I",
    "trackName": "Домра малая I",
    "staves": 1,
    "clef": "G",
    "td": 0,
    "tc": 0,
    "minA": 64,
    "maxA": 91,
    "minP": 64,
    "maxP": 96,
    "strings": [
      64,
      69,
      74
    ],
    "frets": 24,
    "prog": 25,
    "bank32": 16,
    "bank0": 0,
    "pairGroup": "domra_malaia",
    "systemObjectTop": true,
    "presets": [
      "full",
      "academic",
      "concert",
      "small"
    ]
  },
  {
    "key": "domra_prima2",
    "group": "domras",
    "groupName": "Группа домр",
    "msId": "mandolin",
    "musicXmlId": "pluck.mandolin",
    "family": "mandolins",
    "longName": "Домра малая II",
    "shortName": "Домра м. II",
    "trackName": "Домра малая II",
    "staves": 1,
    "clef": "G",
    "td": 0,
    "tc": 0,
    "minA": 64,
    "maxA": 91,
    "minP": 64,
    "maxP": 96,
    "strings": [
      64,
      69,
      74
    ],
    "frets": 24,
    "prog": 25,
    "bank32": 16,
    "bank0": 0,
    "pairGroup": "domra_malaia",
    "presets": [
      "full",
      "academic",
      "concert",
      "small"
    ]
  },
  {
    "key": "domra_mezzosoprano",
    "group": "domras",
    "groupName": "Группа домр",
    "msId": "mandolin",
    "musicXmlId": "pluck.mandolin",
    "family": "mandolins",
    "longName": "Домра меццо-сопрано",
    "shortName": "Домра м.-с.",
    "trackName": "Домра меццо-сопрано",
    "staves": 1,
    "clef": "G",
    "td": 0,
    "tc": 0,
    "minA": 59,
    "maxA": 86,
    "minP": 59,
    "maxP": 88,
    "strings": [
      59,
      64,
      69
    ],
    "frets": 24,
    "prog": 25,
    "bank32": 16,
    "bank0": 0,
    "pairGroup": null,
    "presets": [
      "full"
    ]
  },
  {
    "key": "domra_alto1",
    "group": "domras",
    "groupName": "Группа домр",
    "msId": "mandolin",
    "musicXmlId": "pluck.mandolin",
    "family": "mandolins",
    "longName": "Домра альтовая I",
    "shortName": "Домра альт. I",
    "trackName": "Домра альтовая I",
    "staves": 1,
    "clef": "G",
    "concertClef": "G8vb",
    "transposingClef": "G",
    "td": -7,
    "tc": -12,
    "minA": 52,
    "maxA": 79,
    "minP": 52,
    "maxP": 84,
    "strings": [
      52,
      57,
      62
    ],
    "frets": 24,
    "prog": 25,
    "bank32": 16,
    "bank0": 0,
    "pairGroup": "domra_alto",
    "presets": [
      "full",
      "academic",
      "concert",
      "small"
    ]
  },
  {
    "key": "domra_alto2",
    "group": "domras",
    "groupName": "Группа домр",
    "msId": "mandolin",
    "musicXmlId": "pluck.mandolin",
    "family": "mandolins",
    "longName": "Домра альтовая II",
    "shortName": "Домра альт. II",
    "trackName": "Домра альтовая II",
    "staves": 1,
    "clef": "G",
    "concertClef": "G8vb",
    "transposingClef": "G",
    "td": -7,
    "tc": -12,
    "minA": 52,
    "maxA": 79,
    "minP": 52,
    "maxP": 84,
    "strings": [
      52,
      57,
      62
    ],
    "frets": 24,
    "prog": 25,
    "bank32": 16,
    "bank0": 0,
    "pairGroup": "domra_alto",
    "presets": [
      "full",
      "academic"
    ]
  },
  {
    "key": "domra_tenor",
    "group": "domras",
    "groupName": "Группа домр",
    "msId": "mandocello",
    "musicXmlId": "pluck.mandocello",
    "family": "mandolins",
    "longName": "Домра теноровая",
    "shortName": "Домра тен.",
    "trackName": "Домра теноровая",
    "staves": 1,
    "clef": "G",
    "concertClef": "G8vb",
    "transposingClef": "G",
    "td": -7,
    "tc": -12,
    "minA": 47,
    "maxA": 74,
    "minP": 47,
    "maxP": 76,
    "strings": [
      47,
      52,
      57
    ],
    "frets": 24,
    "prog": 24,
    "bank32": 0,
    "bank0": 0,
    "pairGroup": null,
    "presets": [
      "full"
    ]
  },
  {
    "key": "domra_bass1",
    "group": "domras",
    "groupName": "Группа домр",
    "msId": "mandocello",
    "musicXmlId": "pluck.mandocello",
    "family": "mandolins",
    "longName": "Домра басовая I",
    "shortName": "Домра бас. I",
    "trackName": "Домра басовая I",
    "staves": 1,
    "clef": "F",
    "td": 0,
    "tc": 0,
    "minA": 40,
    "maxA": 67,
    "minP": 40,
    "maxP": 72,
    "strings": [
      40,
      45,
      50
    ],
    "frets": 20,
    "prog": 24,
    "bank32": 0,
    "bank0": 0,
    "pairGroup": "domra_bass",
    "presets": [
      "full",
      "academic",
      "concert",
      "small"
    ]
  },
  {
    "key": "domra_bass2",
    "group": "domras",
    "groupName": "Группа домр",
    "msId": "mandocello",
    "musicXmlId": "pluck.mandocello",
    "family": "mandolins",
    "longName": "Домра басовая II",
    "shortName": "Домра бас. II",
    "trackName": "Домра басовая II",
    "staves": 1,
    "clef": "F",
    "td": 0,
    "tc": 0,
    "minA": 40,
    "maxA": 67,
    "minP": 40,
    "maxP": 72,
    "strings": [
      40,
      45,
      50
    ],
    "frets": 20,
    "prog": 24,
    "bank32": 0,
    "bank0": 0,
    "pairGroup": "domra_bass",
    "presets": [
      "full",
      "academic"
    ]
  },
  {
    "key": "domra_contrabass",
    "group": "domras",
    "groupName": "Группа домр",
    "msId": "acoustic-bass",
    "musicXmlId": "pluck.bass.acoustic",
    "family": "basses",
    "longName": "Домра контрабасовая",
    "shortName": "Домра к-б.",
    "trackName": "Домра контрабасовая",
    "staves": 1,
    "clef": "F",
    "concertClef": "F8vb",
    "transposingClef": "F",
    "td": -7,
    "tc": -12,
    "minA": 28,
    "maxA": 55,
    "minP": 28,
    "maxP": 60,
    "strings": [
      28,
      33,
      38
    ],
    "frets": 17,
    "prog": 32,
    "bank32": 0,
    "bank0": 0,
    "pairGroup": null,
    "presets": [
      "full"
    ]
  },
  {
    "key": "balalaika_piccolo",
    "group": "balalaikas",
    "groupName": "Группа балалаек",
    "msId": "balalaika-piccolo",
    "musicXmlId": "pluck.balalaika.piccolo",
    "family": "balalaikas",
    "longName": "Балалайка пикколо",
    "shortName": "Бал. пик.",
    "trackName": "Балалайка пикколо",
    "staves": 1,
    "clef": "G",
    "td": 0,
    "tc": 0,
    "minA": 71,
    "maxA": 98,
    "minP": 71,
    "maxP": 98,
    "strings": [
      71,
      76,
      81
    ],
    "frets": 17,
    "prog": 107,
    "bank32": 0,
    "bank0": 0,
    "pairGroup": null,
    "presets": [
      "full"
    ]
  },
  {
    "key": "balalaika_prima1",
    "group": "balalaikas",
    "groupName": "Группа балалаек",
    "msId": "balalaika-prima",
    "musicXmlId": "pluck.balalaika.prima",
    "family": "balalaikas",
    "longName": "Балалайка прима I",
    "shortName": "Бал. пр. I",
    "trackName": "Балалайка прима I",
    "staves": 1,
    "clef": "G",
    "td": 0,
    "tc": 0,
    "minA": 64,
    "maxA": 86,
    "minP": 64,
    "maxP": 91,
    "strings": [
      64,
      64,
      69
    ],
    "frets": 24,
    "prog": 107,
    "bank32": 0,
    "bank0": 0,
    "pairGroup": "bal_prima",
    "presets": [
      "full",
      "academic",
      "concert",
      "small"
    ]
  },
  {
    "key": "balalaika_prima2",
    "group": "balalaikas",
    "groupName": "Группа балалаек",
    "msId": "balalaika-prima",
    "musicXmlId": "pluck.balalaika.prima",
    "family": "balalaikas",
    "longName": "Балалайка прима II",
    "shortName": "Бал. пр. II",
    "trackName": "Балалайка прима II",
    "staves": 1,
    "clef": "G",
    "td": 0,
    "tc": 0,
    "minA": 64,
    "maxA": 86,
    "minP": 64,
    "maxP": 91,
    "strings": [
      64,
      64,
      69
    ],
    "frets": 24,
    "prog": 107,
    "bank32": 0,
    "bank0": 0,
    "pairGroup": "bal_prima",
    "presets": [
      "full",
      "academic"
    ]
  },
  {
    "key": "balalaika_secunda",
    "group": "balalaikas",
    "groupName": "Группа балалаек",
    "msId": "balalaika-secunda",
    "musicXmlId": "pluck.balalaika.secunda",
    "family": "balalaikas",
    "longName": "Балалайка секунда",
    "shortName": "Бал. сек.",
    "trackName": "Балалайка секунда",
    "staves": 1,
    "clef": "G",
    "td": 0,
    "tc": 0,
    "minA": 57,
    "maxA": 79,
    "minP": 57,
    "maxP": 79,
    "strings": [
      57,
      57,
      62
    ],
    "frets": 17,
    "prog": 107,
    "bank32": 0,
    "bank0": 0,
    "pairGroup": null,
    "presets": [
      "full",
      "academic",
      "concert",
      "small"
    ]
  },
  {
    "key": "balalaika_alto",
    "group": "balalaikas",
    "groupName": "Группа балалаек",
    "msId": "balalaika-alto",
    "musicXmlId": "pluck.balalaika.alto",
    "family": "balalaikas",
    "longName": "Балалайка альт",
    "shortName": "Бал. альт",
    "trackName": "Балалайка альт",
    "staves": 1,
    "clef": "G8vb",
    "td": 0,
    "tc": 0,
    "minA": 52,
    "maxA": 74,
    "minP": 52,
    "maxP": 74,
    "strings": [
      52,
      52,
      57
    ],
    "frets": 17,
    "prog": 107,
    "bank32": 0,
    "bank0": 0,
    "pairGroup": null,
    "presets": [
      "full",
      "academic",
      "concert",
      "small"
    ]
  },
  {
    "key": "balalaika_bass",
    "group": "balalaikas",
    "groupName": "Группа балалаек",
    "msId": "balalaika-bass",
    "musicXmlId": "pluck.balalaika.bass",
    "family": "balalaikas",
    "longName": "Балалайка бас",
    "shortName": "Бал. бас",
    "trackName": "Балалайка бас",
    "staves": 1,
    "clef": "F",
    "td": 0,
    "tc": 0,
    "minA": 40,
    "maxA": 67,
    "minP": 40,
    "maxP": 67,
    "strings": [
      40,
      45,
      50
    ],
    "frets": 17,
    "prog": 107,
    "bank32": 0,
    "bank0": 0,
    "pairGroup": null,
    "presets": [
      "full",
      "academic",
      "concert",
      "small"
    ]
  },
  {
    "key": "balalaika_contrabass",
    "group": "balalaikas",
    "groupName": "Группа балалаек",
    "msId": "balalaika-contrabass",
    "musicXmlId": "pluck.balalaika.contrabass",
    "family": "balalaikas",
    "longName": "Балалайка контрабас",
    "shortName": "Бал. к-б.",
    "trackName": "Балалайка контрабас",
    "staves": 1,
    "clef": "F",
    "concertClef": "F8vb",
    "transposingClef": "F",
    "td": -7,
    "tc": -12,
    "minA": 28,
    "maxA": 55,
    "minP": 28,
    "maxP": 55,
    "strings": [
      28,
      33,
      38
    ],
    "frets": 17,
    "prog": 107,
    "bank32": 0,
    "bank0": 0,
    "pairGroup": null,
    "presets": [
      "full",
      "academic",
      "concert",
      "small"
    ]
  }
]
    property var drumsData: {
  "snare": [
    {
      "pitch": 37,
      "head": "cross",
      "line": 0,
      "voice": 0,
      "name": "Удар по ободу (Side Stick)",
      "stem": 1,
      "shortcut": "A",
      "row": 0,
      "col": 1
    },
    {
      "pitch": 38,
      "head": "normal",
      "line": 0,
      "voice": 0,
      "name": "Малый барабан (Snare)",
      "stem": 1,
      "shortcut": "B",
      "row": 0,
      "col": 0
    }
  ],
  "bass_drum": [
    {
      "pitch": 36,
      "head": "normal",
      "line": 0,
      "voice": 0,
      "name": "Большой барабан",
      "stem": 1,
      "shortcut": "A",
      "row": 0,
      "col": 0
    }
  ],
  "cymbals": [
    {
      "pitch": 49,
      "head": "cross",
      "line": 0,
      "voice": 0,
      "name": "Тарелки (a 2 / удар)",
      "stem": 1,
      "shortcut": "A",
      "row": 0,
      "col": 0
    },
    {
      "pitch": 57,
      "head": "normal",
      "line": 0,
      "voice": 0,
      "name": "Подвешенная тарелка",
      "stem": 1,
      "shortcut": "B",
      "row": 0,
      "col": 1
    }
  ],
  "tam_tam": [
    {
      "pitch": 52,
      "head": "normal",
      "line": 0,
      "voice": 0,
      "name": "Там-там",
      "stem": 1,
      "shortcut": "A",
      "row": 0,
      "col": 0
    }
  ],
  "triangle": [
    {
      "pitch": 80,
      "head": "cross",
      "line": 0,
      "voice": 0,
      "name": "Закрытый треугольник",
      "stem": 1,
      "shortcut": "B",
      "row": 0,
      "col": 1
    },
    {
      "pitch": 81,
      "head": "triangle-up",
      "line": 0,
      "voice": 0,
      "name": "Открытый треугольник",
      "stem": 1,
      "shortcut": "A",
      "row": 0,
      "col": 0
    }
  ],
  "tambourine": [
    {
      "pitch": 54,
      "head": "normal",
      "line": 0,
      "voice": 0,
      "name": "Бубен",
      "stem": 1,
      "shortcut": "A",
      "row": 0,
      "col": 0
    }
  ],
  "sleigh_bells": [
    {
      "pitch": 83,
      "head": "normal",
      "line": 0,
      "voice": 0,
      "name": "Бубенцы",
      "stem": 1,
      "shortcut": "A",
      "row": 0,
      "col": 0
    }
  ],
  "lozhki": [
    {
      "pitch": 76,
      "head": "normal",
      "line": 0,
      "voice": 0,
      "name": "Ложки (высокий удар)",
      "stem": 1,
      "shortcut": "A",
      "row": 0,
      "col": 0
    },
    {
      "pitch": 77,
      "head": "cross",
      "line": 0,
      "voice": 0,
      "name": "Ложки (низкий удар)",
      "stem": 1,
      "shortcut": "B",
      "row": 0,
      "col": 1
    }
  ],
  "treschotka": [
    {
      "pitch": 73,
      "head": "normal",
      "line": 0,
      "voice": 0,
      "name": "Трещотка (пластинчатая)",
      "stem": 1,
      "shortcut": "A",
      "row": 0,
      "col": 0
    },
    {
      "pitch": 52,
      "head": "cross",
      "line": 0,
      "voice": 0,
      "name": "Трещотка (резкий удар)",
      "stem": 1,
      "shortcut": "B",
      "row": 0,
      "col": 1
    }
  ],
  "wood_blocks": [
    {
      "pitch": 76,
      "head": "normal",
      "line": 0,
      "voice": 0,
      "name": "Коробочка (высокая)",
      "stem": 1,
      "shortcut": "A",
      "row": 0,
      "col": 0
    },
    {
      "pitch": 77,
      "head": "normal",
      "line": 0,
      "voice": 0,
      "name": "Коробочка (низкая)",
      "stem": 1,
      "shortcut": "B",
      "row": 0,
      "col": 1
    }
  ],
  "rubel": [
    {
      "pitch": 73,
      "head": "normal",
      "line": 0,
      "voice": 0,
      "name": "Рубель (короткий штрих)",
      "stem": 1,
      "shortcut": "A",
      "row": 0,
      "col": 0
    },
    {
      "pitch": 74,
      "head": "cross",
      "line": 0,
      "voice": 0,
      "name": "Рубель (глиссандо)",
      "stem": 1,
      "shortcut": "B",
      "row": 0,
      "col": 1
    }
  ]
}
    property var checkBoxes: ({})
    property var timeSigs: [
        { label: "2/4", n: 2, d: 4 },
        { label: "3/4", n: 3, d: 4 },
        { label: "4/4", n: 4, d: 4 },
        { label: "3/8", n: 3, d: 8 },
        { label: "6/8", n: 6, d: 8 },
        { label: "5/4", n: 5, d: 4 }
    ]
    property var keySigs: [
        { label: "C dur / a moll (0)", val: 0 },
        { label: "G dur / e moll (1 #)", val: 1 },
        { label: "D dur / h moll (2 #)", val: 2 },
        { label: "A dur / fis moll (3 #)", val: 3 },
        { label: "E dur / cis moll (4 #)", val: 4 },
        { label: "H dur / gis moll (5 #)", val: 5 },
        { label: "F dur / d moll (1 b)", val: -1 },
        { label: "B dur / g moll (2 b)", val: -2 },
        { label: "Es dur / c moll (3 b)", val: -3 },
        { label: "As dur / f moll (4 b)", val: -4 },
        { label: "Des dur / b moll (5 b)", val: -5 }
    ]
    property string pendingAction: "save_score"
    property string lastSavedPath: ""

    FileIO {
        id: scoreWriter
        source: ""
    }

    FileIO {
        id: probeFile
        source: ""
    }

    FileDialog {
        id: saveDialog
        type: FileDialog.Save
        title: "Сохранить НОВЫЙ файл партитуры (.mscx) — выберите папку и введите имя"
        onAccepted: {
            var path = saveDialog.filePath
            if (!path) return
            if (path.toLowerCase().indexOf(".mscz") === path.length - 5) {
                path = path.substring(0, path.length - 5) + ".mscx"
            } else if (path.toLowerCase().indexOf(".mscx") !== path.length - 5) {
                path = path + ".mscx"
            }
            writeScoreToPath(path, pendingAction === "save_and_open")
            saveDialog.visible = false
        }
        onRejected: {
            saveDialog.visible = false
        }
        visible: false
    }

    MessageDialog {
        id: infoDialog
        title: "Народный оркестр (ОРНИ)"
        text: ""
        onAccepted: {
            infoDialog.close()
        }
    }

    function xmlEsc(s) {
        if (s === null || s === undefined) return ""
        return String(s)
            .replace(/&/g, "&amp;")
            .replace(/</g, "&lt;")
            .replace(/>/g, "&gt;")
            .replace(/"/g, "&quot;")
    }

    function applyPreset(presetName) {
        for (var i = 0; i < catalogData.length; i++) {
            var inst = catalogData[i]
            var cb = checkBoxes[inst.key]
            if (!cb) continue
            if (presetName === "all") {
                cb.checked = true
            } else if (presetName === "none") {
                cb.checked = false
            } else {
                cb.checked = (inst.presets.indexOf(presetName) !== -1)
            }
        }
        updateCountLabel()
    }

    function toggleGroup(groupId, state) {
        for (var i = 0; i < catalogData.length; i++) {
            var inst = catalogData[i]
            if (inst.group === groupId && checkBoxes[inst.key]) {
                checkBoxes[inst.key].checked = state
            }
        }
        updateCountLabel()
    }

    function getSelectedCount() {
        var c = 0
        var st = 0
        for (var i = 0; i < catalogData.length; i++) {
            var inst = catalogData[i]
            if (checkBoxes[inst.key] && checkBoxes[inst.key].checked) {
                c++
                st += inst.staves
            }
        }
        return { parts: c, staves: st }
    }

    function updateCountLabel() {
        var counts = getSelectedCount()
        statusLabel.text = "Выбрано партий: " + counts.parts + " (нотных станов: " + counts.staves + ")"
    }

    function writtenKey(tc, ckey) {
        if (ckey === 0) return 0
        var offset = 0
        if (tc === -5) offset = 1
        else if (tc === -7) offset = 1
        else if (tc === -2) offset = 2
        var wk = ckey + offset
        while (wk > 7) wk -= 12
        while (wk < -7) wk += 12
        return wk
    }

    function generateMscx() {
        var sel = []
        for (var i = 0; i < catalogData.length; i++) {
            var inst = catalogData[i]
            if (checkBoxes[inst.key] && checkBoxes[inst.key].checked) {
                sel.push(inst)
            }
        }
        if (sel.length === 0) {
            return null
        }

        var pageIdx = pageFormatCombo.currentIndex
        var pw = "11.6929", ph = "16.5354", ppw = "10.5118", spatium = "1.30"
        if (pageIdx === 1) {
            pw = "8.26772"; ph = "11.6929"; ppw = "7.08661"
            spatium = (sel.length > 22) ? "1.20" : "1.40"
        } else if (pageIdx === 2) {
            pw = "16.5354"; ph = "11.6929"; ppw = "15.3543"; spatium = "1.25"
        }

        var titleText = titleField.text ? titleField.text : "Партитура для оркестра русских народных инструментов"
        var subtitleText = subtitleField.text
        var composerText = composerField.text
        var arrangerText = arrangerField.text
        var ts = timeSigs[timeSigCombo.currentIndex]
        var sigN = ts.n
        var sigD = ts.d
        var ckey = keySigs[keySigCombo.currentIndex].val
        var measures = measuresSpin.value
        var concertPitch = concertPitchCheck.checked ? "1" : "0"
        var hideEmpty = hideEmptyCheck.checked ? "1" : "0"

        var staffCounter = 1
        var partEntries = []
        for (i = 0; i < sel.length; i++) {
            var item = sel[i]
            var s1 = staffCounter
            var s2 = staffCounter + item.staves - 1
            staffCounter += item.staves
            partEntries.push({ inst: item, s1: s1, s2: s2 })
        }

        var groupRanges = {}
        for (i = 0; i < partEntries.length; i++) {
            var entry = partEntries[i]
            var g = entry.inst.group
            if (!groupRanges[g]) {
                groupRanges[g] = { firstEntry: entry, lastEntry: entry, totalStaves: 0 }
            }
            groupRanges[g].lastEntry = entry
            groupRanges[g].totalStaves += entry.inst.staves
        }

        var pairStarts = {}
        for (i = 0; i < partEntries.length; i++) {
            entry = partEntries[i]
            var pg = entry.inst.pairGroup
            if (!pg) continue
            var prevPg = (i > 0) ? partEntries[i - 1].inst.pairGroup : null
            if (pg !== prevPg) {
                var cnt = 1
                var j = i + 1
                while (j < partEntries.length && partEntries[j].inst.pairGroup === pg) {
                    cnt++
                    j++
                }
                if (cnt >= 2) {
                    pairStarts[entry.s1] = cnt
                }
            }
        }

        var sysObjStaff = null
        for (i = 0; i < partEntries.length; i++) {
            if (partEntries[i].inst.systemObjectTop) {
                sysObjStaff = partEntries[i].s1
                break
            }
        }
        if (sysObjStaff === null) {
            for (i = 0; i < partEntries.length; i++) {
                if (partEntries[i].inst.group === "domras") {
                    sysObjStaff = partEntries[i].s1
                    break
                }
            }
        }

        var out = []
        out.push('<?xml version="1.0" encoding="UTF-8"?>')
        out.push('<museScore version="4.60">')
        out.push('  <programVersion>4.6.5</programVersion>')
        out.push('  <programRevision></programRevision>')
        out.push('  <Score>')
        out.push('    <LayerTag id="0" tag="default"></LayerTag>')
        out.push('    <currentLayer>0</currentLayer>')
        out.push('    <Division>480</Division>')
        out.push('    <Style>')
        out.push('      <pageWidth>' + pw + '</pageWidth>')
        out.push('      <pageHeight>' + ph + '</pageHeight>')
        out.push('      <pagePrintableWidth>' + ppw + '</pagePrintableWidth>')
        out.push('      <enableVerticalSpread>1</enableVerticalSpread>')
        out.push('      <concertPitch>' + concertPitch + '</concertPitch>')
        out.push('      <hideEmptyStaves>' + hideEmpty + '</hideEmptyStaves>')
        out.push('      <alwaysShowBracketsWhenEmptyStavesAreHidden>1</alwaysShowBracketsWhenEmptyStavesAreHidden>')
        out.push('      <Spatium>' + spatium + '</Spatium>')
        out.push('    </Style>')
        out.push('    <showInvisible>1</showInvisible>')
        out.push('    <showUnprintable>1</showUnprintable>')
        out.push('    <showFrames>1</showFrames>')
        out.push('    <showMargins>0</showMargins>')
        out.push('    <metaTag name="arranger">' + xmlEsc(arrangerText) + '</metaTag>')
        out.push('    <metaTag name="composer">' + xmlEsc(composerText) + '</metaTag>')
        out.push('    <metaTag name="copyright"></metaTag>')
        out.push('    <metaTag name="lyricist"></metaTag>')
        out.push('    <metaTag name="movementNumber"></metaTag>')
        out.push('    <metaTag name="movementTitle"></metaTag>')
        out.push('    <metaTag name="source"></metaTag>')
        out.push('    <metaTag name="translator"></metaTag>')
        out.push('    <metaTag name="workNumber"></metaTag>')
        out.push('    <metaTag name="workTitle">' + xmlEsc(titleText) + '</metaTag>')

        out.push('    <Order id="orni-russian-folk">')
        out.push('      <name>Оркестр русских народных инструментов</name>')
        var seenIds = {}
        for (i = 0; i < partEntries.length; i++) {
            var inst = partEntries[i].inst
            if (!seenIds[inst.msId]) {
                seenIds[inst.msId] = true
                out.push('      <instrument id="' + inst.msId + '">')
                out.push('        <family id="' + inst.family + '">' + inst.family + '</family>')
                out.push('      </instrument>')
            }
        }
        out.push('      <section id="winds"><family>flutes</family><family>oboes</family><family>clarinets</family><family>bassoons</family></section>')
        out.push('      <section id="bayans"><family>accordions</family></section>')
        out.push('      <section id="percussion"><family>timpani</family><family>keyboard-percussion</family><family>pitched-metal-percussion</family><family>drums</family><family>unpitched-metal-percussion</family><family>unpitched-wooden-percussion</family></section>')
        out.push('      <section id="gusli"><family>harps</family><family>keyboards</family></section>')
        out.push('      <section id="domras"><family>mandolins</family><family>basses</family></section>')
        out.push('      <section id="balalaikas"><family>balalaikas</family></section>')
        out.push('      <unsorted/>')
        out.push('    </Order>')

        if (sysObjStaff !== null && sysObjStaff > 1) {
            out.push('    <SystemObjects>')
            out.push('      <Instance staffId="' + sysObjStaff + '" barNumbers="false"/>')
            out.push('    </SystemObjects>')
        }

        var midiPort = 0
        var midiCh = 0

        for (i = 0; i < partEntries.length; i++) {
            entry = partEntries[i]
            inst = entry.inst
            s1 = entry.s1
            s2 = entry.s2
            g = inst.group
            var gr = groupRanges[g]
            var isGroupFirst = (gr.firstEntry === entry)
            var isGroupLast = (gr.lastEntry === entry)

            out.push('    <Part>')
            out.push('      <Staff id="' + s1 + '">')
            if (inst.perc) {
                out.push('        <StaffType group="percussion">')
                out.push('          <name>perc1Line</name>')
                out.push('          <lines>1</lines>')
                out.push('          <keysig>0</keysig>')
                out.push('        </StaffType>')
                out.push('        <defaultClef>PERC</defaultClef>')
            } else {
                out.push('        <StaffType group="pitched">')
                out.push('          <name>stdNormal</name>')
                out.push('        </StaffType>')
                if (inst.clef && inst.clef !== "G") {
                    out.push('        <defaultClef>' + inst.clef + '</defaultClef>')
                }
                if (inst.concertClef && inst.transposingClef) {
                    out.push('        <defaultConcertClef>' + inst.concertClef + '</defaultConcertClef>')
                    out.push('        <defaultTransposingClef>' + inst.transposingClef + '</defaultTransposingClef>')
                }
            }
            if (isGroupFirst && gr.totalStaves >= 2) {
                out.push('        <bracket type="0" span="' + gr.totalStaves + '" col="0"/>')
            }
            if (pairStarts[s1]) {
                out.push('        <bracket type="2" span="' + pairStarts[s1] + '" col="1"/>')
            }
            if (inst.staves === 2) {
                out.push('        <bracket type="1" span="2" col="2"/>')
            }
            if (inst.staves === 2 || !isGroupLast) {
                out.push('        <barLineSpan>1</barLineSpan>')
            }
            out.push('      </Staff>')

            if (inst.staves === 2) {
                out.push('      <Staff id="' + s2 + '">')
                out.push('        <StaffType group="pitched">')
                out.push('          <name>stdNormal</name>')
                out.push('        </StaffType>')
                out.push('        <defaultClef>' + (inst.clef2 ? inst.clef2 : "F") + '</defaultClef>')
                if (!isGroupLast) {
                    out.push('        <barLineSpan>1</barLineSpan>')
                }
                out.push('      </Staff>')
            }

            out.push('      <trackName>' + xmlEsc(inst.trackName) + '</trackName>')
            out.push('      <Instrument id="' + inst.msId + '">')
            out.push('        <longName>' + xmlEsc(inst.longName) + '</longName>')
            out.push('        <shortName>' + xmlEsc(inst.shortName) + '</shortName>')
            out.push('        <trackName>' + xmlEsc(inst.trackName) + '</trackName>')
            if (!inst.perc) {
                out.push('        <minPitchP>' + inst.minP + '</minPitchP>')
                out.push('        <maxPitchP>' + inst.maxP + '</maxPitchP>')
                out.push('        <minPitchA>' + inst.minA + '</minPitchA>')
                out.push('        <maxPitchA>' + inst.maxA + '</maxPitchA>')
            }
            if (inst.td && inst.td !== 0) {
                out.push('        <transposeDiatonic>' + inst.td + '</transposeDiatonic>')
                out.push('        <transposeChromatic>' + inst.tc + '</transposeChromatic>')
            }
            out.push('        <instrumentId>' + inst.musicXmlId + '</instrumentId>')
            if (inst.staves === 2) {
                out.push('        <clef staff="2">' + (inst.clef2 ? inst.clef2 : "F") + '</clef>')
            }
            if (inst.concertClef && inst.transposingClef) {
                out.push('        <concertClef>' + inst.concertClef + '</concertClef>')
                out.push('        <transposingClef>' + inst.transposingClef + '</transposingClef>')
            } else if (inst.perc) {
                out.push('        <clef>PERC</clef>')
            }
            if (inst.strings) {
                out.push('        <StringData>')
                out.push('          <frets>' + (inst.frets ? inst.frets : 20) + '</frets>')
                for (var k = 0; k < inst.strings.length; k++) {
                    out.push('          <string>' + inst.strings[k] + '</string>')
                }
                out.push('        </StringData>')
            }
            if (inst.perc) {
                out.push('        <useDrumset>1</useDrumset>')
                var dlist = drumsData[inst.perc]
                for (var dIdx = 0; dIdx < dlist.length; dIdx++) {
                    var d = dlist[dIdx]
                    out.push('        <Drum pitch="' + d.pitch + '">')
                    out.push('          <head>' + d.head + '</head>')
                    out.push('          <line>' + d.line + '</line>')
                    out.push('          <voice>' + d.voice + '</voice>')
                    out.push('          <name>' + xmlEsc(d.name) + '</name>')
                    out.push('          <stem>' + d.stem + '</stem>')
                    out.push('          <shortcut>' + d.shortcut + '</shortcut>')
                    out.push('          <panelRow>' + d.row + '</panelRow>')
                    out.push('          <panelColumn>' + d.col + '</panelColumn>')
                    out.push('        </Drum>')
                }
            }
            out.push('        <Articulation><velocity>100</velocity><gateTime>100</gateTime></Articulation>')
            out.push('        <Articulation name="staccatissimo"><velocity>100</velocity><gateTime>33</gateTime></Articulation>')
            out.push('        <Articulation name="staccato"><velocity>100</velocity><gateTime>50</gateTime></Articulation>')
            out.push('        <Articulation name="portato"><velocity>100</velocity><gateTime>67</gateTime></Articulation>')
            out.push('        <Articulation name="tenuto"><velocity>100</velocity><gateTime>100</gateTime></Articulation>')
            out.push('        <Articulation name="marcato"><velocity>120</velocity><gateTime>67</gateTime></Articulation>')
            out.push('        <Articulation name="sforzato"><velocity>150</velocity><gateTime>100</gateTime></Articulation>')

            var chPort = 0
            var chNum = 9
            if (!inst.perc) {
                if (midiCh === 9) midiCh++
                if (midiCh > 15) {
                    midiCh = 0
                    midiPort++
                }
                chPort = midiPort
                chNum = midiCh
                midiCh++
            }
            out.push('        <Channel>')
            if (inst.bank0 && inst.bank0 !== 0) {
                out.push('          <controller ctrl="0" value="' + inst.bank0 + '"/>')
            }
            if (inst.bank32 && inst.bank32 !== 0) {
                out.push('          <controller ctrl="32" value="' + inst.bank32 + '"/>')
            }
            out.push('          <program value="' + inst.prog + '"/>')
            out.push('          <synti>Fluid</synti>')
            out.push('          <midiPort>' + chPort + '</midiPort>')
            out.push('          <midiChannel>' + chNum + '</midiChannel>')
            out.push('        </Channel>')
            out.push('      </Instrument>')
            out.push('    </Part>')
        }

        for (i = 0; i < partEntries.length; i++) {
            entry = partEntries[i]
            inst = entry.inst
            var sids = (inst.staves === 1) ? [entry.s1] : [entry.s1, entry.s2]
            for (var si = 0; si < sids.length; si++) {
                var sid = sids[si]
                out.push('    <Staff id="' + sid + '">')
                if (sid === 1) {
                    out.push('      <VBox>')
                    out.push('        <height>12</height>')
                    out.push('        <Text><style>title</style><text>' + xmlEsc(titleText) + '</text></Text>')
                    if (subtitleText) {
                        out.push('        <Text><style>subtitle</style><text>' + xmlEsc(subtitleText) + '</text></Text>')
                    }
                    if (composerText) {
                        out.push('        <Text><style>composer</style><text>' + xmlEsc(composerText) + '</text></Text>')
                    }
                    if (arrangerText) {
                        out.push('        <Text><style>poet</style><text>' + xmlEsc("Инструментовка: " + arrangerText) + '</text></Text>')
                    }
                    out.push('      </VBox>')
                }
                for (var m = 1; m <= measures; m++) {
                    out.push('      <Measure>')
                    out.push('        <voice>')
                    if (m === 1) {
                        if (!inst.perc && ckey !== 0) {
                            var wk = writtenKey(inst.tc ? inst.tc : 0, ckey)
                            out.push('          <KeySig><concertKey>' + ckey + '</concertKey><accidental>' + wk + '</accidental></KeySig>')
                        }
                        out.push('          <TimeSig><sigN>' + sigN + '</sigN><sigD>' + sigD + '</sigD></TimeSig>')
                    }
                    out.push('          <Rest><durationType>measure</durationType><duration>' + sigN + '/' + sigD + '</duration></Rest>')
                    if (m === measures) {
                        out.push('          <BarLine><subtype>end</subtype></BarLine>')
                    }
                    out.push('        </voice>')
                    out.push('      </Measure>')
                }
                out.push('    </Staff>')
            }
        }

        out.push('  </Score>')
        out.push('</museScore>')
        return out.join("\n") + "\n"
    }

    function writeScoreToPath(filePath, openAfter) {
        var xml = generateMscx()
        if (!xml) {
            infoDialog.text = "Выберите хотя бы один инструмент!"
            infoDialog.open()
            return false
        }
        scoreWriter.source = filePath
        var ok = scoreWriter.write(xml)
        if (!ok) {
            infoDialog.text = "Не удалось записать файл по пути:\n" + filePath + "\n\nПопробуйте сохранить через кнопку «Сохранить файл...» и выбрать папку вручную."
            infoDialog.open()
            return false
        }
        lastSavedPath = filePath
        if (openAfter) {
            var url = (filePath.indexOf("/") === 0) ? ("file://" + filePath) : ("file:///" + filePath.replace(/\\/g, "/"))
            Qt.openUrlExternally(url)
            infoDialog.text = "Готово! Файл сохранён и отправлен на открытие в MuseScore:\n" + filePath
        } else {
            infoDialog.text = "Шаблон успешно сохранён:\n" + filePath + "\n\nТеперь его можно выбрать в меню «Файл → Создать → Выбрать шаблон»."
        }
        infoDialog.open()
        return true
    }

    function safeFileName() {
        return (titleField.text ? titleField.text : "ОРНИ_Партитура")
            .replace(/[\\/:*?"<>|]/g, "_")
            .replace(/\s+/g, "_")
    }

    function createAndOpenDirect() {
        var xml = generateMscx()
        if (!xml) {
            infoDialog.text = "Выберите хотя бы один инструмент!"
            infoDialog.open()
            return
        }
        var home = scoreWriter.homePath()
        var safeName = safeFileName()
        var candidates = [
            home + "/Documents/MuseScore4/Scores/" + safeName + ".mscx",
            home + "/OneDrive/Documents/MuseScore4/Scores/" + safeName + ".mscx",
            home + "/Документы/MuseScore4/Scores/" + safeName + ".mscx",
            scoreWriter.tempPath() + "/" + safeName + ".mscx"
        ]
        for (var i = 0; i < candidates.length; i++) {
            scoreWriter.source = candidates[i]
            if (scoreWriter.write(xml)) {
                var p = candidates[i]
                var url = (p.indexOf("/") === 0) ? ("file://" + p) : ("file:///" + p.replace(/\\/g, "/"))
                Qt.openUrlExternally(url)
                infoDialog.text = "Партитура создана и открывается в MuseScore:\n" + p
                infoDialog.open()
                return
            }
        }
        pendingAction = "save_and_open"
        saveDialog.title = "Выберите папку и введите имя нового файла (.mscx)"
        saveDialog.folder = home
        saveDialog.visible = true
    }

    function saveToTemplatesFolder() {
        var home = scoreWriter.homePath()
        var safeName = safeFileName()
        var candidates = [
            home + "/Documents/MuseScore4/Templates/" + safeName + ".mscx",
            home + "/OneDrive/Documents/MuseScore4/Templates/" + safeName + ".mscx",
            home + "/Документы/MuseScore4/Templates/" + safeName + ".mscx",
            home + "/Documents/MuseScore3/Templates/" + safeName + ".mscx"
        ]
        var xml = generateMscx()
        if (!xml) {
            infoDialog.text = "Выберите хотя бы один инструмент!"
            infoDialog.open()
            return
        }
        for (var i = 0; i < candidates.length; i++) {
            scoreWriter.source = candidates[i]
            if (scoreWriter.write(xml)) {
                infoDialog.text = "Шаблон сохранён в папку шаблонов MuseScore:\n" + candidates[i] + "\n\nОткройте «Файл → Создать → Выбрать шаблон» (при необходимости перезапустите MuseScore)."
                infoDialog.open()
                return
            }
        }
        pendingAction = "save_template"
        saveDialog.title = "Укажите папку шаблонов MuseScore (Templates) и введите имя файла (.mscx)"
        saveDialog.folder = home
        saveDialog.visible = true
    }

    onRun: {
        updateCountLabel()
    }

    ColumnLayout {
        anchors.fill: parent
        anchors.margins: 12
        spacing: 8

        Label {
            text: "Генератор партитуры и шаблона: Оркестр русских народных инструментов (ОРНИ)"
            font.bold: true
            font.pixelSize: 15
        }

        // Presets bar
        RowLayout {
            Layout.fillWidth: true
            spacing: 6
            Label { text: "Быстрый выбор состава:"; font.bold: true }
            Button { text: "Все-все инструменты (57)"; onClicked: applyPreset("all") }
            Button { text: "Большой академический"; onClicked: applyPreset("academic") }
            Button { text: "Концертный"; onClicked: applyPreset("concert") }
            Button { text: "Малый учебный"; onClicked: applyPreset("small") }
            Button { text: "Очистить"; onClicked: applyPreset("none") }
        }

        // Metadata & score settings
        GroupBox {
            title: "Параметры партитуры"
            Layout.fillWidth: true
            GridLayout {
                anchors.fill: parent
                columns: 4
                columnSpacing: 10
                rowSpacing: 6

                Label { text: "Название:" }
                TextField {
                    id: titleField
                    Layout.fillWidth: true
                    text: "Оркестр русских народных инструментов"
                }
                Label { text: "Композитор:" }
                TextField {
                    id: composerField
                    Layout.fillWidth: true
                    placeholderText: "И. О. Фамилия"
                }

                Label { text: "Подзаголовок:" }
                TextField {
                    id: subtitleField
                    Layout.fillWidth: true
                    placeholderText: "Полная партитура"
                }
                Label { text: "Инструментовка:" }
                TextField {
                    id: arrangerField
                    Layout.fillWidth: true
                    placeholderText: "И. О. Фамилия"
                }

                Label { text: "Размер / Тактов:" }
                RowLayout {
                    ComboBox {
                        id: timeSigCombo
                        model: ["2/4", "3/4", "4/4", "3/8", "6/8", "5/4"]
                        currentIndex: 2
                    }
                    SpinBox {
                        id: measuresSpin
                        from: 1
                        to: 500
                        value: 32
                    }
                }
                Label { text: "Тональность:" }
                ComboBox {
                    id: keySigCombo
                    Layout.fillWidth: true
                    model: [
                        "C dur / a moll (0)",
                        "G dur / e moll (1 #)",
                        "D dur / h moll (2 #)",
                        "A dur / fis moll (3 #)",
                        "E dur / cis moll (4 #)",
                        "H dur / gis moll (5 #)",
                        "F dur / d moll (1 b)",
                        "B dur / g moll (2 b)",
                        "Es dur / c moll (3 b)",
                        "As dur / f moll (4 b)",
                        "Des dur / b moll (5 b)"
                    ]
                    currentIndex: 0
                }

                Label { text: "Страница:" }
                ComboBox {
                    id: pageFormatCombo
                    Layout.fillWidth: true
                    model: ["A3 книжный (полная партитура)", "A4 книжный (компактная)", "A3 альбомный"]
                    currentIndex: 0
                }
                CheckBox {
                    id: concertPitchCheck
                    text: "Партитура в строе C"
                    checked: false
                }
                CheckBox {
                    id: hideEmptyCheck
                    text: "Скрывать пустые станы"
                    checked: false
                }
            }
        }

        // Instruments selection scroll area
        ScrollView {
            id: instrumentsScroll
            Layout.fillWidth: true
            Layout.fillHeight: true
            clip: true

            ColumnLayout {
                width: instrumentsScroll.availableWidth - 16
                spacing: 8

                Repeater {
                    model: [
                        { id: "winds", title: "1. Деревянные и народные духовые" },
                        { id: "bayans", title: "2. Баяны и гармоники" },
                        { id: "percussion", title: "3. Ударные (симфонические и народные)" },
                        { id: "gusli", title: "4. Гусли и цитровые" },
                        { id: "domras", title: "5. Группа домр (трёхструнные)" },
                        { id: "balalaikas", title: "6. Группа балалаек" }
                    ]
                    delegate: GroupBox {
                        Layout.fillWidth: true
                        title: modelData.title
                        property string grpId: modelData.id

                        ColumnLayout {
                            anchors.fill: parent
                            spacing: 4

                            RowLayout {
                                Button {
                                    text: "Выбрать группу"
                                    onClicked: toggleGroup(grpId, true)
                                }
                                Button {
                                    text: "Снять группу"
                                    onClicked: toggleGroup(grpId, false)
                                }
                            }

                            GridLayout {
                                Layout.fillWidth: true
                                columns: 3
                                columnSpacing: 12
                                rowSpacing: 2

                                Repeater {
                                    model: {
                                        var arr = []
                                        for (var idx = 0; idx < catalogData.length; idx++) {
                                            if (catalogData[idx].group === grpId) {
                                                arr.push(catalogData[idx])
                                            }
                                        }
                                        return arr
                                    }
                                    delegate: CheckBox {
                                        text: modelData.longName + (modelData.staves === 2 ? " (2 стана)" : "")
                                        checked: true
                                        Component.onCompleted: {
                                            checkBoxes[modelData.key] = this
                                            updateCountLabel()
                                        }
                                        onToggled: updateCountLabel()
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }

        // Footer actions
        RowLayout {
            Layout.fillWidth: true
            spacing: 8

            Label {
                id: statusLabel
                Layout.fillWidth: true
                font.bold: true
                text: ""
            }

            Button {
                text: "Сохранить в «Мои шаблоны»"
                onClicked: saveToTemplatesFolder()
            }

            Button {
                text: "Сохранить как (.mscx)..."
                onClicked: {
                    pendingAction = "save_and_open"
                    saveDialog.title = "Сохранить НОВЫЙ файл партитуры — выберите папку и введите имя (.mscx)"
                    saveDialog.folder = scoreWriter.homePath()
                    saveDialog.visible = true
                }
            }

            Button {
                text: "Создать и открыть сразу"
                onClicked: createAndOpenDirect()
            }

            Button {
                text: "Закрыть"
                onClicked: quit()
            }
        }
    }
}
