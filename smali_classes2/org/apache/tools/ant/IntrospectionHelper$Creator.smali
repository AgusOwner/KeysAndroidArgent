.class public final Lorg/apache/tools/ant/IntrospectionHelper$Creator;
.super Ljava/lang/Object;
.source "IntrospectionHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/IntrospectionHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Creator"
.end annotation


# instance fields
.field private final nestedCreator:Lorg/apache/tools/ant/IntrospectionHelper$NestedCreator;

.field private nestedObject:Ljava/lang/Object;

.field private final parent:Ljava/lang/Object;

.field private polyType:Ljava/lang/String;

.field private final project:Lorg/apache/tools/ant/Project;


# direct methods
.method private constructor <init>(Lorg/apache/tools/ant/Project;Ljava/lang/Object;Lorg/apache/tools/ant/IntrospectionHelper$NestedCreator;)V
    .locals 0

    .line 1355
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1356
    iput-object p1, p0, Lorg/apache/tools/ant/IntrospectionHelper$Creator;->project:Lorg/apache/tools/ant/Project;

    .line 1357
    iput-object p2, p0, Lorg/apache/tools/ant/IntrospectionHelper$Creator;->parent:Ljava/lang/Object;

    .line 1358
    iput-object p3, p0, Lorg/apache/tools/ant/IntrospectionHelper$Creator;->nestedCreator:Lorg/apache/tools/ant/IntrospectionHelper$NestedCreator;

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/tools/ant/Project;Ljava/lang/Object;Lorg/apache/tools/ant/IntrospectionHelper$NestedCreator;Lorg/apache/tools/ant/IntrospectionHelper$1;)V
    .locals 0

    .line 1335
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/tools/ant/IntrospectionHelper$Creator;-><init>(Lorg/apache/tools/ant/Project;Ljava/lang/Object;Lorg/apache/tools/ant/IntrospectionHelper$NestedCreator;)V

    return-void
.end method


# virtual methods
.method public create()Ljava/lang/Object;
    .locals 4

    .line 1376
    iget-object v0, p0, Lorg/apache/tools/ant/IntrospectionHelper$Creator;->polyType:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 1377
    iget-object v0, p0, Lorg/apache/tools/ant/IntrospectionHelper$Creator;->nestedCreator:Lorg/apache/tools/ant/IntrospectionHelper$NestedCreator;

    invoke-virtual {v0}, Lorg/apache/tools/ant/IntrospectionHelper$NestedCreator;->isPolyMorphic()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1381
    iget-object v0, p0, Lorg/apache/tools/ant/IntrospectionHelper$Creator;->project:Lorg/apache/tools/ant/Project;

    invoke-static {v0}, Lorg/apache/tools/ant/ComponentHelper;->getComponentHelper(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/ComponentHelper;

    move-result-object v0

    .line 1382
    iget-object v1, p0, Lorg/apache/tools/ant/IntrospectionHelper$Creator;->polyType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/ComponentHelper;->createComponent(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/IntrospectionHelper$Creator;->nestedObject:Ljava/lang/Object;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1384
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to create object of type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/apache/tools/ant/IntrospectionHelper$Creator;->polyType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1378
    :cond_1
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Not allowed to use the polymorphic form for this element"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1388
    :cond_2
    :goto_0
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/IntrospectionHelper$Creator;->nestedCreator:Lorg/apache/tools/ant/IntrospectionHelper$NestedCreator;

    iget-object v1, p0, Lorg/apache/tools/ant/IntrospectionHelper$Creator;->project:Lorg/apache/tools/ant/Project;

    iget-object v2, p0, Lorg/apache/tools/ant/IntrospectionHelper$Creator;->parent:Ljava/lang/Object;

    iget-object v3, p0, Lorg/apache/tools/ant/IntrospectionHelper$Creator;->nestedObject:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/tools/ant/IntrospectionHelper$NestedCreator;->create(Lorg/apache/tools/ant/Project;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/IntrospectionHelper$Creator;->nestedObject:Ljava/lang/Object;

    .line 1389
    iget-object v1, p0, Lorg/apache/tools/ant/IntrospectionHelper$Creator;->project:Lorg/apache/tools/ant/Project;

    if-eqz v1, :cond_3

    .line 1390
    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/Project;->setProjectReference(Ljava/lang/Object;)V

    .line 1392
    :cond_3
    iget-object v0, p0, Lorg/apache/tools/ant/IntrospectionHelper$Creator;->nestedObject:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 1401
    invoke-static {v0}, Lorg/apache/tools/ant/IntrospectionHelper;->access$400(Ljava/lang/reflect/InvocationTargetException;)Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0

    :catch_1
    move-exception v0

    .line 1396
    iget-object v1, p0, Lorg/apache/tools/ant/IntrospectionHelper$Creator;->polyType:Ljava/lang/String;

    if-nez v1, :cond_4

    .line 1397
    throw v0

    .line 1399
    :cond_4
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid type used "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/apache/tools/ant/IntrospectionHelper$Creator;->polyType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    .line 1394
    :goto_1
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getRealObject()Ljava/lang/Object;
    .locals 1

    .line 1409
    iget-object v0, p0, Lorg/apache/tools/ant/IntrospectionHelper$Creator;->nestedCreator:Lorg/apache/tools/ant/IntrospectionHelper$NestedCreator;

    invoke-virtual {v0}, Lorg/apache/tools/ant/IntrospectionHelper$NestedCreator;->getRealObject()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setPolyType(Ljava/lang/String;)V
    .locals 0

    .line 1367
    iput-object p1, p0, Lorg/apache/tools/ant/IntrospectionHelper$Creator;->polyType:Ljava/lang/String;

    return-void
.end method

.method public store()V
    .locals 3

    .line 1418
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/IntrospectionHelper$Creator;->nestedCreator:Lorg/apache/tools/ant/IntrospectionHelper$NestedCreator;

    iget-object v1, p0, Lorg/apache/tools/ant/IntrospectionHelper$Creator;->parent:Ljava/lang/Object;

    iget-object v2, p0, Lorg/apache/tools/ant/IntrospectionHelper$Creator;->nestedObject:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/apache/tools/ant/IntrospectionHelper$NestedCreator;->store(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 1427
    invoke-static {v0}, Lorg/apache/tools/ant/IntrospectionHelper;->access$400(Ljava/lang/reflect/InvocationTargetException;)Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0

    :catch_1
    move-exception v0

    .line 1422
    iget-object v1, p0, Lorg/apache/tools/ant/IntrospectionHelper$Creator;->polyType:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1423
    throw v0

    .line 1425
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid type used "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/apache/tools/ant/IntrospectionHelper$Creator;->polyType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_2
    move-exception v0

    goto :goto_0

    :catch_3
    move-exception v0

    .line 1420
    :goto_0
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
