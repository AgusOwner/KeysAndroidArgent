.class public Lorg/apache/tools/ant/taskdefs/XSLTProcess$Factory$Attribute;
.super Lorg/apache/tools/ant/ProjectComponent;
.source "XSLTProcess.java"

# interfaces
.implements Lorg/apache/tools/ant/DynamicConfigurator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/XSLTProcess$Factory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Attribute"
.end annotation


# instance fields
.field private name:Ljava/lang/String;

.field private value:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1522
    invoke-direct {p0}, Lorg/apache/tools/ant/ProjectComponent;-><init>()V

    return-void
.end method


# virtual methods
.method public createDynamicElement(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1535
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess$Factory$Attribute;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .line 1542
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess$Factory$Attribute;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public setDynamicAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const-string v0, "name"

    .line 1566
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1567
    iput-object p2, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess$Factory$Attribute;->name:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, "value"

    .line 1568
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p1, "true"

    .line 1571
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1572
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess$Factory$Attribute;->value:Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const-string p1, "false"

    .line 1573
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1574
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess$Factory$Attribute;->value:Ljava/lang/Object;

    goto :goto_0

    .line 1577
    :cond_2
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess$Factory$Attribute;->value:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1579
    :catch_0
    iput-object p2, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess$Factory$Attribute;->value:Ljava/lang/Object;

    goto :goto_0

    :cond_3
    const-string v0, "valueref"

    .line 1582
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1583
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/XSLTProcess$Factory$Attribute;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/apache/tools/ant/Project;->getReference(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess$Factory$Attribute;->value:Ljava/lang/Object;

    goto :goto_0

    :cond_4
    const-string v0, "classloaderforpath"

    .line 1584
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1586
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/XSLTProcess$Factory$Attribute;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object p1

    new-instance v0, Lorg/apache/tools/ant/types/Reference;

    .line 1587
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/XSLTProcess$Factory$Attribute;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lorg/apache/tools/ant/types/Reference;-><init>(Lorg/apache/tools/ant/Project;Ljava/lang/String;)V

    .line 1586
    invoke-static {p1, v0}, Lorg/apache/tools/ant/util/ClasspathUtils;->getClassLoaderForPath(Lorg/apache/tools/ant/Project;Lorg/apache/tools/ant/types/Reference;)Ljava/lang/ClassLoader;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess$Factory$Attribute;->value:Ljava/lang/Object;

    :goto_0
    return-void

    .line 1590
    :cond_5
    new-instance p2, Lorg/apache/tools/ant/BuildException;

    const-string v0, "Unsupported attribute: %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p2
.end method
