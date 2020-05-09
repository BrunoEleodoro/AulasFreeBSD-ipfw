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

${fwcmd} add allow tcp from 192.168.200.20 to 192.168.100.10 22
${fwcmd} add allow tcp from 192.168.200.20 to 192.168.100.11 22
${fwcmd} add allow tcp from 192.168.200.20 to 192.168.100.12 22
${fwcmd} add allow tcp from 192.168.200.20 to 192.168.100.13 22
${fwcmd} add allow tcp from 192.168.200.20 to 192.168.100.14 22
${fwcmd} add allow tcp from 192.168.200.20 to 192.168.100.15 22
${fwcmd} add allow tcp from 192.168.200.20 to 192.168.100.16 22
${fwcmd} add allow tcp from 192.168.200.20 to 192.168.100.17 22
${fwcmd} add allow tcp from 192.168.200.20 to 192.168.100.18 22
${fwcmd} add allow tcp from 192.168.200.20 to 192.168.100.19 22
${fwcmd} add allow tcp from 192.168.200.20 to 192.168.100.20 22
${fwcmd} add allow tcp from 192.168.100.10 22 to 192.168.200.20
${fwcmd} add allow tcp from 192.168.100.11 22 to 192.168.200.20
${fwcmd} add allow tcp from 192.168.100.12 22 to 192.168.200.20
${fwcmd} add allow tcp from 192.168.100.13 22 to 192.168.200.20
${fwcmd} add allow tcp from 192.168.100.14 22 to 192.168.200.20
${fwcmd} add allow tcp from 192.168.100.15 22 to 192.168.200.20
${fwcmd} add allow tcp from 192.168.100.16 22 to 192.168.200.20
${fwcmd} add allow tcp from 192.168.100.17 22 to 192.168.200.20
${fwcmd} add allow tcp from 192.168.100.18 22 to 192.168.200.20
${fwcmd} add allow tcp from 192.168.100.19 22 to 192.168.200.20
${fwcmd} add allow tcp from 192.168.100.20 22 to 192.168.200.20

${fwcmd} add allow icmp from 192.168.200.20 to 192.168.100.10
${fwcmd} add allow icmp from 192.168.200.20 to 192.168.100.11
${fwcmd} add allow icmp from 192.168.200.20 to 192.168.100.12
${fwcmd} add allow icmp from 192.168.200.20 to 192.168.100.13
${fwcmd} add allow icmp from 192.168.200.20 to 192.168.100.14
${fwcmd} add allow icmp from 192.168.200.20 to 192.168.100.15
${fwcmd} add allow icmp from 192.168.200.20 to 192.168.100.16
${fwcmd} add allow icmp from 192.168.200.20 to 192.168.100.17
${fwcmd} add allow icmp from 192.168.200.20 to 192.168.100.18
${fwcmd} add allow icmp from 192.168.200.20 to 192.168.100.19
${fwcmd} add allow icmp from 192.168.200.20 to 192.168.100.20
${fwcmd} add allow icmp from 192.168.100.10 to 192.168.200.20
${fwcmd} add allow icmp from 192.168.100.11 to 192.168.200.20
${fwcmd} add allow icmp from 192.168.100.12 to 192.168.200.20
${fwcmd} add allow icmp from 192.168.100.13 to 192.168.200.20
${fwcmd} add allow icmp from 192.168.100.14 to 192.168.200.20
${fwcmd} add allow icmp from 192.168.100.15 to 192.168.200.20
${fwcmd} add allow icmp from 192.168.100.16 to 192.168.200.20
${fwcmd} add allow icmp from 192.168.100.17 to 192.168.200.20
${fwcmd} add allow icmp from 192.168.100.18 to 192.168.200.20
${fwcmd} add allow icmp from 192.168.100.19 to 192.168.200.20
${fwcmd} add allow icmp from 192.168.100.20 to 192.168.200.20
