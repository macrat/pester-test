$here = Split-Path -Parent $MyInvocation.MyCommand.Path
$sut = (Split-Path -Leaf $MyInvocation.MyCommand.Path) -replace '\.Tests\.', '.'
. "$here\$sut"


Describe "Add-Number" {
    It "1 + 1" {
        Add-Number 1 1 | Should Be 2
    }

    It "2 + 3" {
        Add-Number 2 3 | Should Be 5
    }

    It "2 + 2 (fail it)" {
        Add-Number 2 2 | Should Be 42
    }
}
