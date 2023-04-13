device_rules = {
  matches = {
    {
      { "device.description", "equals", "Starship/Matisse HD Audio Controller" },
    },
  },
  apply_properties = {
    ["api.alsa.ignore-dB"] = true,
    ["api.alsa.use-ucm"] = false,
    ["api.alsa.soft-mixer"] = false,
    ["api.alsa.headroom"] = 0,
    ["api.alsa.disable-batch"] = true,
    ["api.alsa.multi-rate"] = true,
  },
}

table.insert(alsa_monitor.rules, device_rules)

sink_rules = {
  matches = {
    {
      { "node.description", "equals", "Starship/Matisse HD Audio Controller Analog Stereo" },
    },
  },
  apply_properties = {
    ["node.pause-on-idle"] = true,
    ["session.suspend-timeout-seconds"] = 1
  },
}

table.insert(alsa_monitor.rules, sink_rules)
