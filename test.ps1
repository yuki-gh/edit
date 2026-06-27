#Requires -Version 5.1

$here = Split-Path -Parent $MyInvocation.MyCommand.Path
Set-Location $here
chcp 65001

$lsh_bin = "cargo"
$lsh_args = @("run", "-p", "lsh-bin", "--")
#$lsh_bin = "target\debug\lsh-bin.exe"
#$lsh_args = @()

if ($args.Count -eq 0) {
	Get-ChildItem "assets/highlighting-tests/*" -File | ForEach-Object {
		& $lsh_bin @lsh_args render --input "$($_.FullName)" crates/lsh/definitions 2>$null | more
		pause
	}
	exit
}

if (Test-Path $args[0]) {
 	& $lsh_bin @lsh_args render --input $args[0] crates/lsh/definitions
	exit
}

switch ($args[0]) {
	"hs" {
		Get-ChildItem "../Functional-Programming", "../haskell_book", "../hid-examples", "../wiwinwlh" -Recurse -Include *.hs  |
		Sort-Object FullName |
			Select-Object -First 10 | ForEach-Object {
				& $lsh_bin @lsh_args render --input "$($_.FullName)" crates/lsh/definitions 2>$null | more
				pause
			}
	}

	"scm" {
		Get-ChildItem "..\Gauche-gl-examples", "..\s7" -Recurse -Include *.scm  |
		Sort-Object FullName |
			Select-Object -First 10 | ForEach-Object {
				& $lsh_bin @lsh_args render --input "$($_.FullName)" crates/lsh/definitions 2>$null | more
				pause
			}
	}

	"gradle" {
		Get-ChildItem "..\*gradle*" -Recurse -Include build.gradle  |
		Sort-Object FullName |
			Select-Object -First 10 | ForEach-Object {
				& $lsh_bin @lsh_args render --input "$($_.FullName)" crates/lsh/definitions 2>$null | more
				pause
			}
	}

	"awk" {
		Get-ChildItem "..\awklibs", "..\machine-learning-examples" -Recurse -Include *.awk  |
		Sort-Object FullName |
			Select-Object -First 10 | ForEach-Object {
				& $lsh_bin @lsh_args render --input "$($_.FullName)" crates/lsh/definitions 2>$null | more
				pause
			}
	}

	"unity" {
		Get-ChildItem "..\arfoundation-samples\Assets" -Recurse -Include *.unity, *.prefab, *.asset  |
		Sort-Object FullName |
			Select-Object -First 10 | ForEach-Object {
				& $lsh_bin @lsh_args render --input "$($_.FullName)" crates/lsh/definitions 2>$null | more
				pause
			}
	}

	"proto" {
		Get-ChildItem "..\protobuf" -Recurse -Filter *.proto |
		Sort-Object FullName |
			Select-Object -First 10 | ForEach-Object {
				& $lsh_bin @lsh_args render --input "$($_.FullName)" crates/lsh/definitions 2>$null | more
				pause
			}
	}

	"css" {
		Get-ChildItem "../basic-computer-games" -Recurse -Filter *.css |
		Sort-Object FullName |
			Select-Object -First 10 | ForEach-Object {
				& $lsh_bin @lsh_args render --input "$($_.FullName)" crates/lsh/definitions 2>$null | more
				pause
			}
	}

	"shader" {
		Get-ChildItem "../arfoundation-samples/Assets" -Recurse -Filter *.shader |
		Sort-Object FullName |
			Select-Object -First 10 | ForEach-Object {
				& $lsh_bin @lsh_args render --input "$($_.FullName)" crates/lsh/definitions 2>$null | more
				pause
			}
	}

	"hlsl" {
		Get-ChildItem "../arfoundation-samples/Assets" -Recurse -Include *.hlsl, *.cginc | ForEach-Object {
			& $lsh_bin @lsh_args render --input "$($_.FullName)" crates/lsh/definitions 2>$null | more
			pause
		}
	}

	"sql" {
		Get-ChildItem "../sql-server-samples/samples" -Recurse -Filter *.sql |
		Sort-Object FullName |
		Select-Object -First 10 | ForEach-Object {
			& $lsh_bin @lsh_args render --input "$($_.FullName)" crates/lsh/definitions 2>$null | more
			pause
		}
	}

	"el" {
		$emacs_dir = "C:\cygwin64\usr\share\emacs"
		$emacs_dir = "C:\msys64\usr\share\emacs"
		Get-ChildItem $emacs_dir -Recurse -Filter *.el |
		Sort-Object FullName |
		Select-Object -First 10 | ForEach-Object {
			& $lsh_bin @lsh_args render --input "$($_.FullName)" crates/lsh/definitions 2>$null | more
			pause
		}
	}

	"bas" {
		Get-ChildItem "../basic-computer-games" -Recurse -Filter *.bas |
		Sort-Object FullName |
		Select-Object -First 10 | ForEach-Object {
			& $lsh_bin @lsh_args render --input "$($_.FullName)" crates/lsh/definitions 2>$null | more
			pause
		}
	}

	"sln" {
		Get-ChildItem ".." -Recurse -Filter *.sln |
		Sort-Object FullName |
		Select-Object -First 10 | ForEach-Object {
			& $lsh_bin @lsh_args render --input "$($_.FullName)" crates/lsh/definitions 2>$null | more
			pause
		}
	}

	"bat" {
		Get-ChildItem "..\protobuf", "..\*gradle*" -Recurse -Include *.bat |
		Where-Object { $_.FullName -notmatch "highlighting-tests" } |
		Select-Object -First 10 | ForEach-Object {
			& $lsh_bin @lsh_args render --input "$($_.FullName)" crates/lsh/definitions 2>$null | more
			pause
		}
	}

	"cs" {
		Get-ChildItem ".." -Recurse -Include *.cs |
			Where-Object { $_.FullName -notmatch "highlighting-tests" } |
			Sort-Object FullName |
			Select-Object -First 10 | ForEach-Object {
				& $lsh_bin @lsh_args render --input "$($_.FullName)" crates/lsh/definitions 2>$null | more
				pause
			}
	}

	"cpp" {
		Get-ChildItem ".." -Recurse -Include *.cpp, *.hpp |  ForEach-Object {
			& $lsh_bin @lsh_args render --input "$($_.FullName)" crates/lsh/definitions 2>$null | more
			pause
		}
	}

	"c" {
		Get-ChildItem ".." -Recurse -Include *.c, *.h | ForEach-Object {
			& $lsh_bin @lsh_args render --input "$($_.FullName)" crates/lsh/definitions 2>$null | more
			pause
		}
	}

	"rs" {
		Get-ChildItem "." -Recurse -Include *.rs |
			Where-Object { $_.FullName -notmatch "highlighting-tests" } |
			Sort-Object FullName |
			Select-Object -First 10 | ForEach-Object {
				& $lsh_bin @lsh_args render --input "$($_.FullName)" crates/lsh/definitions 2>$null | more
				pause
			}
	}

	{ $_ -in @("Makefile","makefile") } {
		Get-ChildItem ".." -Recurse -Filter Makefile |
			Sort-Object FullName | ForEach-Object {
				& $lsh_bin @lsh_args render --input "$($_.FullName)" crates/lsh/definitions 2>$null | more
				pause
			}
	}

	{ $_ -in @("Dockerfile","dockerfile") } {
		Get-ChildItem "../dockerfile-examples" -Recurse -Filter Dockerfile |
			Sort-Object FullName | ForEach-Object {
				& $lsh_bin @lsh_args render --input "$($_.FullName)" crates/lsh/definitions 2>$null | more
				pause
			}
	}

	"properties" {
		Get-ChildItem "../JMeter-unofficial-ja" -Recurse -Filter *.properties |
			Sort-Object FullName |
			Select-Object -First 10 | ForEach-Object {
				& $lsh_bin @lsh_args render --input "$($_.FullName)" crates/lsh/definitions 2>$null | more
				pause
			}
	}

	"po" {
		Get-ChildItem ".." -Recurse -Filter *.po | ForEach-Object {
			& $lsh_bin @lsh_args render --input "$($_.FullName)" crates/lsh/definitions 2>$null | more
			pause
		}
	}

	{ $_ -in @("config","conf") } {
		Get-ChildItem ".." -Recurse -Include *config, *.ini |
			Where-Object { $_.FullName -notmatch "highlighting-tests" } | ForEach-Object {
				& $lsh_bin @lsh_args render --input "$($_.FullName)" crates/lsh/definitions 2>$null | more
				pause
			}
	}

	"toml" {
		Get-ChildItem "." -Recurse -Filter *.toml |
			Sort-Object FullName | ForEach-Object {
				& $lsh_bin @lsh_args render --input "$($_.FullName)" crates/lsh/definitions 2>$null | more
				pause
			}
	}

	"xml" {
		Get-ChildItem ".." -Recurse -Include *.jmx, *.xml |
			Where-Object { $_.FullName -notmatch "highlighting-tests" } |
			Select-Object -First 10 |  ForEach-Object {
				& $lsh_bin @lsh_args render --input "$($_.FullName)" crates/lsh/definitions 2>$null | more
				pause
			}
	}

	"html" {
		Get-ChildItem ".." -Recurse -Include *.html, *.htm |
			Where-Object { $_.FullName -notmatch "highlighting-tests" } |
			Select-Object -First 10 |  ForEach-Object {
				& $lsh_bin @lsh_args render --input "$($_.FullName)" crates/lsh/definitions 2>$null | more
				pause
			}
	}

	{ $_ -in @("csproj","vbproj") } {
		Get-ChildItem ".." -Recurse -Include *.vbproj, *.csproj |
			Where-Object { $_.FullName -notmatch "highlighting-tests" } |
			Select-Object -First 10 |  ForEach-Object {
				& $lsh_bin @lsh_args render --input "$($_.FullName)" crates/lsh/definitions 2>$null | more
				pause
			}
	}

	{ $_ -in @("rb","ruby") } {
		Get-ChildItem ".." -Recurse -Filter *.rb |
			Sort-Object FullName | ForEach-Object {
			Select-Object -First 10 |
				& $lsh_bin @lsh_args render --input "$($_.FullName)" crates/lsh/definitions 2>$null | more
				pause
			}
	}

	"sh" {
		Get-ChildItem ".." -Recurse -Filter *.sh |
			Where-Object { $_.FullName -notmatch "highlighting-tests" } |
			Sort-Object FullName | ForEach-Object {
			Select-Object -First 10 |
				& $lsh_bin @lsh_args render --input "$($_.FullName)" crates/lsh/definitions 2>$null | more
				pause
			}
	}

	"md" {
		Get-ChildItem ".." -Recurse -Filter *.md |
			Where-Object { $_.FullName -notmatch "highlighting-tests" } | ForEach-Object {
				& $lsh_bin @lsh_args render --input "$($_.FullName)" crates/lsh/definitions 2>$null | more
				pause
			}
	}

	{ $_ -in @("yaml","yml") } {
		Get-ChildItem ".." -Recurse -Include *.yaml, *.yml |
			Where-Object { $_.FullName -notmatch "highlighting-tests" } | ForEach-Object {
				& $lsh_bin @lsh_args render --input "$($_.FullName)" crates/lsh/definitions 2>$null | more
				pause
			}
	}

	"json" {
		Get-ChildItem ".." -Recurse -Filter *.json |
			Where-Object { $_.FullName -notmatch "highlighting-tests" } |
			Select-Object -First 10 | ForEach-Object {
				& $lsh_bin @lsh_args render --input "$($_.FullName)" crates/lsh/definitions 2>$null | more
				pause
			}
	}

	{ $_ -in @("py","python") } {
		Get-ChildItem ".." -Recurse -Filter *.py |
			Where-Object { $_.FullName -notmatch "highlighting-tests" } |
			Select-Object -First 10 | ForEach-Object {
				& $lsh_bin @lsh_args render --input "$($_.FullName)" crates/lsh/definitions 2>$null | more
				pause
			}
	}

	{ $_ -in @("js","javascript") } {
		Get-ChildItem ".." -Recurse -Include *.js, *.jsx |
			Where-Object { $_.FullName -notmatch "highlighting-tests" } |
			Select-Object -First 10 | ForEach-Object {
				& $lsh_bin @lsh_args render --input "$($_.FullName)" crates/lsh/definitions 2>$null | more
				pause
			}
	}

	"java" {
		Get-ChildItem ".." -Recurse -Include *.java |
			Where-Object { $_.FullName -notmatch "highlighting-tests" } |
			Select-Object -First 10 | ForEach-Object {
				& $lsh_bin @lsh_args render --input "$($_.FullName)" crates/lsh/definitions 2>$null | more
				pause
			}
	}

	{ $_ -in @("ignore","gitignore") } {
		Get-ChildItem ".." -Recurse -Filter .gitignore |
			Where-Object { $_.FullName -notmatch "highlighting-tests" } | ForEach-Object {
				& $lsh_bin @lsh_args render --input "$($_.FullName)" crates/lsh/definitions 2>$null | more
				pause
			}
	}

	"lsh" {
		Get-ChildItem "crates/lsh/definitions/*.lsh" | ForEach-Object {
			& $lsh_bin @lsh_args render --input "$($_.FullName)" crates/lsh/definitions 2>$null | more
			pause
		}
	}
}
