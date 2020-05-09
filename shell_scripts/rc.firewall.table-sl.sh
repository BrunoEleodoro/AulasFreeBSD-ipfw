#!/bin/sh

# Script de firewall para aulas de seguranca de redes
# Criado em 20/09/2019
# Autor: Marcus

# Modificado em: data
# Por:
# Alteracoes:

fwcmd="/sbin/ipfw"

${fwcmd} -q flush
${fwcmd} table 1 flush

${fwcmd} table 1 add 192.168.100.10
${fwcmd} table 1 add 192.168.100.11
${fwcmd} table 1 add 192.168.100.12
${fwcmd} table 1 add 192.168.100.13
${fwcmd} table 1 add 192.168.100.14
${fwcmd} table 1 add 192.168.100.15
${fwcmd} table 1 add 192.168.100.16
${fwcmd} table 1 add 192.168.100.17
${fwcmd} table 1 add 192.168.100.18
${fwcmd} table 1 add 192.168.100.19
${fwcmd} table 1 add 192.168.100.20

${fwcmd} add allow tcp from 192.168.56.1 to 192.168.56.200 22 in via em2
${fwcmd} add allow tcp from 192.168.56.200 22 to 192.168.56.1 out via em2

${fwcmd} add allow tcp from 192.168.200.20 to "table(1)" 22
${fwcmd} add allow tcp from "table(1)" 22 to 192.168.200.20
${fwcmd} add allow icmp from 192.168.200.20 to "table(1)"
${fwcmd} add allow icmp from "table(1)" to 192.168.200.20
