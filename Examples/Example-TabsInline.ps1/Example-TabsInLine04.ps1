﻿Import-Module .\PSWriteHTML.psd1 -Force

New-HTML {
    New-HTMLSectionOption -RemoveShadow -BorderRadius 0px
    New-HTMLSection -HeaderText 'This is just to show what you can do' -HeaderBackGroundColor Grey {
        New-HTMLTabPanel {
            New-HTMLTab -Name 'Standard Top Level Tabs 1' -IconBrands 500px {
                New-HTMLTabPanel -Orientation vertical {
                    New-HTMLTab -Name 'Standard Nested Level Tabs 2.1' -IconBrands 500px {
                        New-HTMLSection -Invisible {
                            New-HTMLSection -HeaderText 'My Section with nested tabs in section' {
                                New-HTMLTabPanel {
                                    New-HTMLTab -Name 'Test Tab with size 30' -IconBrands apple -IconSize 30 -TextSize 30 {
                                        New-HTMLTable -DataTable 'test'
                                    }
                                    New-HTMLTab -Name 'Test Tab with size 30 and chosen colors' -IconRegular address-book -IconColor Red -IconSize 30 -TextSize 30 -TextColor Blue {
                                        New-HTMLText -Color Red -FontSize 20 -Text "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum"
                                    }
                                }
                            }
                            New-HTMLSection -HeaderText 'Another section' {
                                New-HTMLTable -DataTable 'test 1'
                            }
                        }
                    }
                    New-HTMLTab -Name 'Standard Nested Level Tabs 2.2' -IconBrands 500px {
                        New-HTMLText -Text "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum"
                    }
                    New-HTMLTab -Name 'Standard Nested Level Tabs 2.3' -IconBrands 500px {
                        New-HTMLText -Color Red -FontSize 20 -Text "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum"
                    }
                    New-HTMLTab -Name 'Standard Nested Level Tabs 2.4' -IconBrands 500px {
                        New-HTMLText -Color Green -FontSize 10px -Text "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum"
                    }
                    New-HTMLTab -Name 'Standard Nested Level Tabs 2.5' -IconBrands 500px {
                        New-HTMLText -Color Green -FontSize 10pt -Text "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum"
                        New-HTMLTable -DataTable 'Test Content on 5th vertical tab'
                    }
                }
            }
            New-HTMLTab -Name 'Standard Top Level Tabs 2' -IconRegular address-book {
                New-HTMLTable -DataTable 'test 3'
            }
        }
    }
} -Online -ShowHTML -FilePath $PSScriptRoot\Example-TabsInLine04.html