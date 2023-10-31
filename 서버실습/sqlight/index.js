import { DataTypes, Sequelize } from "sequelize";

console.log("sequelize: ", Sequelize);

const sequelize = new Sequelize({
    dialect: "sqlite",
    storage: "./db.sqlite",
});

// 모델 기반
class Fruit extends Sequelize.Model {}
Fruit.init(
    {
        fruitName: DataTypes.STRING,
        color: DataTypes.STRING,
        kcal: DataTypes.INTEGER,
    },
    { sequelize, modelName: "fruit" }
);

// 디파인 함수 활용
// class Vegetable extends Sequelize.Model {}

// Vegetable.init(
//     {
//         vegetableName: DataTypes.STRING,
//         color: DataTypes.STRING,
//         vitamin: DataTypes.INTEGER,
//     },
//     { sequelize, modelName: "vegetable" }
// );

// // const [sql]
// await sequelize.authenticate();

// await sequelize.sync();

const orange = await Fruit.create({
    fruitName: "Orange",
    color: "Orange",
    kcal: 47,
});
