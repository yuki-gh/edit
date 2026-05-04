#Requires -Version 5.1

$here = Split-Path -Parent $MyInvocation.MyCommand.Path
Set-Location $here
chcp 65001

if ($args.Count -eq 0) {
	Get-ChildItem "assets/highlighting-tests/*" -File | ForEach-Object {
		cargo run -p lsh-bin -- render --input "$($_.FullName)" crates/lsh/definitions 2>$null | more
		pause
	}
	exit
}

switch ($args[0]) {
	"el" {
		$emacs_dir = "C:\cygwin64\usr\share\emacs"
		$emacs_dir = "C:\msys64\usr\share\emacs"
		Get-ChildItem $emacs_dir -Recurse -Filter *.el |
			Sort-Object FullName |
			Select-Object -First 10 | ForEach-Object {
				cargo run -p lsh-bin -- render --input "$($_.FullName)" crates/lsh/definitions 2>$null | more
				pause
			}
	}

	"bas" {
		Get-ChildItem "../basic-computer-games" -Recurse -Filter *.bas |
			Sort-Object FullName |
			Select-Object -First 10 | ForEach-Object {
				cargo run -p lsh-bin -- render --input "$($_.FullName)" crates/lsh/definitions 2>$null | more
				pause
			}
	}

	"sln" {
		Get-ChildItem ".." -Recurse -Filter *.sln |
			Sort-Object FullName |
			Select-Object -First 10 | ForEach-Object {
				cargo run -p lsh-bin -- render --input "$($_.FullName)" crates/lsh/definitions 2>$null | more
				pause
			}
	}

	"bat" {
		Get-ChildItem ".." -Recurse -Include *.bat |
			Where-Object { $_.FullName -notmatch "highlighting-tests" } |
			Select-Object -First 10 | ForEach-Object {
				cargo run -p lsh-bin -- render --input "$($_.FullName)" crates/lsh/definitions 2>$null | more
				pause
			}
	}

	"cs" {
		Get-ChildItem ".." -Recurse -Include *.cs |
			Where-Object { $_.FullName -notmatch "highlighting-tests" } |
			Sort-Object FullName |
			Select-Object -First 10 | ForEach-Object {
				cargo run -p lsh-bin -- render --input "$($_.FullName)" crates/lsh/definitions 2>$null | more
				pause
			}
	}

	"cpp" {
		Get-ChildItem ".." -Recurse -Include *.cpp, *.hpp |  ForEach-Object {
			cargo run -p lsh-bin -- render --input "$($_.FullName)" crates/lsh/definitions 2>$null | more
			pause
		}
	}

	"c" {
		Get-ChildItem ".." -Recurse -Include *.c, *.h | ForEach-Object {
			cargo run -p lsh-bin -- render --input "$($_.FullName)" crates/lsh/definitions 2>$null | more
			pause
		}
	}

	"rs" {
		Get-ChildItem "." -Recurse -Include *.rs |
			Where-Object { $_.FullName -notmatch "highlighting-tests" } |
			Sort-Object FullName |
			Select-Object -First 10 | ForEach-Object {
				cargo run -p lsh-bin -- render --input "$($_.FullName)" crates/lsh/definitions 2>$null | more
				pause
			}
	}

	{ $_ -in @("Dockerfile","dockerfile") } {
		Get-ChildItem "../dockerfile-examples" -Recurse -Filter Dockerfile |
			Sort-Object FullName | ForEach-Object {
				cargo run -p lsh-bin -- render --input "$($_.FullName)" crates/lsh/definitions 2>$null | more
				pause
			}
	}

	"properties" {
		Get-ChildItem "../JMeter-unofficial-ja" -Recurse -Filter *.properties |
			Sort-Object FullName |
			Select-Object -First 10 | ForEach-Object {
				cargo run -p lsh-bin -- render --input "$($_.FullName)" crates/lsh/definitions 2>$null | more
				pause
			}
	}

	"po" {
		Get-ChildItem ".." -Recurse -Filter *.po | ForEach-Object {
			cargo run -p lsh-bin -- render --input "$($_.FullName)" crates/lsh/definitions 2>$null | more
			pause
		}
	}

	{ $_ -in @("config","conf") } {
		Get-ChildItem ".." -Recurse -Include *config, *.ini |
			Where-Object { $_.FullName -notmatch "highlighting-tests" } | ForEach-Object {
				cargo run -p lsh-bin -- render --input "$($_.FullName)" crates/lsh/definitions 2>$null | more
				pause
			}
	}

	"toml" {
		Get-ChildItem "." -Recurse -Filter *.toml |
			Sort-Object FullName | ForEach-Object {
				cargo run -p lsh-bin -- render --input "$($_.FullName)" crates/lsh/definitions 2>$null | more
				pause
			}
	}

	"xml" {
		Get-ChildItem ".." -Recurse -Include *.jmx, *.xml |
			Where-Object { $_.FullName -notmatch "highlighting-tests" } |
			Select-Object -First 10 |  ForEach-Object {
				cargo run -p lsh-bin -- render --input "$($_.FullName)" crates/lsh/definitions 2>$null | more
				pause
			}
	}

	"html" {
		Get-ChildItem ".." -Recurse -Include *.html, *.htm |
			Where-Object { $_.FullName -notmatch "highlighting-tests" } |
			Select-Object -First 10 |  ForEach-Object {
				cargo run -p lsh-bin -- render --input "$($_.FullName)" crates/lsh/definitions 2>$null | more
				pause
			}
	}

	{ $_ -in @("csproj","vbproj") } {
		Get-ChildItem ".." -Recurse -Include *.vbproj, *.csproj |
			Where-Object { $_.FullName -notmatch "highlighting-tests" } |
			Select-Object -First 10 |  ForEach-Object {
				cargo run -p lsh-bin -- render --input "$($_.FullName)" crates/lsh/definitions 2>$null | more
				pause
			}
	}

	{ $_ -in @("rb","ruby") } {
		Get-ChildItem ".." -Recurse -Filter *.rb |
			Sort-Object FullName | ForEach-Object {
			Select-Object -First 10 |
				cargo run -p lsh-bin -- render --input "$($_.FullName)" crates/lsh/definitions 2>$null | more
				pause
			}
	}

	"sh" {
		Get-ChildItem ".." -Recurse -Filter *.sh |
			Where-Object { $_.FullName -notmatch "highlighting-tests" } |
			Sort-Object FullName | ForEach-Object {
			Select-Object -First 10 |
				cargo run -p lsh-bin -- render --input "$($_.FullName)" crates/lsh/definitions 2>$null | more
				pause
			}
	}

	"md" {
		Get-ChildItem ".." -Recurse -Filter *.md |
			Where-Object { $_.FullName -notmatch "highlighting-tests" } | ForEach-Object {
				cargo run -p lsh-bin -- render --input "$($_.FullName)" crates/lsh/definitions 2>$null | more
				pause
			}
	}

	{ $_ -in @("yaml","yml") } {
		Get-ChildItem ".." -Recurse -Include *.yaml, *.yml |
			Where-Object { $_.FullName -notmatch "highlighting-tests" } | ForEach-Object {
				cargo run -p lsh-bin -- render --input "$($_.FullName)" crates/lsh/definitions 2>$null | more
				pause
			}
	}

	"json" {
		Get-ChildItem ".." -Recurse -Filter *.json |
			Where-Object { $_.FullName -notmatch "highlighting-tests" } |
			Select-Object -First 10 | ForEach-Object {
				cargo run -p lsh-bin -- render --input "$($_.FullName)" crates/lsh/definitions 2>$null | more
				pause
			}
	}

	{ $_ -in @("py","python") } {
		Get-ChildItem ".." -Recurse -Filter *.py |
			Where-Object { $_.FullName -notmatch "highlighting-tests" } | ForEach-Object {
				cargo run -p lsh-bin -- render --input "$($_.FullName)" crates/lsh/definitions 2>$null | more
				pause
			}
	}

	{ $_ -in @("js","javascript") } {
		Get-ChildItem ".." -Recurse -Include *.js, *.jsx |
			Where-Object { $_.FullName -notmatch "highlighting-tests" } | ForEach-Object {
				cargo run -p lsh-bin -- render --input "$($_.FullName)" crates/lsh/definitions 2>$null | more
				pause
			}
	}

	{ $_ -in @("ignore","gitignore") } {
		Get-ChildItem ".." -Recurse -Filter .gitignore |
			Where-Object { $_.FullName -notmatch "highlighting-tests" } | ForEach-Object {
				cargo run -p lsh-bin -- render --input "$($_.FullName)" crates/lsh/definitions 2>$null | more
				pause
			}
	}

	"lsh" {
		Get-ChildItem "crates/lsh/definitions/*.lsh" | ForEach-Object {
			cargo run -p lsh-bin -- render --input "$($_.FullName)" crates/lsh/definitions 2>$null | more
			pause
		}
	}
}
