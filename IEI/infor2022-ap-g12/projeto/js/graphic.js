function draw() {
    $("#myGraph").highcharts({
    chart: { type: "line" },
    title: { text: "Rating of Chess Engines" },
    xAxis: { categories: ["Deep Blue","Rybka", "HIARCS",
    "Shredder", "Houdini", "AlphaZero", "Komodo", "Leela Chess Zero", "Stockfish"]
    },
    series:[
    { name: "Chess Engines",
    data: [2853, 3202, 3211, 3358, 3433, 3460, 3482, 3496, 3529]
    },
    ]
    });
    }
    
    