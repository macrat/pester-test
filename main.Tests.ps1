. ./main.ps1


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
