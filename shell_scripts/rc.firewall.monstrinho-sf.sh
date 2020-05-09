#!/bin/sh

# Script de firewall para aulas de seguranca de redes
# Criado em 20/09/2019
# Autor: Marcus

# Modificado em: data
# Por:
# Alteracoes:

fwcmd="/sbin/ipfw"

${fwcmd} -q flush
${fwcmd} add check-state

${fwcmd} add allow tcp from 192.168.56.1 to 192.168.56.200 22 in via em2 keep-state

${fwcmd} add allow tcp from 192.168.200.20 to 192.168.100.10 22 keep-state
${fwcmd} add allow tcp from 192.168.200.20 to 192.168.100.11 22 keep-state
${fwcmd} add allow tcp from 192.168.200.20 to 192.168.100.12 22 keep-state
${fwcmd} add allow tcp from 192.168.200.20 to 192.168.100.13 22 keep-state
${fwcmd} add allow tcp from 192.168.200.20 to 192.168.100.14 22 keep-state
${fwcmd} add allow tcp from 192.168.200.20 to 192.168.100.15 22 keep-state
${fwcmd} add allow tcp from 192.168.200.20 to 192.168.100.16 22 keep-state
${fwcmd} add allow tcp from 192.168.200.20 to 192.168.100.17 22 keep-state
${fwcmd} add allow tcp from 192.168.200.20 to 192.168.100.18 22 keep-state
${fwcmd} add allow tcp from 192.168.200.20 to 192.168.100.19 22 keep-state
${fwcmd} add allow tcp from 192.168.200.20 to 192.168.100.20 22 keep-state

${fwcmd} add allow icmp from 192.168.200.20 to 192.168.100.10 keep-state
${fwcmd} add allow icmp from 192.168.200.20 to 192.168.100.11 keep-state
${fwcmd} add allow icmp from 192.168.200.20 to 192.168.100.12 keep-state
${fwcmd} add allow icmp from 192.168.200.20 to 192.168.100.13 keep-state
${fwcmd} add allow icmp from 192.168.200.20 to 192.168.100.14 keep-state
${fwcmd} add allow icmp from 192.168.200.20 to 192.168.100.15 keep-state
${fwcmd} add allow icmp from 192.168.200.20 to 192.168.100.16 keep-state
${fwcmd} add allow icmp from 192.168.200.20 to 192.168.100.17 keep-state
${fwcmd} add allow icmp from 192.168.200.20 to 192.168.100.18 keep-state
${fwcmd} add allow icmp from 192.168.200.20 to 192.168.100.19 keep-state
${fwcmd} add allow icmp from 192.168.200.20 to 192.168.100.20 keep-state
