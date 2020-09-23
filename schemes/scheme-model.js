const db = require('../config');
module.exports = {
    find,
    findById,
    findSteps,
    add,
    addStep,
    update,
    remove
}
function find(){
    return db('schemes')

};

function findById(id){
    return db('schemes')
    .where("id",id)
};

function findSteps(id){
    return db('schemes')
    .join("steps","schemes.id","steps.scheme_id")
    .where("schemes.id",id)
    .select('schemes.scheme_name', 'steps.step_number', 'steps.instructions')

}

function add(content){
    return db('schemes')
    .insert(content)
}

function addStep(stepData, id){
    return db('steps')
    .where('scheme_id',id)
    .insert(stepData)
    
}

function update(changes, id){
  return db('schemes')
  .where('id',id)
  .update(changes)
}

function remove(id){
    return db('schemes')
    .where('id',id)
    .delete()
}