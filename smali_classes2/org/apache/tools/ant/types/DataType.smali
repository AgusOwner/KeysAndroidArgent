.class public abstract Lorg/apache/tools/ant/types/DataType;
.super Lorg/apache/tools/ant/ProjectComponent;
.source "DataType.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field protected checked:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected ref:Lorg/apache/tools/ant/types/Reference;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Lorg/apache/tools/ant/ProjectComponent;-><init>()V

    const/4 v0, 0x1

    .line 66
    iput-boolean v0, p0, Lorg/apache/tools/ant/types/DataType;->checked:Z

    return-void
.end method

.method private displayName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 387
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (loaded via "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static invokeCircularReferenceCheck(Lorg/apache/tools/ant/types/DataType;Ljava/util/Stack;Lorg/apache/tools/ant/Project;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/tools/ant/types/DataType;",
            "Ljava/util/Stack<",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/apache/tools/ant/Project;",
            ")V"
        }
    .end annotation

    .line 173
    invoke-virtual {p0, p1, p2}, Lorg/apache/tools/ant/types/DataType;->dieOnCircularReference(Ljava/util/Stack;Lorg/apache/tools/ant/Project;)V

    return-void
.end method

.method public static pushAndInvokeCircularReferenceCheck(Lorg/apache/tools/ant/types/DataType;Ljava/util/Stack;Lorg/apache/tools/ant/Project;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/tools/ant/types/DataType;",
            "Ljava/util/Stack<",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/apache/tools/ant/Project;",
            ")V"
        }
    .end annotation

    .line 191
    invoke-virtual {p1, p0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    invoke-virtual {p0, p1, p2}, Lorg/apache/tools/ant/types/DataType;->dieOnCircularReference(Ljava/util/Stack;Lorg/apache/tools/ant/Project;)V

    .line 193
    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected checkAttributesAllowed()V
    .locals 1

    .line 344
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/DataType;->isReference()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 345
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/DataType;->tooManyAttributes()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
.end method

.method protected checkChildrenAllowed()V
    .locals 1

    .line 355
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/DataType;->isReference()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 356
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/DataType;->noChildrenAllowed()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
.end method

.method protected circularReference()Lorg/apache/tools/ant/BuildException;
    .locals 2

    .line 310
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "This data type contains a circular reference."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 377
    invoke-super {p0}, Lorg/apache/tools/ant/ProjectComponent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/DataType;

    .line 378
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/DataType;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/DataType;->setDescription(Ljava/lang/String;)V

    .line 379
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/DataType;->getRefid()Lorg/apache/tools/ant/types/Reference;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 380
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/DataType;->getRefid()Lorg/apache/tools/ant/types/Reference;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/DataType;->setRefid(Lorg/apache/tools/ant/types/Reference;)V

    .line 382
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/DataType;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/DataType;->setChecked(Z)V

    return-object v0
.end method

.method protected dieOnCircularReference()V
    .locals 1

    .line 105
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/DataType;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/DataType;->dieOnCircularReference(Lorg/apache/tools/ant/Project;)V

    return-void
.end method

.method protected dieOnCircularReference(Ljava/util/Stack;Lorg/apache/tools/ant/Project;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Stack<",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/apache/tools/ant/Project;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 143
    iget-boolean v0, p0, Lorg/apache/tools/ant/types/DataType;->checked:Z

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/DataType;->isReference()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 146
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/types/DataType;->ref:Lorg/apache/tools/ant/types/Reference;

    invoke-virtual {v0, p2}, Lorg/apache/tools/ant/types/Reference;->getReferencedObject(Lorg/apache/tools/ant/Project;)Ljava/lang/Object;

    move-result-object v0

    .line 148
    instance-of v1, v0, Lorg/apache/tools/ant/types/DataType;

    if-eqz v1, :cond_2

    .line 149
    invoke-static {p1}, Lorg/apache/tools/ant/util/IdentityStack;->getInstance(Ljava/util/Stack;)Lorg/apache/tools/ant/util/IdentityStack;

    move-result-object p1

    .line 151
    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/util/IdentityStack;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 154
    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/util/IdentityStack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    check-cast v0, Lorg/apache/tools/ant/types/DataType;

    invoke-virtual {v0, p1, p2}, Lorg/apache/tools/ant/types/DataType;->dieOnCircularReference(Ljava/util/Stack;Lorg/apache/tools/ant/Project;)V

    .line 156
    invoke-virtual {p1}, Lorg/apache/tools/ant/util/IdentityStack;->pop()Ljava/lang/Object;

    goto :goto_0

    .line 152
    :cond_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/DataType;->circularReference()Lorg/apache/tools/ant/BuildException;

    move-result-object p1

    throw p1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    .line 159
    iput-boolean p1, p0, Lorg/apache/tools/ant/types/DataType;->checked:Z

    :cond_3
    :goto_1
    return-void
.end method

.method protected dieOnCircularReference(Lorg/apache/tools/ant/Project;)V
    .locals 1

    .line 114
    iget-boolean v0, p0, Lorg/apache/tools/ant/types/DataType;->checked:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/DataType;->isReference()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 117
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/util/IdentityStack;

    invoke-direct {v0, p0}, Lorg/apache/tools/ant/util/IdentityStack;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v0, p1}, Lorg/apache/tools/ant/types/DataType;->dieOnCircularReference(Ljava/util/Stack;Lorg/apache/tools/ant/Project;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected getCheckedRef()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 207
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/DataType;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/DataType;->getCheckedRef(Lorg/apache/tools/ant/Project;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected getCheckedRef(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 220
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/DataType;->getDataTypeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/DataType;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/tools/ant/types/DataType;->getCheckedRef(Ljava/lang/Class;Ljava/lang/String;Lorg/apache/tools/ant/Project;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected getCheckedRef(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 251
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/DataType;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/tools/ant/types/DataType;->getCheckedRef(Ljava/lang/Class;Ljava/lang/String;Lorg/apache/tools/ant/Project;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected getCheckedRef(Ljava/lang/Class;Ljava/lang/String;Lorg/apache/tools/ant/Project;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            "Lorg/apache/tools/ant/Project;",
            ")TT;"
        }
    .end annotation

    if-eqz p3, :cond_1

    .line 272
    invoke-virtual {p0, p3}, Lorg/apache/tools/ant/types/DataType;->dieOnCircularReference(Lorg/apache/tools/ant/Project;)V

    .line 273
    iget-object v0, p0, Lorg/apache/tools/ant/types/DataType;->ref:Lorg/apache/tools/ant/types/Reference;

    invoke-virtual {v0, p3}, Lorg/apache/tools/ant/types/Reference;->getReferencedObject(Lorg/apache/tools/ant/Project;)Ljava/lang/Object;

    move-result-object p3

    .line 274
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p3

    .line 277
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Class "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-direct {p0, p3}, Lorg/apache/tools/ant/types/DataType;->displayName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, " is not a subclass of "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    .line 279
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/types/DataType;->displayName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x3

    .line 277
    invoke-virtual {p0, p1, p3}, Lorg/apache/tools/ant/types/DataType;->log(Ljava/lang/String;I)V

    .line 281
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lorg/apache/tools/ant/types/DataType;->ref:Lorg/apache/tools/ant/types/Reference;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Reference;->getRefId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, " doesn\'t denote a "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 270
    :cond_1
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string p2, "No Project specified"

    invoke-direct {p1, p2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected getCheckedRef(Lorg/apache/tools/ant/Project;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/tools/ant/Project;",
            ")TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 236
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/DataType;->getDataTypeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p1}, Lorg/apache/tools/ant/types/DataType;->getCheckedRef(Ljava/lang/Class;Ljava/lang/String;Lorg/apache/tools/ant/Project;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected getDataTypeName()Ljava/lang/String;
    .locals 2

    .line 97
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/DataType;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lorg/apache/tools/ant/ComponentHelper;->getElementName(Lorg/apache/tools/ant/Project;Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRefid()Lorg/apache/tools/ant/types/Reference;
    .locals 1

    .line 335
    iget-object v0, p0, Lorg/apache/tools/ant/types/DataType;->ref:Lorg/apache/tools/ant/types/Reference;

    return-object v0
.end method

.method protected isChecked()Z
    .locals 1

    .line 319
    iget-boolean v0, p0, Lorg/apache/tools/ant/types/DataType;->checked:Z

    return v0
.end method

.method public isReference()Z
    .locals 1

    .line 75
    iget-object v0, p0, Lorg/apache/tools/ant/types/DataType;->ref:Lorg/apache/tools/ant/types/Reference;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected noChildrenAllowed()Lorg/apache/tools/ant/BuildException;
    .locals 2

    .line 300
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "You must not specify nested elements when using refid"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method protected setChecked(Z)V
    .locals 0

    .line 327
    iput-boolean p1, p0, Lorg/apache/tools/ant/types/DataType;->checked:Z

    return-void
.end method

.method public setRefid(Lorg/apache/tools/ant/types/Reference;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lorg/apache/tools/ant/types/DataType;->ref:Lorg/apache/tools/ant/types/Reference;

    const/4 p1, 0x0

    .line 89
    iput-boolean p1, p0, Lorg/apache/tools/ant/types/DataType;->checked:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 366
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/DataType;->getDescription()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 367
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/DataType;->getDataTypeName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/DataType;->getDataTypeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method protected tooManyAttributes()Lorg/apache/tools/ant/BuildException;
    .locals 2

    .line 290
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "You must not specify more than one attribute when using refid"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
