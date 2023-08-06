# u.nu / utils.nu
# Should be imported before use.

# Load Rime user dir configuration from local file.
export-env {
  load-env (
    open -r rime_user_dir | str trim | {
      RIME_USER_DIR: ($in | path expand)
    }
  )
}

export def main [] {
  # default function.
}

# Git add, commit.
export def gac [
  --message (-m): string
] {
  git diff
  input -s "Press enter to continue, C-c to interrupt"
  git add .
  match ($message | describe) {
    'string' => {git commit -m $message}
    _ => {git commit}
  }
}
export alias g = gac

export def build [] {
  
}
export alias b = build

# move to Rime user dir.
export def move [] {
  # use std assert
  let pwd = pwd
  let file = 'toned_zhupin.schema.yaml'
  cd $env.RIME_USER_DIR
  try {
    # assert (($file + '.bak') | path exists | not $in)
    # Without `-f`, `mv` won't overwrite. `cp` will.
    mv -v $file ($file + '.bak')
  } catch {
    match (input "bak file exists. Overwrite? (y/N) ") {
      'y' => {mv -vf $file ($file + '.bak')}
      _ => {error make {msg: "Aborted due to existing bak file"}}
    }
  }
  cp -v ($pwd | path join $file) .
}
export alias m = move
