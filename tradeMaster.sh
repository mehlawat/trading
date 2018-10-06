tradeAnalysis()
{
	while :
	do
		python gatherTradeData.py
		if [ $? -gt 0 ] ; then
			echo "------------>Exception Detected"
			sleep 300
			python gatherTradeData.py
		fi
	done
}

echo "Trade analysis thread started in background"
tradeAnalysis
