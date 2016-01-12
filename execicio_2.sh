#!/bin/bash

echo "Por favor, informe o dia"
read day

echo "Por favor, informe o mês"
read month

echo "Por favor, informe o ano"
read year

cal "$day" "$month" "$year"
