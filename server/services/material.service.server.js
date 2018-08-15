var app = require('../../express');
var materialModel = require('../../model/material.model.server');

app.get('/api/material/:userId/:courseId', showMaterial);
app.post('/api/complete/material', markMaterialCompleted);

function showMaterial(req, resp) {
    materialModel.showMaterial(req.params.userId, req.params.courseId, function (err, rows) {
        if (err) {
            resp.json(err);
        } else {
            resp.json(rows);
        }
    });
}

function markMaterialCompleted(req, res){
    if (typeof req.body.userId !== 'undefined'
        && typeof req.body.materialId !== 'undefined') {
        var userId = req.body.userId;
        var materialId = req.body.materialId;
        var courseId  = req.body.courseId;
        materialModel.completeMaterial(userId, materialId, courseId, function (err, rows) {
            if (err) {
                var response = {success: false, message: 'Failed to mark material as completed. '+ err.sqlMessage};
                res.json(response);
            } else {
                res.json({success:true, message: 'Material was successfully marked as completed'});
            }
        });
    } else {
        res.status(400);
        res.json({success: false, message: 'Invalid Request.'});
    }
}