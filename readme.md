Projeto de um cluster EKS

Redes

VPC 
2 AZ
2 sn publicas
2 sn privadas
1 IGW 0.0.0.0/0
1 NAT 0.0.0.0/0

O eks exige várias subnets e pelo menos duas AZ diferentes

Nas redes privadas ficarao os workers
Nas redes publicas o LB

usaremos o controller da aws e tb o nginx

