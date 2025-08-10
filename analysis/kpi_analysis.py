import pandas as pd

# Load data
df = pd.read_csv("../data/production_data.csv")

# Calculate KPIs
total_units = len(df)
good_units = df[df["status"] == "good"].shape[0]
defective_units = total_units - good_units
scrap_rate = defective_units / total_units * 100
cycle_time_avg = df["cycle_time"].mean()

# Display results
print(f"Total Units: {total_units}")
print(f"Good Units: {good_units}")
print(f"Defective Units: {defective_units}")
print(f"Scrap Rate: {scrap_rate:.2f}%")
print(f"Average Cycle Time: {cycle_time_avg:.2f} sec")
