.class public Lorg/apache/tools/ant/taskdefs/Input$Handler;
.super Lorg/apache/tools/ant/taskdefs/DefBase;
.source "Input.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/Input;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Handler"
.end annotation


# instance fields
.field private classname:Ljava/lang/String;

.field private refid:Ljava/lang/String;

.field final synthetic this$0:Lorg/apache/tools/ant/taskdefs/Input;

.field private type:Lorg/apache/tools/ant/taskdefs/Input$HandlerType;


# direct methods
.method public constructor <init>(Lorg/apache/tools/ant/taskdefs/Input;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Input$Handler;->this$0:Lorg/apache/tools/ant/taskdefs/Input;

    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/DefBase;-><init>()V

    const/4 p1, 0x0

    .line 49
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Input$Handler;->refid:Ljava/lang/String;

    .line 50
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Input$Handler;->type:Lorg/apache/tools/ant/taskdefs/Input$HandlerType;

    .line 51
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Input$Handler;->classname:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$100(Lorg/apache/tools/ant/taskdefs/Input$Handler;)Lorg/apache/tools/ant/input/InputHandler;
    .locals 0

    .line 47
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/Input$Handler;->getInputHandler()Lorg/apache/tools/ant/input/InputHandler;

    move-result-object p0

    return-object p0
.end method

.method private getInputHandler()Lorg/apache/tools/ant/input/InputHandler;
    .locals 4

    .line 103
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Input$Handler;->type:Lorg/apache/tools/ant/taskdefs/Input$HandlerType;

    if-eqz v0, :cond_0

    .line 104
    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/Input$HandlerType;->access$000(Lorg/apache/tools/ant/taskdefs/Input$HandlerType;)Lorg/apache/tools/ant/input/InputHandler;

    move-result-object v0

    return-object v0

    .line 106
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Input$Handler;->refid:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 108
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Input$Handler;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Input$Handler;->refid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/Project;->getReference(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/input/InputHandler;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 110
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/Input$Handler;->refid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " does not denote an InputHandler"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 114
    :cond_1
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Input$Handler;->classname:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 116
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Input$Handler;->createLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-class v2, Lorg/apache/tools/ant/input/InputHandler;

    .line 115
    invoke-static {v0, v1, v2}, Lorg/apache/tools/ant/util/ClasspathUtils;->newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/input/InputHandler;

    return-object v0

    .line 118
    :cond_2
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Must specify refid, classname or type"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getClassname()Ljava/lang/String;
    .locals 1

    .line 83
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Input$Handler;->classname:Ljava/lang/String;

    return-object v0
.end method

.method public getRefid()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Input$Handler;->refid:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lorg/apache/tools/ant/taskdefs/Input$HandlerType;
    .locals 1

    .line 99
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Input$Handler;->type:Lorg/apache/tools/ant/taskdefs/Input$HandlerType;

    return-object v0
.end method

.method public setClassname(Ljava/lang/String;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Input$Handler;->classname:Ljava/lang/String;

    return-void
.end method

.method public setRefid(Ljava/lang/String;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Input$Handler;->refid:Ljava/lang/String;

    return-void
.end method

.method public setType(Lorg/apache/tools/ant/taskdefs/Input$HandlerType;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Input$Handler;->type:Lorg/apache/tools/ant/taskdefs/Input$HandlerType;

    return-void
.end method
