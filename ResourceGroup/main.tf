resource "random_pet" "nome-rg"{
    prefix = "${var.rg_prefixo}-${var.ambiente}"
}

resource "azurerm_resource_group" "rg" {
    name = random_pet.nome-rg.id
    location = var.rg_localizacao
}