# declaring a variable
variable "sample" {
    default  = "Hello world"
}

# printing an output
output "op" {
    value    = var.sample
}

# Whenever you want to print a variable in the group of words, you need to use the bash syntax
output "ops" {
    value = "My first msg is ${var.sample}"
}

# A Variable can be accessed directly by calling it as var.variableName, but if you're accessing in between a set of strings, then you need to enclose them in quotes and it should referred using ${var.VarName}
# In Terraform there is no concept of Single Quotes. 

variable "number" {
    value   = 100 
}

output "op_number" {
    value   = var.number
}