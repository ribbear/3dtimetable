import pandas as pd

# régebbi kód
schedule_data = {
    'Időpont': ['hétköznapok', '8:00', '9:00', '10:00', '11:00', '12:15', '13:15', '14:15', '15:15'],
    'Hétfő': ['Hétfő', 'nyelvtan', 'matek', 'tesi', 'fogalmazás', 'digitális kultúra', 'ebéd/házi', 'angol tg', ''],
    'Kedd': ['Kedd', 'tesi', 'Angol', 'matek', 'etika', 'ének', 'ének fejlesztés', 'matek fejlesztés', '', ''],
    'Szerda': ['Szerda', 'környezet', 'tesi', 'angol', 'matek', 'irodalom', 'dk tg', '', '', ''],
    'Csütörtök': ['Csütörtök', 'vizuális kultúra', 'irodalom', 'technika', 'matek', 'tesi', 'dk tg', '', '', ''],
    'Péntek': ['Péntek', 'tesi', 'angol', 'nyelvtan', 'irodalom', 'ének', 'szövegértés', 'mesedélután', '', '']
}

df = pd.DataFrame(schedule_data)

class Timetable3DGenerator:
    def __init__(self, timetable_df: pd.DataFrame, thickness: float = 2.0):
        self.df = timetable_df
        self.thickness = thickness

    def sanitize_text(self, text: str) -> str:
        if pd.isna(text) or text.strip() == '':
            return ''
        return text.replace('/', '\n')

    def generate_slabs(self):
        slabs = []
        for idx, row in self.df.iterrows():
            for col in self.df.columns[1:]:
                cell_text = self.sanitize_text(row[col])
                slabs.append({
                    'time': row[self.df.columns[0]],
                    'day': col,
                    'text': cell_text,
                    'thickness': self.thickness
                })
        return slabs

    def save_to_csv(self, file_path):
        slabs = self.generate_slabs()
        df_slabs = pd.DataFrame(slabs)
        df_slabs.to_csv(file_path, index=False)
        print(f"3D slab data saved to: {file_path}")

# Generálás
generator = Timetable3DGenerator(df)
generator.save_to_csv('dani_3b_3d_slabs.csv')
