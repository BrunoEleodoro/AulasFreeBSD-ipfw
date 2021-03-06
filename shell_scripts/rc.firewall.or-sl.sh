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

ssh="{ 192.168.100.10 or 192.168.100.11 or 192.168.100.12 or 192.168.100.13 or \
192.168.100.14 or 192.168.100.15 or 192.168.100.16 or 192.168.100.17 or \
192.168.100.18 or 192.168.100.19 or 192.168.100.20 }"

${fwcmd} add allow tcp from 192.168.200.20 to ${ssh} 22
${fwcmd} add allow tcp from ${ssh} 22 to 192.168.200.20
${fwcmd} add allow icmp from 192.168.200.20 to ${ssh}
${fwcmd} add allow icmp from ${ssh} to 192.168.200.20
