.class public Lorg/apache/tools/ant/taskdefs/XSLTProcess$Param;
.super Ljava/lang/Object;
.source "XSLTProcess.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/XSLTProcess;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Param"
.end annotation


# instance fields
.field private expression:Ljava/lang/String;

.field private ifCond:Ljava/lang/Object;

.field private name:Ljava/lang/String;

.field private project:Lorg/apache/tools/ant/Project;

.field private type:Ljava/lang/String;

.field private unlessCond:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 969
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 971
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess$Param;->name:Ljava/lang/String;

    .line 974
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess$Param;->expression:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getExpression()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 1044
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess$Param;->expression:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 1045
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Expression attribute is missing."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 1030
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess$Param;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 1031
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Name attribute is missing."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 1056
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess$Param;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setExpression(Ljava/lang/String;)V
    .locals 0

    .line 1011
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess$Param;->expression:Ljava/lang/String;

    return-void
.end method

.method public setIf(Ljava/lang/Object;)V
    .locals 0

    .line 1067
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess$Param;->ifCond:Ljava/lang/Object;

    return-void
.end method

.method public setIf(Ljava/lang/String;)V
    .locals 0

    .line 1077
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/taskdefs/XSLTProcess$Param;->setIf(Ljava/lang/Object;)V

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 1001
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess$Param;->name:Ljava/lang/String;

    return-void
.end method

.method public setProject(Lorg/apache/tools/ant/Project;)V
    .locals 0

    .line 992
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess$Param;->project:Lorg/apache/tools/ant/Project;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 1020
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess$Param;->type:Ljava/lang/String;

    return-void
.end method

.method public setUnless(Ljava/lang/Object;)V
    .locals 0

    .line 1088
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess$Param;->unlessCond:Ljava/lang/Object;

    return-void
.end method

.method public setUnless(Ljava/lang/String;)V
    .locals 0

    .line 1098
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/taskdefs/XSLTProcess$Param;->setUnless(Ljava/lang/Object;)V

    return-void
.end method

.method public shouldUse()Z
    .locals 2

    .line 1107
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess$Param;->project:Lorg/apache/tools/ant/Project;

    invoke-static {v0}, Lorg/apache/tools/ant/PropertyHelper;->getPropertyHelper(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/PropertyHelper;

    move-result-object v0

    .line 1108
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess$Param;->ifCond:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/PropertyHelper;->testIfCondition(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess$Param;->unlessCond:Ljava/lang/Object;

    .line 1109
    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/PropertyHelper;->testUnlessCondition(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
