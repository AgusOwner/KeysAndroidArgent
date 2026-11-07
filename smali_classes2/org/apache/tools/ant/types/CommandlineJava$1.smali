.class synthetic Lorg/apache/tools/ant/types/CommandlineJava$1;
.super Ljava/lang/Object;
.source "CommandlineJava.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/types/CommandlineJava;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$org$apache$tools$ant$types$CommandlineJava$ExecutableType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 360
    invoke-static {}, Lorg/apache/tools/ant/types/CommandlineJava$ExecutableType;->values()[Lorg/apache/tools/ant/types/CommandlineJava$ExecutableType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/apache/tools/ant/types/CommandlineJava$1;->$SwitchMap$org$apache$tools$ant$types$CommandlineJava$ExecutableType:[I

    :try_start_0
    sget-object v1, Lorg/apache/tools/ant/types/CommandlineJava$ExecutableType;->CLASS:Lorg/apache/tools/ant/types/CommandlineJava$ExecutableType;

    invoke-virtual {v1}, Lorg/apache/tools/ant/types/CommandlineJava$ExecutableType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lorg/apache/tools/ant/types/CommandlineJava$1;->$SwitchMap$org$apache$tools$ant$types$CommandlineJava$ExecutableType:[I

    sget-object v1, Lorg/apache/tools/ant/types/CommandlineJava$ExecutableType;->MODULE:Lorg/apache/tools/ant/types/CommandlineJava$ExecutableType;

    invoke-virtual {v1}, Lorg/apache/tools/ant/types/CommandlineJava$ExecutableType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lorg/apache/tools/ant/types/CommandlineJava$1;->$SwitchMap$org$apache$tools$ant$types$CommandlineJava$ExecutableType:[I

    sget-object v1, Lorg/apache/tools/ant/types/CommandlineJava$ExecutableType;->JAR:Lorg/apache/tools/ant/types/CommandlineJava$ExecutableType;

    invoke-virtual {v1}, Lorg/apache/tools/ant/types/CommandlineJava$ExecutableType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
