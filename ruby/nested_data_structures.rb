saint_paul_chamber_orchestra = {
    musicians: {
        violin: [
            "Steven Copes",
            "Ruggero Allifranchini",
            "Kyu-Young Kim",
            "Daria Adams",
            "Sunmi Chang",
            "Nina Tso-Ning Fan",
            "Elsa Nilsson",
            "Sarah Grimes",
            "Kayla Moffett",
            "Maureen Nelson"
        ],

        viola: [
            "Maiya Papach",
            "Hyobi Sim",
            "Shuangshuang Liu",
            "Sifei Cheng"
        ],

        cello: [
            "Julie Albers",
            "Joshua Koestenbaum",
            "Sarah Lewis"
        ],

        bass: [
            "Zachary Cohen"
        ],

        flute: [
            "Julia Bogorad-Kogan",
            "Alicia McQuerrey"
        ],

        oboe: [
            "Kathryn Greenbank",
            "Barbara Bishop"
        ],

        clarinet: [
            "Jonathan Cohen"
        ],

        bassoon: [
            "Charles Ullery",
            "Carole Mason Smith"
        ],

        trumpet: [
            "Lynn Erickson"
        ],

        percussion: [
            "Michael Israelievitch"
        ]
    }
}

p saint_paul_chamber_orchestra[:musicians][:violin][5]

p saint_paul_chamber_orchestra[:musicians][:bass][0]

p saint_paul_chamber_orchestra[:musicians][:bass]

p saint_paul_chamber_orchestra[:musicians][:trumpet]

p saint_paul_chamber_orchestra[:musicians].has_value?(["Michael Israelievitch"])

