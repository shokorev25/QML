function calculateProfit(hashRate, power, electricityCost, poolFee, coinPrice, blockReward) {
    let dailyCoins = (hashRate * 86400) / (2 ** 32); // Упрощенная формула добычи монет
    let grossIncome = dailyCoins * blockReward * coinPrice;
    let electricityExpenses = (power / 1000) * 24 * electricityCost;
    let netIncome = grossIncome - electricityExpenses - (grossIncome * poolFee / 100);
    return netIncome;
}
