.class public Lorg/apache/tools/ant/util/facade/ImplementationSpecificArgument;
.super Lorg/apache/tools/ant/types/Commandline$Argument;
.source "ImplementationSpecificArgument.java"


# instance fields
.field private impl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lorg/apache/tools/ant/types/Commandline$Argument;-><init>()V

    return-void
.end method


# virtual methods
.method public final getParts(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lorg/apache/tools/ant/util/facade/ImplementationSpecificArgument;->impl:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    return-object p1

    .line 51
    :cond_1
    :goto_0
    invoke-super {p0}, Lorg/apache/tools/ant/types/Commandline$Argument;->getParts()[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public setImplementation(Ljava/lang/String;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lorg/apache/tools/ant/util/facade/ImplementationSpecificArgument;->impl:Ljava/lang/String;

    return-void
.end method
