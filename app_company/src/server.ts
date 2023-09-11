import fastify from 'fastify';
const app = fastify();

import { PrismaClient } from '@prisma/client';
const prisma = new PrismaClient();

 app.get('/group', async()=>{
     const grupo = await prisma.group.findMany();
     return grupo
 })
 app.get('/storage', async()=>{
     const storage = await prisma.storage.findMany();
     return storage
 })
 app.get('/products', async()=>{
     const products = await prisma.products.findMany();
     return products
 })

app.listen({
    port: 3333,
}).then(()=>{
    console.log('Server rodando na porta 3333')
})