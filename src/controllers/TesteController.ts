// Importa componentes do exprewss
import {Request, Response} from "express";
// Controller
class TesteController{
    // Função transferida do arquivo de rotas
    teste1 (req:Request, res:Response) {
        //obtém query param
        const x = req.query.num;
        // obtém route param
        const y = req.params.id;
        // Envia resposta ao cliente
        return res.send(`Resultado: ${Number(x) + Number(y)}`);
    }
}

export default TesteController;