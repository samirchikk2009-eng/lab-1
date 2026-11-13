создание табл

CREATE TABLE "Виды_корреспонденции" (
    "Код_вида_корреспонденции" INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    "Название_вида_корреспонденции" VARCHAR(100) NOT NULL,
    "Упаковка" VARCHAR(100),
    "Минимальный_вес" NUMERIC(10,2) NOT NULL,
    "Максимальный_вес" NUMERIC(10,2) NOT NULL,
    "Минимальная_длина" NUMERIC(10,2),
    "Минимальная_ширина" NUMERIC(10,2),
    "Минимальная_высота" NUMERIC(10,2),
    "Максимальная_длина" NUMERIC(10,2),
    "Максимальная_ширина" NUMERIC(10,2),
    "Максимальная_высота" NUMERIC(10,2)
);

CREATE TABLE "Стоимости_отправки" (
    "Код_вида_корреспонденции" INTEGER PRIMARY KEY,
    "Дальность_отправки" VARCHAR(100) NOT NULL,
    "Цена_за_грамм" NUMERIC(10,4) NOT NULL,
    "Цена_упаковки" NUMERIC(10,2) NOT NULL,
    "Наценка_за_срочность" NUMERIC(10,2) NOT NULL,
    "Возможность_объявления_ценности" BOOLEAN NOT NULL,

    CONSTRAINT fk_correspondence
    FOREIGN KEY ("Код_вида_корреспонденции")
    REFERENCES "Виды_корреспонденции" ("Код_вида_корреспонденции")
    ON UPDATE CASCADE
    ON DELETE CASCADE
);