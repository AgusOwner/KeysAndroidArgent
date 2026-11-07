.class public Lorg/apache/tools/ant/types/resources/selectors/InstanceOf;
.super Ljava/lang/Object;
.source "InstanceOf.java"

# interfaces
.implements Lorg/apache/tools/ant/types/resources/selectors/ResourceSelector;


# static fields
.field private static final ONE_ONLY:Ljava/lang/String; = "Exactly one of class|type must be set."


# instance fields
.field private clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private project:Lorg/apache/tools/ant/Project;

.field private type:Ljava/lang/String;

.field private uri:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCheckClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/selectors/InstanceOf;->clazz:Ljava/lang/Class;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 88
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/selectors/InstanceOf;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getURI()Ljava/lang/String;
    .locals 1

    .line 96
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/selectors/InstanceOf;->uri:Ljava/lang/String;

    return-object v0
.end method

.method public isSelected(Lorg/apache/tools/ant/types/Resource;)Z
    .locals 5

    .line 106
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/selectors/InstanceOf;->clazz:Ljava/lang/Class;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    iget-object v4, p0, Lorg/apache/tools/ant/types/resources/selectors/InstanceOf;->type:Ljava/lang/String;

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    if-eq v3, v1, :cond_5

    if-eqz v4, :cond_4

    .line 111
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/selectors/InstanceOf;->project:Lorg/apache/tools/ant/Project;

    if-eqz v0, :cond_3

    .line 115
    invoke-static {v0}, Lorg/apache/tools/ant/ComponentHelper;->getComponentHelper(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/ComponentHelper;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/ant/types/resources/selectors/InstanceOf;->uri:Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/tools/ant/types/resources/selectors/InstanceOf;->type:Ljava/lang/String;

    .line 116
    invoke-static {v1, v2}, Lorg/apache/tools/ant/ProjectHelper;->genComponentName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/ComponentHelper;->getDefinition(Ljava/lang/String;)Lorg/apache/tools/ant/AntTypeDefinition;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 121
    :try_start_0
    invoke-virtual {v0}, Lorg/apache/tools/ant/AntTypeDefinition;->innerGetTypeClass()Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 123
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v0, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 118
    :cond_2
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/selectors/InstanceOf;->type:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "type %s not found."

    invoke-direct {p1, v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    .line 112
    :cond_3
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string v0, "No project set for InstanceOf ResourceSelector; the type attribute is invalid."

    invoke-direct {p1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 126
    :cond_4
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    return p1

    .line 107
    :cond_5
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string v0, "Exactly one of class|type must be set."

    invoke-direct {p1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setClass(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/selectors/InstanceOf;->clazz:Ljava/lang/Class;

    if-nez v0, :cond_0

    .line 56
    iput-object p1, p0, Lorg/apache/tools/ant/types/resources/selectors/InstanceOf;->clazz:Ljava/lang/Class;

    return-void

    .line 54
    :cond_0
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string v0, "The class attribute has already been set."

    invoke-direct {p1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setProject(Lorg/apache/tools/ant/Project;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lorg/apache/tools/ant/types/resources/selectors/InstanceOf;->project:Lorg/apache/tools/ant/Project;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lorg/apache/tools/ant/types/resources/selectors/InstanceOf;->type:Ljava/lang/String;

    return-void
.end method

.method public setURI(Ljava/lang/String;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lorg/apache/tools/ant/types/resources/selectors/InstanceOf;->uri:Ljava/lang/String;

    return-void
.end method
