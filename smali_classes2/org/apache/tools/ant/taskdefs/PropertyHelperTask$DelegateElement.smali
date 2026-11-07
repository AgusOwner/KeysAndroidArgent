.class public final Lorg/apache/tools/ant/taskdefs/PropertyHelperTask$DelegateElement;
.super Ljava/lang/Object;
.source "PropertyHelperTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/PropertyHelperTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "DelegateElement"
.end annotation


# instance fields
.field private refid:Ljava/lang/String;

.field final synthetic this$0:Lorg/apache/tools/ant/taskdefs/PropertyHelperTask;


# direct methods
.method private constructor <init>(Lorg/apache/tools/ant/taskdefs/PropertyHelperTask;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/PropertyHelperTask$DelegateElement;->this$0:Lorg/apache/tools/ant/taskdefs/PropertyHelperTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/tools/ant/taskdefs/PropertyHelperTask;Lorg/apache/tools/ant/taskdefs/PropertyHelperTask$1;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/taskdefs/PropertyHelperTask$DelegateElement;-><init>(Lorg/apache/tools/ant/taskdefs/PropertyHelperTask;)V

    return-void
.end method

.method static synthetic access$100(Lorg/apache/tools/ant/taskdefs/PropertyHelperTask$DelegateElement;)Lorg/apache/tools/ant/PropertyHelper$Delegate;
    .locals 0

    .line 40
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/PropertyHelperTask$DelegateElement;->resolve()Lorg/apache/tools/ant/PropertyHelper$Delegate;

    move-result-object p0

    return-object p0
.end method

.method private resolve()Lorg/apache/tools/ant/PropertyHelper$Delegate;
    .locals 2

    .line 63
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/PropertyHelperTask$DelegateElement;->refid:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/PropertyHelperTask$DelegateElement;->this$0:Lorg/apache/tools/ant/taskdefs/PropertyHelperTask;

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/PropertyHelperTask;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/PropertyHelperTask$DelegateElement;->refid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/Project;->getReference(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/PropertyHelper$Delegate;

    return-object v0

    .line 64
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "refid required for generic delegate"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getRefid()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/PropertyHelperTask$DelegateElement;->refid:Ljava/lang/String;

    return-object v0
.end method

.method public setRefid(Ljava/lang/String;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/PropertyHelperTask$DelegateElement;->refid:Ljava/lang/String;

    return-void
.end method
