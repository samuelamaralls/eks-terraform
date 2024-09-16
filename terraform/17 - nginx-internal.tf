resource "helm_release" "internal_nginx" {
  name = "internal"

  repository       = "https://kubernetes.github.io/ingress-nginx"
  chart            = "ingress-nginx"
  namespace        = "ingress"
  create_namespace = true
  version          = "4.10.1"

  values = [file("${path.module}/values/internal-nginx-ingress.yaml")]

  depends_on = [helm_release.aws_lbc]
}