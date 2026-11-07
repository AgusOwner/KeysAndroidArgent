.class public Lorg/apache/tools/ant/types/Substitution;
.super Lorg/apache/tools/ant/types/DataType;
.source "Substitution.java"


# static fields
.field public static final DATA_TYPE_NAME:Ljava/lang/String; = "substitution"


# instance fields
.field private expression:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Lorg/apache/tools/ant/types/DataType;-><init>()V

    const/4 v0, 0x0

    .line 41
    iput-object v0, p0, Lorg/apache/tools/ant/types/Substitution;->expression:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getExpression(Lorg/apache/tools/ant/Project;)Ljava/lang/String;
    .locals 1

    .line 60
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Substitution;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/Substitution;->getRef(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/types/Substitution;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Substitution;->getExpression(Lorg/apache/tools/ant/Project;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 64
    :cond_0
    iget-object p1, p0, Lorg/apache/tools/ant/types/Substitution;->expression:Ljava/lang/String;

    return-object p1
.end method

.method public getRef(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/types/Substitution;
    .locals 2

    .line 74
    const-class v0, Lorg/apache/tools/ant/types/Substitution;

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Substitution;->getDataTypeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p1}, Lorg/apache/tools/ant/types/Substitution;->getCheckedRef(Ljava/lang/Class;Ljava/lang/String;Lorg/apache/tools/ant/Project;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/tools/ant/types/Substitution;

    return-object p1
.end method

.method public setExpression(Ljava/lang/String;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lorg/apache/tools/ant/types/Substitution;->expression:Ljava/lang/String;

    return-void
.end method
