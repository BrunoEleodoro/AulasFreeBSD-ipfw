#!/bin/sh

# Script de firewall para aulas de seguranca de redes
# Criado em 20/09/2019
# Autor: Marcus

# Modificado em: data
# Por:
# Alteracoes:

fwcmd="/sbin/ipfw"

${fwcmd} -q flush

${fwcmd} add allow tcp from 192.168.56.1 to 192.168.56.200 22 in via em2
${fwcmd} add allow tcp from 192.168.56.200 22 to 192.168.56.1 out via em2

ssh="192.168.100.10 192.168.100.11 192.168.100.12 192.168.100.13 192.168.100.14 192.168.100.15 \
192.168.100.16 192.168.100.17 192.168.100.18 192.168.100.19 192.168.100.20"

for vip in ${ssh}; do
	${fwcmd} add allow tcp from 192.168.200.20 to ${vip} 22
	${fwcmd} add allow tcp from ${vip} 22 to 192.168.200.20
	${fwcmd} add allow icmp from 192.168.200.20 to ${vip}
	${fwcmd} add allow icmp from ${vip} to 192.168.200.20
done
