.class public abstract Lorg/apache/tools/ant/types/EnumeratedAttribute;
.super Ljava/lang/Object;
.source "EnumeratedAttribute.java"


# instance fields
.field private index:I

.field protected value:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 43
    iput v0, p0, Lorg/apache/tools/ant/types/EnumeratedAttribute;->index:I

    return-void
.end method

.method public static getInstance(Ljava/lang/Class;Ljava/lang/String;)Lorg/apache/tools/ant/types/EnumeratedAttribute;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lorg/apache/tools/ant/types/EnumeratedAttribute;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/tools/ant/types/EnumeratedAttribute;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 72
    const-class v0, Lorg/apache/tools/ant/types/EnumeratedAttribute;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :try_start_0
    new-array v1, v0, [Ljava/lang/Class;

    .line 78
    invoke-virtual {p0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/tools/ant/types/EnumeratedAttribute;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/EnumeratedAttribute;->setValue(Ljava/lang/String;)V

    return-object p0

    :catch_0
    move-exception p0

    .line 80
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    invoke-direct {p1, p0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 73
    :cond_0
    new-instance p0, Lorg/apache/tools/ant/BuildException;

    const-string p1, "You have to provide a subclass from EnumeratedAttribute as clazz-parameter."

    invoke-direct {p0, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final containsValue(Ljava/lang/String;)Z
    .locals 1

    .line 106
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/EnumeratedAttribute;->indexOfValue(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final getIndex()I
    .locals 1

    .line 141
    iget v0, p0, Lorg/apache/tools/ant/types/EnumeratedAttribute;->index:I

    return v0
.end method

.method public final getValue()Ljava/lang/String;
    .locals 1

    .line 133
    iget-object v0, p0, Lorg/apache/tools/ant/types/EnumeratedAttribute;->value:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getValues()[Ljava/lang/String;
.end method

.method public final indexOfValue(Ljava/lang/String;)I
    .locals 4

    .line 117
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/EnumeratedAttribute;->getValues()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    .line 121
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_2

    .line 122
    aget-object v3, v0, v2

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return v2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v1
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 92
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/EnumeratedAttribute;->indexOfValue(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 96
    iput v0, p0, Lorg/apache/tools/ant/types/EnumeratedAttribute;->index:I

    .line 97
    iput-object p1, p0, Lorg/apache/tools/ant/types/EnumeratedAttribute;->value:Ljava/lang/String;

    return-void

    .line 94
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " is not a legal value for this attribute"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 151
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/EnumeratedAttribute;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
