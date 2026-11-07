.class public Lorg/apache/tools/ant/taskdefs/condition/Os;
.super Ljava/lang/Object;
.source "Os.java"

# interfaces
.implements Lorg/apache/tools/ant/taskdefs/condition/Condition;


# static fields
.field private static final DARWIN:Ljava/lang/String; = "darwin"

.field public static final FAMILY_9X:Ljava/lang/String; = "win9x"

.field public static final FAMILY_DOS:Ljava/lang/String; = "dos"

.field public static final FAMILY_MAC:Ljava/lang/String; = "mac"

.field public static final FAMILY_NETWARE:Ljava/lang/String; = "netware"

.field public static final FAMILY_NT:Ljava/lang/String; = "winnt"

.field public static final FAMILY_OS2:Ljava/lang/String; = "os/2"

.field public static final FAMILY_OS400:Ljava/lang/String; = "os/400"

.field public static final FAMILY_TANDEM:Ljava/lang/String; = "tandem"

.field public static final FAMILY_UNIX:Ljava/lang/String; = "unix"

.field public static final FAMILY_VMS:Ljava/lang/String; = "openvms"

.field public static final FAMILY_WINDOWS:Ljava/lang/String; = "windows"

.field public static final FAMILY_ZOS:Ljava/lang/String; = "z/os"

.field private static final OS_ARCH:Ljava/lang/String;

.field private static final OS_NAME:Ljava/lang/String;

.field private static final OS_VERSION:Ljava/lang/String;

.field private static final PATH_SEP:Ljava/lang/String;


# instance fields
.field private arch:Ljava/lang/String;

.field private family:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private version:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "os.name"

    .line 33
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/taskdefs/condition/Os;->OS_NAME:Ljava/lang/String;

    const-string v0, "os.arch"

    .line 35
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/taskdefs/condition/Os;->OS_ARCH:Ljava/lang/String;

    const-string v0, "os.version"

    .line 37
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/taskdefs/condition/Os;->OS_VERSION:Ljava/lang/String;

    .line 38
    sget-object v0, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    sput-object v0, Lorg/apache/tools/ant/taskdefs/condition/Os;->PATH_SEP:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/taskdefs/condition/Os;->setFamily(Ljava/lang/String;)V

    return-void
.end method

.method public static isArch(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 220
    invoke-static {v0, v0, p0, v0}, Lorg/apache/tools/ant/taskdefs/condition/Os;->isOs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isFamily(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 196
    invoke-static {p0, v0, v0, v0}, Lorg/apache/tools/ant/taskdefs/condition/Os;->isOs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isName(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 208
    invoke-static {v0, p0, v0, v0}, Lorg/apache/tools/ant/taskdefs/condition/Os;->isOs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isOs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    if-nez v0, :cond_1

    if-nez v1, :cond_1

    if-nez v2, :cond_1

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    goto/16 :goto_a

    :cond_1
    :goto_0
    if-eqz v0, :cond_12

    .line 262
    sget-object v6, Lorg/apache/tools/ant/taskdefs/condition/Os;->OS_NAME:Ljava/lang/String;

    const-string v7, "windows"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    const-string v9, "95"

    .line 267
    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    const-string v9, "98"

    .line 268
    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    const-string v9, "me"

    .line 269
    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    const-string v9, "ce"

    .line 272
    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    goto :goto_1

    :cond_2
    const/4 v9, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v9, 0x1

    :goto_2
    xor-int/lit8 v10, v9, 0x1

    goto :goto_3

    :cond_4
    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 275
    :goto_3
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->hashCode()I

    move-result v11

    const-string v12, "z/os"

    const-string v13, "os/2"

    const-string v14, "os/400"

    const-string v15, "netware"

    const-string v4, "mac"

    const-string v5, "openvms"

    const/16 v16, -0x1

    sparse-switch v11, :sswitch_data_0

    goto/16 :goto_4

    :sswitch_0
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    goto/16 :goto_4

    :cond_5
    const/16 v16, 0xb

    goto/16 :goto_4

    :sswitch_1
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    goto/16 :goto_4

    :cond_6
    const/16 v16, 0xa

    goto/16 :goto_4

    :sswitch_2
    const-string v7, "winnt"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    goto/16 :goto_4

    :cond_7
    const/16 v16, 0x9

    goto/16 :goto_4

    :sswitch_3
    const-string v7, "win9x"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    goto/16 :goto_4

    :cond_8
    const/16 v16, 0x8

    goto :goto_4

    :sswitch_4
    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    goto :goto_4

    :cond_9
    const/16 v16, 0x7

    goto :goto_4

    :sswitch_5
    const-string v7, "unix"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_a

    goto :goto_4

    :cond_a
    const/16 v16, 0x6

    goto :goto_4

    :sswitch_6
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b

    goto :goto_4

    :cond_b
    const/16 v16, 0x5

    goto :goto_4

    :sswitch_7
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_c

    goto :goto_4

    :cond_c
    const/16 v16, 0x4

    goto :goto_4

    :sswitch_8
    const-string v7, "dos"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_d

    goto :goto_4

    :cond_d
    const/16 v16, 0x3

    goto :goto_4

    :sswitch_9
    const-string v7, "tandem"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_e

    goto :goto_4

    :cond_e
    const/16 v16, 0x2

    goto :goto_4

    :sswitch_a
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_f

    goto :goto_4

    :cond_f
    const/16 v16, 0x1

    goto :goto_4

    :sswitch_b
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_10

    goto :goto_4

    :cond_10
    const/16 v16, 0x0

    :goto_4
    const-string v7, "darwin"

    packed-switch v16, :pswitch_data_0

    .line 318
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Don\'t know how to detect os family \""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 289
    :pswitch_0
    invoke-virtual {v6, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    goto/16 :goto_6

    :pswitch_1
    if-eqz v8, :cond_11

    if-eqz v10, :cond_11

    goto/16 :goto_5

    :cond_11
    const/4 v8, 0x0

    goto/16 :goto_6

    :pswitch_2
    if-eqz v8, :cond_11

    if-eqz v9, :cond_11

    goto/16 :goto_5

    .line 308
    :pswitch_3
    invoke-virtual {v6, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "os/390"

    .line 309
    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_5

    .line 302
    :pswitch_4
    sget-object v0, Lorg/apache/tools/ant/taskdefs/condition/Os;->PATH_SEP:Ljava/lang/String;

    const-string v8, ":"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 303
    invoke-static {v5}, Lorg/apache/tools/ant/taskdefs/condition/Os;->isFamily(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 304
    invoke-static {v4}, Lorg/apache/tools/ant/taskdefs/condition/Os;->isFamily(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    const-string v0, "x"

    invoke-virtual {v6, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 305
    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_5

    .line 286
    :pswitch_5
    invoke-virtual {v6, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    goto :goto_6

    .line 295
    :pswitch_6
    invoke-virtual {v6, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 296
    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_5

    .line 292
    :pswitch_7
    sget-object v0, Lorg/apache/tools/ant/taskdefs/condition/Os;->PATH_SEP:Ljava/lang/String;

    const-string v4, ";"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {v15}, Lorg/apache/tools/ant/taskdefs/condition/Os;->isFamily(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_5

    :pswitch_8
    const-string v0, "nonstop_kernel"

    .line 299
    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    goto :goto_6

    .line 312
    :pswitch_9
    invoke-virtual {v6, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    goto :goto_6

    .line 315
    :pswitch_a
    invoke-virtual {v6, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    goto :goto_6

    :cond_12
    :goto_5
    const/4 v8, 0x1

    :goto_6
    :pswitch_b
    if-eqz v1, :cond_13

    .line 324
    sget-object v0, Lorg/apache/tools/ant/taskdefs/condition/Os;->OS_NAME:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_7

    :cond_13
    const/4 v0, 0x1

    :goto_7
    if-eqz v2, :cond_14

    .line 327
    sget-object v1, Lorg/apache/tools/ant/taskdefs/condition/Os;->OS_ARCH:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_8

    :cond_14
    const/4 v1, 0x1

    :goto_8
    if-eqz v3, :cond_15

    .line 330
    sget-object v2, Lorg/apache/tools/ant/taskdefs/condition/Os;->OS_VERSION:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_9

    :cond_15
    const/4 v2, 0x1

    :goto_9
    if-eqz v8, :cond_0

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    :goto_a
    return v4

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4b4a79ee -> :sswitch_b
        -0x3c2b5d77 -> :sswitch_a
        -0x34836b35 -> :sswitch_9
        0x18548 -> :sswitch_8
        0x1a54f -> :sswitch_7
        0x342ac7 -> :sswitch_6
        0x36d988 -> :sswitch_5
        0x383399 -> :sswitch_4
        0x6be4c3b -> :sswitch_3
        0x6be52a2 -> :sswitch_2
        0x506fa283 -> :sswitch_1
        0x6de1259a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_b
        :pswitch_0
    .end packed-switch
.end method

.method public static isVersion(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 232
    invoke-static {v0, v0, v0, p0}, Lorg/apache/tools/ant/taskdefs/condition/Os;->isOs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public eval()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 185
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/Os;->family:Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/condition/Os;->name:Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/condition/Os;->arch:Ljava/lang/String;

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/condition/Os;->version:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lorg/apache/tools/ant/taskdefs/condition/Os;->isOs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setArch(Ljava/lang/String;)V
    .locals 1

    .line 164
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/condition/Os;->arch:Ljava/lang/String;

    return-void
.end method

.method public setFamily(Ljava/lang/String;)V
    .locals 1

    .line 146
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/condition/Os;->family:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1

    .line 155
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/condition/Os;->name:Ljava/lang/String;

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 1

    .line 173
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/condition/Os;->version:Ljava/lang/String;

    return-void
.end method
