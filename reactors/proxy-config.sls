highstate_run:
  cmd.state.sls:
    - tgt: proxy
    - kwarg:
        mods: proxy.add