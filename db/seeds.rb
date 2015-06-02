User.create!([
  {name: "Emilie", email: "emiliecorpuz@gmail.com", password: "password"}
])

Board.create!([
  {title:"Pedal Board", audio: nil, instrument: "guitar", user_id: 1}
])

Pedal.create!([
  {name: "Micro POG", brand: "Electro-Harmonix", effect: "Pitch",board_id: 1},
  {name: "Freeze", brand: "Electro-Harmonix", effect: "Looper",board_id: 1},
  {name: "Flashback X4 Delay", brand: "TC Electronic", effect: "Delay/Looper", board_id: 1},
  {name: "NDR-1 Nova Drive", brand: "TC Electronic", effect: "Overdrive", board_id: 1},
  {name: "Slicer", brand: "Boss",effect: "Delay", board_id: 1},
  {name: "Verbzilla", brand: "Line 6",effect: "Reverb", board_id: 1},
  {name: "NS-2 Noise Suppressor", brand: "Boss",effect: "Noise Suppressor", board_id: 1},
  {name: "DL-4", brand: "Line 6", effect: "Delay/Looper", board_id: 1}
])

Knob.create!([
  {name: "Dry", value: "5", pedal_id: 1},
  {name: "Sub Octave", value: "8", pedal_id: 1},
  {name: "Octave Up", value: "4", pedal_id: 1},
  {name: "Effect Level", value: "6", pedal_id: 2},
  {name: "Delays", value:"Ping-Pong", pedal_id: 3},
  {name: "Delay Time", value:"4", pedal_id: 3},
  {name: "Feedback", value:"5", pedal_id: 3},
  {name: "Delay Level", value:"10", pedal_id: 3},
  {name: "Looper Level", value:"9", pedal_id: 3},
  {name: "Overdrive", value:"2", pedal_id: 4},
  {name: "Overdrive Level", value:"6", pedal_id: 4},
  {name: "Distortion", value:"10", pedal_id: 4},
  {name: "Distortion Level", value:"10", pedal_id: 4},
  {name: "Tone", value:"9", pedal_id: 4},
  {name: "Mix", value:"8", pedal_id: 4},
  {name: "Bass", value:"5", pedal_id: 4},
  {name: "Treble", value:"6", pedal_id: 4},
  {name: "Preset", value:"1", pedal_id: 4},
  {name: "Effect Level", value:"6", pedal_id: 5},
  {name: "Direct Level", value:"9", pedal_id: 5},
  {name: "Bank", value:"1", pedal_id: 5},
  {name: "Attack", value:"10", pedal_id: 5},
  {name: "Duty", value:"3", pedal_id: 5},
  {name: "Mix", value:"6", pedal_id: 6},
  {name: "Decay", value:"6", pedal_id: 6},
  {name: "Time", value:"6", pedal_id: 6},
  {name: "Tone", value:"6", pedal_id: 6},
  {name: "Setting", value:"Spring", pedal_id: 6},
  {name: "Threshold", value:"8", pedal_id: 7},
  {name: "Decay", value:"10", pedal_id: 7},
  {name: "Mode", value:"Reduction", pedal_id: 7},
  {name: "Setting", value:"Analog Echo", pedal_id: 8},
  {name: "Delay Time", value:"3", pedal_id: 8},
  {name: "Repeats", value:"5", pedal_id: 8},
  {name: "Tweak", value:"6", pedal_id: 8},
  {name: "Tweez", value:"6", pedal_id: 8},
  {name: "Mix", value:"9", pedal_id: 8}

])